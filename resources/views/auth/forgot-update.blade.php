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
								{{--<span class="logo-icon"><i class="icon icon-search-1 ln-shadow-logo shape-0"></i> </span> BOOT<span>CLASSIFIED </span>--}}
							</h2>
						</div>
						@if(Session::has('flash_message'))
							<div class="alert alert-success">
								{{ Session::get('flash_message') }}
							</div>
						@endif
						<div class="panel-body">
							<form action="{{ route('password-reset') }}" method="post">
								<input type="hidden" name="token" value="{{ $token }}">
								<div class="form-group has-feedback">
									<input type="email" name="email" class="form-control" placeholder="Email" value="{{ $email }}">
									<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<input type="password" name="password" class="form-control" placeholder="Password">
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<input type="password" name="password_confirmation" class="form-control" placeholder="Confirm Password">
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="row">
									<!-- /.col -->
									<div class="col-xs-12 pull-right">
										<button class="btn btn-primary btn-lg btn-block" type="submit">Update Password </button>
										{{ csrf_field() }}
									</div>
									<!-- /.col -->
								</div>
							</form>
						</div>
						<div class="panel-footer">
							<p class="text-center "><a href="{{ route('signin') }}"> Back to Login </a></p>

							<div style=" clear:both"></div>
						</div>
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