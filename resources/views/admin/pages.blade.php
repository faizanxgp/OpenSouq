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
					<div class="inner-box">
						<div class="row">
							<div class="col-md-5 col-xs-4 col-xxs-12">
								<h3 class="no-padding text-center-480 useradmin"><a href=""><img alt="user" src="{{ URL::to('src/images/user.jpg') }}" class="userImg"> {{ $user->name }} </a></h3>
							</div>
							<div class="col-md-7 col-xs-8 col-xxs-12">
								<div class="header-data text-center-xs">

									<!-- Traffic data -->
									<div class="hdata">
										<div class="mcol-left">
											<!-- Icon with red background -->
											<i class="fa fa-eye ln-shadow"></i></div>
										<div class="mcol-right">
											<!-- Number of visitors -->
											<p><a href="#">7000</a> <em>visits</em></p>
										</div>
										<div class="clearfix"></div>
									</div>

									<!-- revenue data -->
									<div class="hdata">
										<div class="mcol-left">
											<!-- Icon with green background -->
											<i class="icon-th-thumb ln-shadow"></i></div>
										<div class="mcol-right">
											<!-- Number of visitors -->
											<p><a href="#">12</a><em>Ads</em></p>
										</div>
										<div class="clearfix"></div>
									</div>

									<!-- revenue data -->
									<div class="hdata">
										<div class="mcol-left">
											<!-- Icon with blue background -->
											<i class="fa fa-user ln-shadow"></i></div>
										<div class="mcol-right">
											<!-- Number of visitors -->
											<p><a href="#">18</a> <em>Favorites </em></p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="inner-box">
						<div class="welcome-msg">
							<h3 class="page-sub-header2 clearfix no-padding">Pages </h3>
							<h3 class="page-sub-header2 clearfix no-padding">Pages <div class="pull-right"><a href="{{ route('admin.page', 0) }}" class="btn btn-primary">Add Page</a></div></h3>
							<span class="page-sub-header-sub small"></span>
						</div>
						@if(Session::has('flash_message'))
							<div class="alert alert-success">
								{{ Session::get('flash_message') }}
							</div>
						@endif
						<div>
							<table class="table table-hover">
								<tbody>
								<tr>
									<th>Slug</th>
									<th>Title</th>
									<th>Action</th>
								</tr>

								@foreach ($pages as $item)
									<tr>
										<td>
											{{ $item->slug }}</a>
										</td>
										<td>{{ $item->title }}</td>

										<td>
											<!-- //TODO -->
											<p><a class="btn btn-info btn-xs" href="{{ route('admin.page', $item->id) }}"> <i class="fa fa-recycle"></i> Edit </a> <a class="btn btn-danger btn-xs" href="{{ route('admin.page', $item->id) }}"> <i class=" fa fa-trash"></i> Delete </a></p>


										</td>

									</tr>
								@endforeach


								</tbody>
							</table>

						</div>


					</div>
					<!--/.page-content-->
				</div>
				<!--/.row-->
			</div>
			<!--/.container-->
		</div>
@endsection
