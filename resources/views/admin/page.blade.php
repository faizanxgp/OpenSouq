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

					<form action="{{ route('admin.updatepage') }}" method="post" role="form">


						<div class="inner-box">
							<div class="welcome-msg">
								<h3 class="page-sub-header2 clearfix no-padding">Page </h3>
								<span class="page-sub-header-sub small"></span>
							</div>

							<div class="form-horizontal">
								<div class="form-group">
									<label class="col-sm-3 control-label">Page Title</label>

									<div class="col-sm-9">
										<input type="text" placeholder="" class="form-control" name="title" value="{{ $page->title }}">
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Slug</label>

									<div class="col-sm-9">
										<input type="text" placeholder="" class="form-control" name="slug" value="{{ $page->slug }}">
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Meta Descriptions</label>

									<div class="col-sm-9">
										<input type="text" placeholder="" class="form-control" name="meta_description" value="{{ $page->meta_description }}">
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Page Body</label>

									<div class="col-sm-9">
										<textarea class="form-control" name="description" rows="10">{{ $page->description }}</textarea>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Active</label>

									<div class="col-sm-9">

										{{ Form::checkbox('active', '1', $page->active) }}
									</div>
								</div>


								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9"></div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<input type="hidden" name="id" value="{{ $page->id or 0 }}">
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