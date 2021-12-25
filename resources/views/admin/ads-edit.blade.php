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

					<form role="form" class="form-horizontal" method="post" action="{{ route('admin-ad-update') }}">
						<div class="inner-box">

							<div class="welcome-msg">
								<h3 class="page-sub-header2 clearfix no-padding">Update Ad <form role="form" class="form-horizontal" method="post" action="{{ route('admin-ad-approve') }}">
										<input type="hidden" name="id" value="{{ $listing->id }}"> <input class="btn btn-success btn-lg pull-right" id="button1id" type="submit" name="submit" value="Approve Ad"/>{{ csrf_field() }}
									</form></h3>
								<span class="page-sub-header-sub small"></span>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Category</label>

								<div class="col-md-8">
									{{ Form::select('category', $category, $listing->subcategory_id, ['class' => 'form-control category', 'placeholder' => 'Select...']) }}

								</div>
							</div>

							<!-- Multiple Radios (inline) -->
							<div class="form-group">
								<label class="col-md-3 control-label">Add Type</label>

								<div class="col-md-8">
									<label for="radios-0" class="radio-inline">
										{{ Form::radio('ad_type', '1', ($listing->ad_type == 1 ? true : false)) }}
										Private </label> <label for="radios-1" class="radio-inline">
										{{ Form::radio('ad_type', '2', ($listing->ad_type == 2 ? true : false)) }}
										Business </label>
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label for="Adtitle" class="col-md-3 control-label">Ad title</label>

								<div class="col-md-8">
									<input type="text" required="" class="form-control input-md" placeholder="Ad title"
											name="ad_title" id="Adtitle" value="{{ $listing->title }}"> <span class="help-block">A great title needs at least 60 characters. </span>
								</div>
							</div>

							<!-- Textarea -->
							<div class="form-group">
								<label for="textarea" class="col-md-3 control-label">Describe ad </label>

								<div class="col-md-8">
                <textarea name="ad_description" id="textarea"
						class="form-control">{{ $listing->description }}</textarea>
								</div>
							</div>

							<!-- Prepended text-->
							<div class="form-group">
								<label for="Price" class="col-md-3 control-label">Price</label>

								<div class="col-md-4">
									<div class="input-group"><span class="input-group-addon">$</span> <input type="text" required="" placeholder="Amount" class="form-control"
												name="price" value="{{ $listing->price }}" id="Price">
									</div>
								</div>
								<div class="col-md-4">
									<div class="checkbox">
										<label>

											{{ Form::checkbox('negotiable', '1', $listing->negotiable) }}
											Negotiable </label>
									</div>
								</div>
							</div>

							<div class="form-group" id="data1" style="display: none;">
								<label for="" class="col-md-3 control-label data1"></label>

								<div class="col-md-8">
									<input type="text" class="form-control input-md" placeholder=""
											name="data1" value="{{ $listing->data1 }} >
                                    <span class=" help-block"></span>
								</div>
							</div>
							<div class="form-group" id="data2" style="display: none;">
								<label for="" class="col-md-3 control-label data2"></label>

								<div class="col-md-8">
									<input type="text" class="form-control input-md" placeholder=""
											name="data2" value="{{ $listing->data2 }}"> <span class="help-block"></span>
								</div>
							</div>
							<div class="form-group" id="data3" style="display: none;">
								<label for="" control-label data3"></label>

								<div class="col-md-8">
									<input type="text" class="form-control input-md" placeholder=""
											name="data3" value="{{ $listing->data3 }}"> <span class="help-block"></span>
								</div>
							</div>
							<div class="form-group" id="data4" style="display: none;">
								<label for="" class="col-md-3 control-label data4"></label>

								<div class="col-md-8">
									<input type="text" class="form-control input-md" placeholder=""
											name="data4" value="{{ $listing->data4 }}"> <span class="help-block"></span>
								</div>
							</div>
							<div class="form-group" id="data5" style="display: none;">
								<label for="" class="col-md-3 control-label data5"></label>

								<div class="col-md-8">
									<input type="text" class="form-control input-md" placeholder=""
											name="data5" value="{{ $listing->data5 }}"> <span class="help-block"></span>
								</div>
							</div>
							<div class="form-group" id="data6" style="display: none;">
								<label for="" class="col-md-3 control-label data6"></label>

								<div class="col-md-8">
									<input type="text" class="form-control input-md" placeholder=""
											name="data6" value="{{ $listing->data6 }}"> <span class="help-block"></span>
								</div>
							</div>
							<div class="form-group" id="data7" style="display: none;">
								<label for="" class="col-md-3 control-label data7"></label>

								<div class="col-md-8">
									<input type="text" class="form-control input-md" placeholder=""
											name="data7" value="{{ $listing->data7 }}"> <span class="help-block"></span>
								</div>
							</div>
							<div class="form-group" id="data8" style="display: none;">
								<label for="" class="col-md-3 control-label data8"></label>

								<div class="col-md-8">
									<input type="text" class="form-control input-md" placeholder=""
											name="data8" value="{{ $listing->data8 }}"> <span class="help-block"></span>
								</div>
							</div>

							<!-- photo -->
							<div class="form-group">
								<label for="textarea" class="col-md-3 control-label"> Picture </label>

								<div class="col-md-8">
									<div class="mb10">
										<span class="file-input file-input-new"><input class="form-control" name="photos[]" type="file" multiple="1"></span>

									</div>
									<p class="help-block">Add up to 5 photos. Use a real image of your product, not catalogs.</p>
								</div>


							</div>
							<div class="form-group">
								<label for="" class="col-md-3 control-label">Video URL</label>

								<div class="col-md-8">
									<input type="text" class="form-control input-md" placeholder="" name="youtube" id="youtube" value="{{ $listing->youtube }}"> <span class="help-block">URL of Youtube </span>
								</div>
							</div>
							<div class="form-group">
								<label for="textarea" class="col-md-3 control-label"> Attachement </label>

								<div class="col-md-8">
									<div class="mb10">
										<span class="file-input file-input-new"><input class="form-control" name="attachement" type="file"></span>

									</div>
									<p>{{ $listing->attachement }}</p>
									<p class="help-block">Add an attachement (PDF, TXT)</p>
								</div>


							</div>
							<div class="content-subheading"><i class="icon-user fa"></i> <strong>Seller information</strong></div>

							<!-- Text input-->
							<div class="form-group">
								<label for="textinput-name" class="col-md-3 control-label">Name</label>

								<div class="col-md-8">
									<input type="text" required="" class="form-control input-md"
											placeholder="Seller Name" name="posted_by" id="textinput-name"
											value="{{ $listing->posted_by }}">
								</div>
							</div>

							<div class="form-group">
								<label for="textinput-name" class="col-md-3 control-label">Phone Number</label>

								<div class="col-md-8">
									<input type="text" required="" class="form-control input-md" placeholder="00962xxxxxxxx" name="phone" id="textinput-phone" value="{{ $listing->phone }}">
								</div>
							</div>


							<!-- Select Basic -->
							<div class="form-group">
								<label for="seller-area" class="col-md-3 control-label">City</label>

								<div class="col-md-8">
									{{ Form::select('seller_area', $city, $listing->city_id, ['class' => 'form-control', 'placeholder' => 'Select...']) }}

								</div>
							</div>


							<div class="content-subheading"><i class="icon-user fa"></i> <strong>Approval</strong></div>


							<!-- Select Basic -->
							<div class="form-group">
								<label for="seller-area" class="col-md-3 control-label">Active</label>

								<div class="col-md-8">
									{{ Form::checkbox('active', '1', $listing->active) }}


								</div>
							</div>


							<!-- Select Basic -->
							<div class="form-group">
								<label for="seller-area" class="col-md-3 control-label">Status</label>

								<div class="col-md-8">
									{{ Form::select('status', $ad_status, $listing->status, ['class' => 'form-control', 'placeholder' => 'Select...']) }}

								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 control-label">Images (select to remove)</label>
								@foreach($photos as $photo)
									<input type="checkbox" name="img[]" value="{{ $photo->id }}"/> <img
											class="thumb"
											src="{{ URL::to('uploads/ads/' . $photo->photo) }}"/>

								@endforeach
							</div>

							<!-- Button  -->
							<div class="form-group">
								<label class="col-md-3 control-label"></label>

								<div class="col-md-8">
									<input type="hidden" name="id" value="{{ $listing->id }}"> <input class="btn btn-success btn-lg" id="button1id" type="submit" name="submit"
											value="Update Ad"/>
									{{ csrf_field() }}
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

	</div>
