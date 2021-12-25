@extends('layouts.admin')

@section('content')
	<div class="main-container">
		<div class="container">
			<div class="row">
				<div class="col-sm-3 page-sidebar">
					@include('partials.admin-nav');
				</div>
				<!--/.page-sidebar-->

				<div class="col-sm-9 page-content">
					@if(Session::has('flash_message'))
						<div class="alert alert-success">
							{{ Session::get('flash_message') }}
						</div>
					@endif

					<form action="{{ route('admin.updemailpost') }}" method="post" role="form">


						<div class="inner-box">
							<div class="welcome-msg">
								<h3 class="page-sub-header2 clearfix no-padding">Email </h3>
								<span class="page-sub-header-sub small"></span>
							</div>

							<div class="form-horizontal">
								<div class="form-group">
									<label class="col-sm-3 control-label">Name</label>

									<div class="col-sm-9">
										<input type="text" placeholder="Name" class="form-control" name="title" value="{{ $email->title }}">
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Name</label>

									<div class="col-sm-9">
										<input type="text" placeholder="Name" class="form-control" name="slug" value="{{ $email->slug }}">
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Description</label>

									<div class="col-sm-9">
										<textarea class="form-control" name="description">{{ $email->description }}</textarea>
									</div>
								</div>


								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9"></div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<input type="hidden" name="id" value="{{ $email->id }}">
										<button class="btn btn-default" type="submit">Update</button>
										{{ csrf_field() }}
									</div>
								</div>
							</div>
						</div>
					</form>


				</div>
				<!--/.page-content-->
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</div>
@endsection


@section('js')

@endsection