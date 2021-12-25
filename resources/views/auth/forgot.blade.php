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
							<form role="form" method="post" action="{{ route('forgot') }}">
								<div class="form-group">
									<label class="control-label" for="sender-email">Email:</label>

									<div class="input-icon"><i class="icon-user fa"></i>
										<input type="text" class="form-control email" placeholder="Email" id="sender-email" name="email">
									</div>
								</div>
								<div class="form-group">
									<button class="btn btn-primary btn-lg btn-block" type="submit">Send me my password </button>{{ csrf_field() }}
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