@extends('backend.admin.master')
@section('css')
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets/vendors/css/vendors.min.css') }}">
    <link rel="stylesheet" type="text/css"
        href="{{ asset('app-assets/vendors/css/tables/datatable/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" type="text/css"
        href="{{ asset('app-assets/vendors/css/tables/datatable/responsive.bootstrap4.min.css') }}">
    <link rel="stylesheet" type="text/css"
        href="{{ asset('app-assets/vendors/css/tables/datatable/buttons.bootstrap4.min.css') }}">
    <!-- END: Vendor CSS-->
    <style>
        .text-end {
            text-align: end;
        }
    </style>
@endsection
@section('content')
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-12 mb-2 mt-1">
                    <div class="breadcrumbs-top">
                        <h5 class="content-header-title float-left pr-1 mb-0">Device</h5>
                        <div class="breadcrumb-wrapper d-none d-sm-block">
                            <ol class="breadcrumb p-0 mb-0 pl-1">
                                <li class="breadcrumb-item"><a href="/"><i class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item active">Position Device List
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">

                <section class="users-list-wrapper">
                    <div>
                        <form action="" method="get">
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="date"> Date:</label>
                                    <input type="date" class="form-control" id="date" name="date"
                                        value="{{ request()->date }}">
                                </div>
                                <div class="col-md-4">
                                    <label for="device_id">Device Name:</label>
                                    <select name="id" id="id" class="form-control">
                                        @foreach ($devices as $device)
                                            <option value="{{ $device->id }}"
                                                {{ request()->id == $device->id ? 'selected' : '' }}>{{ $device->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="text-end my-2">
                                <button class="btn btn-primary" type="submit">Submit</button>
                            </div>
                        </form>
                    </div>

                    <div class="users-list-table">
                        <div class="card">
                            <div class="card-body">
                                <!-- datatable start -->
                                <button id="exportBtn" class="btn btn-primary">Export CSV</button>
                                <div class="table-responsive">
                                    <table id="dataTable" class="table ">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Protocol</th>
                                                <th>Device</th>
                                                <th>Server Time</th>
                                                <th>Device Time</th>
                                                <th>Fix Time</th>
                                                <th>Valid</th>
                                                <th>Latitude</th>
                                                <th>Longitude</th>
                                                <th>Altitude</th>
                                                <th>Speed</th>
                                                <th>Course</th>
                                                <th>Address</th>
                                                <th>Attributes</th>
                                                <th>Accuracy</th>
                                                <th>Network</th>
                                                <th>Geofence IDs</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($positions as $position)
                                                <tr>
                                                    <td>{{ $position->id }}</td>
                                                    <td>{{ $position->protocol }}</td>
                                                    <td>{{ $position->traccar ? $position->traccar->name : '' }}</td>
                                                    <td>{{ $position->servertime }}</td>
                                                    <td>{{ $position->devicetime }}</td>
                                                    <td>{{ $position->fixtime }}</td>
                                                    <td>{{ $position->valid }}</td>
                                                    <td>{{ $position->latitude }}</td>
                                                    <td>{{ $position->longitude }}</td>
                                                    <td>{{ $position->altitude }}</td>
                                                    <td>{{ $position->speed }}</td>
                                                    <td>{{ $position->course }}</td>
                                                    <td>{{ $position->address }}</td>
                                                    <td>{{ $position->attributes }}</td>
                                                    <td>{{ $position->accuracy }}</td>
                                                    <td>{{ $position->network }}</td>
                                                    <td>{{ $position->geofenceids }}</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                 <div class="my-5">
                                    {{ $positions->links() }}
                                 </div>

                                </div>

                                <!-- Display pagination links -->


                                <!-- datatable ends -->
                            </div>
                        </div>
                    </div>
                </section>
                <!-- users list ends -->
            </div>
        </div>
    </div>
@endsection
@section('js')
    <!-- BEGIN: Page Vendor JS-->
    <script src="{{ asset('app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('app-assets/vendors/js/tables/datatable/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('app-assets/vendors/js/tables/datatable/buttons.print.min.js') }}"></script>
    <script src="{{ asset('app-assets/vendors/js/tables/datatable/buttons.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('app-assets/vendors/js/tables/datatable/pdfmake.min.js') }}"></script>
    <script src="{{ asset('app-assets/vendors/js/tables/datatable/vfs_fonts.js') }}"></script>
    <script src="{{ asset('app-assets/js/scripts/datatables/datatable.js') }}"></script>
    <script>
        $(document).ready(function() {
            // Export button click event
            $('#exportBtn').click(function() {
                var titles = [];
                var data = [];

                // Get column titles
                $('.table thead th').each(function() {
                    titles.push($(this).text());
                });

                // Get table data
                $('.table tbody tr').each(function() {
                    var rowData = [];
                    $(this).find('td').each(function() {
                        rowData.push($(this).text());
                    });
                    data.push(rowData);
                });

                // Convert data to CSV format
                var csvContent = "data:text/csv;charset=utf-8,";
                csvContent += titles.join(',') + '\r\n';
                data.forEach(function(row) {
                    csvContent += row.join(',') + '\r\n';
                });

                // Create download link and trigger download
                var encodedUri = encodeURI(csvContent);
                var downloadLink = document.createElement("a");
                downloadLink.setAttribute("href", encodedUri);
                downloadLink.setAttribute("download", "Position.csv");
                document.body.appendChild(downloadLink);
                downloadLink.click();
                document.body.removeChild(downloadLink);
            });
        });
    </script>
@endsection