@endsection


@section('js')
	<script type="text/javascript">
		jQuery(document).ready(function () {

			arr = {!! $subcat or '' !!};

			jQuery('#data1').hide();
			jQuery('#data2').hide();
			jQuery('#data3').hide();
			jQuery('#data4').hide();
			jQuery('#data5').hide();
			jQuery('#data6').hide();
			jQuery('#data7').hide();
			jQuery('#data8').hide();

			var sel = {{ $listing->subcategory_id }};
			updateit(sel);


			$('.category').on('change', function () {
				jQuery('#data1').hide();
				jQuery('#data2').hide();
				jQuery('#data3').hide();
				jQuery('#data4').hide();
				jQuery('#data5').hide();
				jQuery('#data6').hide();
				jQuery('#data7').hide();
				jQuery('#data8').hide();

				var sel = this.value;
				updateit(sel);
			});

			function updateit(sel) {
				for (var i = 0, json_len = arr.length; i < json_len; i += 1) {
					var j = arr[i];
					if (j.id == sel) {
						if (j.data1 != "") {
							jQuery('#data1').show();
							jQuery('label.data1').text(j.data1);
						}
						if (j.data2 != "") {
							jQuery('#data2').show();
							jQuery('label.data2').text(j.data2);
						}
						if (j.data3 != "") {
							jQuery('#data3').show();
							jQuery('label.data3').text(j.data3);
						}
						if (j.data4 != "") {
							jQuery('#data4').show();
							jQuery('label.data4').text(j.data4);
						}
						if (j.data5 != "") {
							jQuery('#data5').show();
							jQuery('label.data5').text(j.data5);
						}
						if (j.data6 != "") {
							jQuery('#data6').show();
							jQuery('label.data6').text(j.data6);
						}
						if (j.data7 != "") {
							jQuery('#data7').show();
							jQuery('label.data7').text(j.data7);
						}
						if (j.data8 != "") {
							jQuery('#data8').show();
							jQuery('label.data8').text(j.data8);
						}
						break;
					}
				}

			}

		});
	</script>
@endsection