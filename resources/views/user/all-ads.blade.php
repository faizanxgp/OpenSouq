@extends('layouts.main')

@section('content')
	<div class="main-container">
		<div class="container">
			<div class="row">
				<div class="col-sm-3 page-sidebar">
					@include('partials.user-nav');
				</div>
				<!--/.page-sidebar-->

				<div class="col-sm-9 page-content">
					<div class="inner-box">
						<h2 class="title-2"><i class="icon-docs"></i> {{ $pageTitle }} </h2>
						@if(Session::has('flash_message'))
							<div class="alert alert-success">
								{{ Session::get('flash_message') }}
							</div>
						@endif
						<div class="table-responsive">
							<div class="table-action">
								<label for="checkAll"> <input type="checkbox" id="checkAll"> Select: All | <a class="btn btn-xs btn-danger" href="#">Delete <i
												class="glyphicon glyphicon-remove "></i></a> </label>

								<div class="table-search pull-right col-xs-7">
									<div class="form-group">
										<label class="col-xs-5 control-label text-right">Search <br> <a href="#clear" class="clear-filter" title="clear filter">[clear]</a> </label>

										<div class="col-xs-7 searchpan">
											<input type="text" id="filter" class="form-control">
										</div>
									</div>
								</div>
							</div>
							<table data-filter-text-only="true" data-filter="#filter"
									class="table table-striped table-bordered add-manage-table table demo footable-loaded footable"
									id="addManageTable">
								<thead>
								<tr>
									<th data-sort-initial="true" data-type="numeric"></th>
									<th> Photo</th>
									<th data-sort-ignore="true"> Adds Details</th>
									<th data-type="numeric"> Price</th>
									<th> Option</th>
								</tr>
								</thead>
								<tbody>
								@foreach($listings as $ad)
									<tr>
										<td class="add-img-selector" style="width:2%">
											<div class="checkbox">
												<label> <input type="checkbox"> </label>
											</div>
										</td>
										<td class="add-img-td" style="width:14%">
											<?php if (isset($ad->photo->first()->photo)) {
												$p = 'uploads/ads/' . $ad->photo->first()->photo;
											} else {
												$p = 'src/images/product-thumb-default.jpg';
											} ?>
											<a href="{{ route('ad', [$ad->id, $ad->title]) }}"><img alt="img" src="{{ URL::to($p) }}" class="thumbnail  img-responsive"> </a>
										</td>
										<td class="ads-details-td" style="width:58%">
											<div>
												<p><strong> <a title="Brend New Nexus 4" href="{{ route('ad', [$ad->id, $ad->title]) }}">{{ $ad->title }}</a> </strong>
												</p>

												<p><strong> Posted On </strong>:
													{{ $ad->created_at->format('d-M-Y h:m a') }} </p>

												<p><strong>Visitors </strong>: {{ $ad->views }} <strong>Located In:</strong> {{ $ad->city->city }}
												</p>
											</div>
										</td>
										<td class="price-td" style="width:16%">
											<div><strong> {{ $ad->price }}</strong></div>
										</td>
										<td class="action-td" style="width:10%">
											<div>
												<p><a class="btn btn-primary btn-xs" href="{{ route('edit-ad', $ad->id) }}"> <i class="fa fa-edit"></i> Edit </a>
												</p>
												@if($ad->active == 0)
												<p><a class="btn btn-info btn-xs" href="{{ route('unarchive', $ad->id) }}" onclick="return confirm('Are you sure?');"> <i class="fa fa-mail-forward"></i> Activate </a></p>
												@else
													<p><a class="btn btn-info btn-xs" href="{{ route('archive', $ad->id) }}" onclick="return confirm('Are you sure?');"> <i class="fa fa-mail-forward"></i> De-Activate </a></p>
												@endif

												<p><a class="btn btn-danger btn-xs" href="{{ route('delete-ad', $ad->id) }}" onclick="return confirm('Are you sure?');"> <i class=" fa fa-trash"></i> Delete </a></p>
											</div>
										</td>
									</tr>
								@endforeach

								</tbody>
							</table>
						</div>
						<!--/.row-box End-->

					</div>
				</div>
				<!--/.page-content-->
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</div>
@endsection