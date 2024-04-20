@extends('auth.master')

{{-- page title --}}
@section('title','Register')
{{-- page scripts --}}
@section('page-styles')
<link rel="stylesheet" type="text/css" href="{{asset('css/pages/authentication.css')}}">

@endsection

@section('content')

<!-- register section starts -->
<section class="row flexbox-container">
  <div class="col-xl-8 col-10">
    <div class="card bg-authentication mb-0">
      <div class="row m-0">
        <!-- register section left -->
        <div class="col-md-6 col-12 px-0">
          <div class="card disable-rounded-right mb-0 p-2 h-100 d-flex justify-content-center">
            <div class="card-header pb-1">
              <div class="card-title">
                <h4 class="text-center mb-2">Sign Up</h4>
              </div>
            </div>
            <div class="text-center">
              <p> <small> Please enter your details to sign up and be part of our great community</small>
              </p>
            </div>
            <div class="card-body">
              <form method="POST" action="{{ route('register') }}">
                @csrf
                <div class="form-group mb-50">
                  <label class="text-bold-600" for="name">Name</label>
                  <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}"  autocomplete="name" autofocus placeholder="Full Name">
                  @error('name')
                    <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                  @enderror
                </div>
                  <div class="form-group mb-50">
                  <label class="text-bold-600" for="email">Email address</label>
                  <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}"  autocomplete="email" placeholder="Email address">
                  @error('email')
                    <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                  @enderror
                </div>
                <div class="form-group position-relative">
                  <label class="text-bold-600" for="password">Password</label>
                  <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password"  autocomplete="new-password" placeholder="Password">
                  @error('password')
                  <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                  <i class="bx bx-show-alt position-absolute" style="top: 35px;right: 10px;" onclick="showpass()"></i>
                </div>
                <div class="form-group position-relative">
                  <label class="text-bold-600" for="password-confirm">Confirm Password</label>
                  <input id="password-confirm" type="password" class="form-control" name="password_confirmation"  autocomplete="new-password" placeholder="Confirm Password">
                  <i class="bx bx-show-alt position-absolute" style="top: 35px;right: 10px;" onclick="showpassconf()"></i>
                </div>
                <div>
                  <input type="checkbox" name="terms" id="terms" required>  I Agree to  <a href="#" data-toggle="modal" data-target="#condtion">Terms & Coditions</a>
                </div>
                <button type="submit" class="btn btn-primary glow position-relative w-100">Create New Account<i
                  id="icon-arrow" class="bx bx-right-arrow-alt"></i></button>
              </form>
              <hr>
              <div class="text-center"><small class="mr-25">Already have an account?</small>
                <a href="{{asset('login')}}" >Sign in</a>
              </div>
             
            </div>
          </div>
        </div>
        <!-- image section right -->
        <div class="col-md-6 d-md-block d-none text-center align-self-center p-3">
            <img class="img-fluid" src="{{asset('app-assets/images/pages/register.png')}}" alt="branding logo">
        </div>
      </div>
    </div>
  </div>
</section>
<!-- register section endss -->
  <div class="modal fade" id="condtion" tabindex="-1" role="dialog" aria-labelledby="condtionTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title" id="condtionTitle">Term And Conditions</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        are you agree with our all conditions
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
@endsection
@section('js')
<script src="{{ asset('app-assets/vendors/js/jquery.min.js') }}"></script>
<script src="{{ asset('app-assets/vendors/css/select-country/countrypicker.js') }}"></script>
<script>
  function showpass(){
      var temp = document.getElementById("password");
          if (temp.type === "password") {
              temp.type = "text";
          }
          else {
              temp.type = "password";
          }
  }
  function showpassconf(){
      var temp1 = document.getElementById("password-confirm");
          if (temp1.type === "password") {
              temp1.type = "text";

          }
          else {
              temp1.type = "password";
          }
  }
</script>

@endsection
