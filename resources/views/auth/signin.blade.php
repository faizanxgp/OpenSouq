@extends('layouts.main')

@section('content')
  <div class="main-container">
    <div class="container">
      <div class="row">
        <div class="col-sm-5 login-box">
          <div class="panel panel-default">
            <div class="panel-intro text-center">
              <h2 class="logo-title">
                <!-- Original Logo will be placed here  -->
                {{--<span class="logo-icon"><i class="icon icon-search-1 ln-shadow-logo shape-0"></i> </span> open<span>SOUQ </span>--}}
              </h2>
            </div>
            @if(Session::has('flash_message'))
              <div class="alert alert-success">
                {{ Session::get('flash_message') }}
              </div>
            @endif
            <form role="form" method="post" action="{{ route('signin') }}">
              <div class="panel-body">
                
                <div class="form-group">
                  <label class="control-label" for="sender-email">Email:</label>
                  
                  <div class="input-icon"><i class="icon-user fa"></i>
                    <input type="email" name="email" class="form-control email" placeholder="Email" id="sender-email" value="{{ old('email') }}" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label" for="user-pass">Password:</label>
                  
                  <div class="input-icon"><i class="icon-lock fa"></i>
                    <input type="password" name="password" id="user-pass" placeholder="Password" class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <input type="submit" class="btn btn-primary btn-block" name="submit" value="Proceed"/>
                  {{ csrf_field() }}
                </div>
              
              </div>
              <div class="panel-footer">
                
                <div class="checkbox pull-left">
                  <label> <input type="checkbox" id="remember" name="remember" value="1"> Keep me logged
                    in</label>
                </div>
                
                
                <p class="text-center pull-right"><a href="{{ route('forgot') }}"> Lost your password? </a>
                </p>
				  <div style=" clear:both"></div>

				  <a class="btn btn-block btn-social btn-facebook" href="{{ url('/auth/facebook') }}">
					  <span class="fa fa-facebook"></span> Sign in with Facebook
				  </a>

				  <a class="btn btn-block btn-social btn-google" href="{{ url('/auth/google') }}">
					  <span class="fa fa-google"></span> Sign in with Google
				  </a>

				  <a class="btn btn-block btn-social btn-twitter" href="{{ url('/auth/twitter') }}">
					  <span class="fa fa-twitter"></span> Sign in with Twitter
				  </a>

				  <div style=" clear:both"></div>
              </div>
            </form>
          </div>
          <div class="login-box-btm text-center">
            <p> Don't have an account? <br>
              <a href="{{ route('signup') }}"><strong>Sign Up !</strong> </a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection