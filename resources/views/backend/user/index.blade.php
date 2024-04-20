@extends('backend.user.master')
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
                    <!-- Greetings Content Starts -->
                    <div class="col-xl-4 col-md-6 col-12 dashboard-greetings">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="greeting-text">Congratulations {{auth()->user()->name}}!</h3>
                                <p class="mb-0">Best user of the month</p>
                            </div>
                            <div class="card-body pt-0">
                                <div class="d-flex justify-content-between align-items-end">
                                  
                                    <div class="dashboard-content-right">
                                        <img src="{{ asset('app-assets/images/icon/cup.png') }}" height="220" width="220" class="img-fluid" alt="Dashboard Ecommerce" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
            <!-- Dashboard Ecommerce ends -->

        </div>
    </div>
</div>
@endsection