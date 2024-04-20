@extends('backend.admin.master')
@section('content')
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body">
            <!-- Dashboard Ecommerce Starts -->
            <section id="dashboard-ecommerce">
                <div class="row">
                    <!-- Multi Radial Chart Starts -->
                  
                    <div class="col-xl-12 col-12 dashboard-users">
                        <div class="row  ">
                            <!-- Statistics Cards Starts -->
                            <div class="col-12">
                                <div class="row">
                                    {{-- <div class="col-sm-6 col-12 dashboard-users-danger">
                                        <a href="{{ route('user.index') }}">
                                        <div class="card text-center">
                                            <div class="card-body py-1">
                                                <div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto mb-50">
                                                    <i class="bx bx-user font-medium-5"></i>
                                                </div>
                                                <div class="text-muted line-ellipsis">Accounts</div>
                                                <h3 class="mb-0">{{\App\Models\Contact::count()}}</h3>
                                            </div>
                                        </div>
                                    </a>
                                    </div> --}}
                                </div>
                            </div>
                            <!-- Revenue Growth Chart Starts -->
                        </div>
                    </div>
                </div>
              
            </section>
            <!-- Dashboard Ecommerce ends -->

        </div>
    </div>
</div>
@endsection