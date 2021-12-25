@extends('layouts.main')

@section('content')
	<div class="main-container">
		<div class="container">
			<div class="row">
				<div class="col-md-9 page-content">
					<div class="inner-box category-content">
						<h2 class="title-2 uppercase"><strong> <i class="icon-docs"></i> Post a Free Classified Ad</strong></h2>
						<div class="container">
							@if(Session::has('flash_message'))
								<div class="alert alert-success">
									{{ Session::get('flash_message') }}
								</div>
							@endif
						</div>

						<div class="row">
							<div class="col-sm-12">
								{{--<form class="form-horizontal" method="post" action="{{ route('') }}">--}}
								{{ Form::open(['method' => 'post', 'route' => 'update-ad', 'files' => true, 'class' => 'form-horizontal']) }}

								<fieldset>
									<!-- Select Basic -->
									<div class="form-group">
										<label class="col-md-3 control-label">Category </label>

										<div class="col-md-8">
											{{ $listing->sub_category_id }}
											<div class="combo-outer disable-main" id="combo-box-outer"></div>

											{{--{{ Form::select('category', $category, $listing->subcategory_id, ['class' => 'form-control category', 'placeholder' => 'Select...']) }}--}}

											{{-- <select class="form-control" id="category-group" name="category">
											  <option selected="selected" value="0"> Select a category...</option>
											  <option disabled="disabled" style="background-color:#E9E9E9;font-weight:bold;" value="Vehicles"> - Vehicles -
											  </option>
											  <option value="Cars"> Cars</option>
											  <option value="Commercial vehicles"> Commercial vehicles</option>
											  <option value="Motorcycles"> Motorcycles</option>
											  <option value="Motorcycle Equipment"> Car &amp; Motorcycle
												Equipment
											  </option>
											  <option value="Boats"> Boats</option>
											  <option value="Vehicles"> Other Vehicles</option>
											  <option disabled="disabled" style="background-color:#E9E9E9;font-weight:bold;" value="House"> - House and Children -
											  </option>
											  <option value="Appliances"> Appliances</option>
											  <option value="Inside"> Inside</option>
											  <option value="Games"> Games and Clothing</option>
											  <option value="Garden"> Garden</option>
											  <option disabled="disabled" style="background-color:#E9E9E9;font-weight:bold;" value="Multimedia"> - Multimedia -
											  </option>
											  <option value="Telephony"> Telephony</option>
											  <option value="Image"> Image and sound</option>
											  <option value="Computers"> Computers and Accessories</option>
											  <option value="Video"> Video games and consoles</option>
											  <option disabled="disabled" style="background-color:#E9E9E9;font-weight:bold;" value="Real"> - Real Estate -
											  </option>
											  <option value="Apartment"> Apartment</option>
											  <option value="Home"> Home</option>
											  <option value="Vacation"> Vacation Rentals</option>
											  <option value="Commercial"> Commercial offices and local</option>
											  <option value="Grounds"> Grounds</option>
											  <option value="Houseshares"> Houseshares</option>
											  <option value="Other real estate"> Other real estate</option>
											  <option disabled="disabled" style="background-color:#E9E9E9;font-weight:bold;" value="Services"> - Services -
											  </option>
											  <option value="Jobs"> Jobs</option>
											  <option value="Job application"> Job application</option>
											  <option value="Services"> Services</option>
											  <option value="Price"> Price</option>
											  <option value="Business"> Business and goodwill</option>
											  <option value="Professional"> Professional equipment</option>
											  <option disabled="disabled" style="background-color:#E9E9E9;font-weight:bold;" value="dropoff"> - Extra -
											  </option>
											  <option value="Other"> Other</option>
											</select> --}}
										</div>
									</div>

									<!-- Multiple Radios (inline) -->
									<div class="form-group">
										<label class="col-md-3 control-label">Add Type</label>

										<div class="col-md-8">
											<label for="radios-0" class="radio-inline">


												<input type="radio" @if($listing->ad_type == 1) checked="checked"
														@endif value="1" id="radios-0" name="ad_type"> Private </label> <label for="radios-1" class="radio-inline"> <input type="radio" @if($listing->ad_type == 2) checked="checked"
														@endif value="2" id="radios-1" name="ad_type"> Business </label>
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group {{ $errors->has('ad_title') ? ' has-error' : '' }}">
										<label for="Adtitle" class="col-md-3 control-label">Ad title</label>

										<div class="col-md-8">
											<input type="text" required="" class="form-control input-md"
													placeholder="Ad title" name="ad_title" id="Adtitle"
													value="{{ $listing->title }}"> <span class="help-block">A great title needs at least 60 characters. </span>@if ($errors->has('ad_title'))
												<span class="help-block">
                            <strong>{{ $errors->first('ad_title') }}</strong>
                          </span>
											@endif
										</div>
									</div>

									<!-- Textarea -->
									<div class="form-group {{ $errors->has('ad_description') ? ' has-error' : '' }}">
										<label for="textarea" class="col-md-3 control-label">Describe ad </label>

										<div class="col-md-8">
											<textarea name="ad_description" id="textarea" class="form-control">{{ $listing->description }}</textarea>@if ($errors->has('ad_description'))
												<span class="help-block">
                            <strong>{{ $errors->first('ad_description') }}</strong>
                          </span>
											@endif
										</div>
									</div>

									<!-- Prepended text-->
									<div class="form-group {{ $errors->has('price') ? ' has-error' : '' }}">
										<label for="Price" class="col-md-3 control-label">Price</label>

										<div class="col-md-4">
											<div class="input-group"><span class="input-group-addon"> JD </span> <input type="text" required="" placeholder="Amount" class="form-control"
														name="price" id="Price" value="{{ $listing->price }}"/>
												@if ($errors->has('price'))
													<span class="help-block">
                            <strong>{{ $errors->first('price') }}</strong>
                          </span>
												@endif
											</div>
										</div>
										<div class="col-md-4">
											<div class="checkbox">
												<label> <input type="checkbox" name="negotiable" value="1"
															@if($listing->negotiable ==1) checked="checked" @endif > Negotiable </label>
											</div>
										</div>
									</div>

									<div class="form-group" id="data1" style="display: none;">
										<label for="" class="col-md-3 control-label data1"></label>
										<div class="col-md-8" id="data1elem">
											<input type="text" class="form-control input-md" placeholder="" name="data1" value="{{ $listing->data1 }}">
											<span class="help-block"></span>
										</div>
									</div>
									<div class="form-group" id="data2" style="display: none;">
										<label for="" class="col-md-3 control-label data2"></label>
										<div class="col-md-8" id="data2elem">
											<input type="text" class="form-control input-md" placeholder="" name="data2" value="{{ $listing->data2 }}">
											<span class="help-block"></span>
										</div>
									</div>
									<div class="form-group" id="data3" style="display: none;">
										<label for="" class="col-md-3 control-label data3"></label>
										<div class="col-md-8" id="data3elem">
											<input type="text" class="form-control input-md" placeholder="" name="data3" value="{{ $listing->data3 }}">
											<span class="help-block"></span>
										</div>
									</div>
									<div class="form-group" id="data4" style="display: none;">
										<label for="" class="col-md-3 control-label data4"></label>
										<div class="col-md-8" id="data4elem">
											<input type="text" class="form-control input-md" placeholder="" name="data4" value="{{ $listing->data4 }}">
											<span class="help-block"></span>
										</div>
									</div>
									<div class="form-group" id="data5" style="display: none;">
										<label for="" class="col-md-3 control-label data5"></label>
										<div class="col-md-8" id="data5elem">
											<input type="text" class="form-control input-md" placeholder="" name="data5" value="{{ $listing->data5 }}">
											<span class="help-block"></span>
										</div>
									</div>
									<div class="form-group" id="data6" style="display: none;">
										<label for="" class="col-md-3 control-label data6"></label>
										<div class="col-md-8" id="data6elem">
											<input type="text" class="form-control input-md" placeholder="" name="data6" value="{{ $listing->data6 }}">
											<span class="help-block"></span>
										</div>
									</div>
									<div class="form-group" id="data7" style="display: none;">
										<label for="" class="col-md-3 control-label data7"></label>
										<div class="col-md-8"  id="data7elem">
											<input type="text" class="form-control input-md" placeholder="" name="data7" value="{{ $listing->data7 }}">
											<span class="help-block"></span>
										</div>
									</div>
									<div class="form-group" id="data8" style="display: none;">
										<label for="" class="col-md-3 control-label data8"></label>
										<div class="col-md-8" id="data8elem">
											<input type="text" class="form-control input-md" placeholder="" name="data8" value="{{ $listing->data8 }}">
											<span class="help-block"></span>
										</div>
									</div>

									<!-- photo -->
									<div class="form-group">
										<label for="textarea" class="col-md-3 control-label"> Picture </label>

										<div class="col-md-8">
											<div class="mb10">
                                  <span class="file-input file-input-new">
                              <input class="form-control" id="filer_input" name="photos[]" type="file" multiple="1">
                                    </span>

											</div>
											<p class="help-block">Add up to 24 photos. Use a real image of your product, not catalogs.</p>
										</div>


									</div>
									<div class="form-group">
										<label for="" class="col-md-3 control-label">Video URL</label>

										<div class="col-md-8">
											<input type="text" class="form-control input-md" placeholder="" name="youtube" id="youtube" value="{{ $listing->youtube }}"> <span class="help-block">URL of Youtube video e.g. http://youtube.com/watch?v=<strong>yourid</strong> </span>
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
									<div class="form-group {{ $errors->has('posted_by') ? ' has-error' : '' }}">
										<label for="textinput-name" class="col-md-3 control-label">Name</label>

										<div class="col-md-8">
											<input type="text" required="" class="form-control input-md" placeholder="Seller Name" name="posted_by" id="textinput-name" value="{{ $listing->posted_by }}">
											@if ($errors->has('posted_by'))
												<span class="help-block">
                            <strong>{{ $errors->first('posted_by') }}</strong>
                          </span>
											@endif
										</div>
									</div>

									<div class="form-group {{ $errors->has('phone') ? ' has-error' : '' }}">
										<label for="textinput-name" class="col-md-3 control-label">Phone Number</label>

										<div class="col-md-8">
											<input type="text" required="" class="form-control input-md" placeholder="00962xxxxxxxx" name="phone" id="textinput-phone" value="{{ $listing->phone }}">
											@if ($errors->has('phone'))
												<span class="help-block">
                            <strong>{{ $errors->first('phone') }}</strong>
                          </span>
											@endif
										</div>
									</div>

									<!-- Appended checkbox -->
								{{-- <div class="form-group">
								  <label for="seller-email" class="col-md-3 control-label"> Seller
									Email</label>

									<div class="col-md-8">
									  <input type="text" required="" placeholder="Email" class="form-control" name="seller-email" id="seller-email">

									  <div class="checkbox">
										<label>
										  <input type="checkbox" value="">
										  <small> Hide the phone number on this ads.</small>
										</label>
									  </div>
									</div>
								  </div> --}}

								<!-- Text input-->
								{{-- <div class="form-group">
								  <label for="seller-Number" class="col-md-3 control-label">Phone
									Number</label>

									<div class="col-md-8">
									  <input type="text" required="" class="form-control input-md" placeholder="Phone Number" name="seller-Number" id="seller-Number">
									</div>
								  </div> --}}

								<!-- Select Basic -->
								{{-- <div class="form-group">
								  <label for="seller-Location" class="col-md-3 control-label">Location</label>

								  <div class="col-md-8">
									<select class="form-control" name="seller-Location" id="seller-Location">
									  <option value="1">Option one</option>
									  <option value="2">Option two</option>
									</select>
								  </div>
								</div> --}}

								<!-- Select Basic -->
									<div class="form-group {{ $errors->has('seller_area') ? ' has-error' : '' }}">
										<label for="seller-area" class="col-md-3 control-label">City</label>

										<div class="col-md-8">
											{{ Form::select('seller_area', $city, $listing->city_id, ['class' => 'form-control', 'placeholder' => 'Select...']) }}
											@if ($errors->has('seller_area'))
												<span class="help-block">
                            <strong>{{ $errors->first('seller_area') }}</strong>
                          </span>
											@endif
											{{-- <select class="form-control" name="seller_area" id="seller-area">
											  <option value="1">Option one</option>
											  <option value="2">Option two</option>
											</select> --}}
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-8 col-md-push-3">
											<div class="checkbox">
												<label>

													{{ Form::checkbox('active', '1', $listing->active) }}
													Active </label>
											</div>
										</div>
									</div>


									<div class="form-group">
										<label for="" class="col-md-3 control-label">Status</label>

										<div class="col-md-8">
											@if ($listing->status == 0) Not Approved @else Approved @endif
										</div>
									</div>


								{{-- <div class="well">
								  <h3><i class=" icon-certificate icon-color-1"></i> Make your Ad Premium
								  </h3>

								  <p>Premium ads help sellers promote their product or service by getting
									their ads more visibility with more
									buyers and sell what they want faster. <a href="help.html">Learn
									more</a></p>

									<div class="form-group">
									  <table class="table table-hover checkboxtable">
										<tbody><tr>
										  <td>
											<div class="radio">
											  <label>
												<input type="radio" checked="" value="option0" id="optionsRadios0" name="optionsRadios">
												<strong>Regular List </strong> </label>
											  </div>
											</td>
											<td><p>$00.00</p></td>
										  </tr>
										  <tr>
											<td>
											  <div class="radio">
												<label>
												  <input type="radio" value="option1" id="optionsRadios1" name="optionsRadios">
												  <strong>Urgent Ad </strong> </label>
												</div>
											  </td>
											  <td><p>$10.00</p></td>
											</tr>
											<tr>
											  <td>
												<div class="radio">
												  <label>
													<input type="radio" value="option2" id="optionsRadios2" name="optionsRadios">
													<strong>Top of the Page Ad </strong> </label>
												  </div>
												</td>
												<td><p>$20.00</p></td>
											  </tr>
											  <tr>
												<td>
												  <div class="radio">
													<label>
													  <input type="radio" value="option3" id="optionsRadios3" name="optionsRadios">
													  <strong>Top of the Page Ad + Urgent Ad </strong>
													</label>
												  </div>
												</td>
												<td><p>$40.00</p></td>
											  </tr>
											  <tr>
												<td>
												  <div class="form-group">
													<div class="col-md-8">
													  <select id="PaymentMethod" name="Method" class="form-control">
														<option value="2">Select Payment Method</option>
														<option value="3">Credit / Debit Card</option>
														<option value="5">Paypal</option>
													  </select>
													</div>
												  </div>
												</td>
												<td><p><strong>Payable Amount : $40.00</strong></p></td>
											  </tr>
											</tbody></table>

										  </div>
										</div> --}}

								<!-- terms -->
								{{-- <div class="form-group">
								  <label class="col-md-3 control-label">Terms</label>

								  <div class="col-md-8">
									<label for="checkboxes-0" class="checkbox-inline">
									  <input type="checkbox" value="Remember above contact information." id="checkboxes-0" name="checkboxes">
									  Remember above contact information. </label>
									</div>
								  </div> --}}

								<!-- Button  -->
									<div class="form-group">
										<label class="col-md-3 control-label">Images (select to remove)</label>
										<div style="display: inline-block">
										@foreach($photos as $photo)
											<div style="max-width: 200px; display: inline-block;">
											<input type="checkbox" name="img[]" value="{{ $photo->id }}"/> <img class="thumb" src="{{ URL::to('uploads/ads/' . $photo->photo) }}"/></div>
										@endforeach
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label"></label> <input type="hidden" name="id" value="{{ $listing->id }}"/>
										<div class="col-md-8"><input class="btn btn-success btn-lg" id="button1id" type="submit" name="submit" value="Post Ad"/></div>
										{{ csrf_field() }}
									</div>
								</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /.page-content -->

				<div class="col-md-3 reg-sidebar">
					<div class="reg-sidebar-inner text-center">
						<div class="promo-text-box"><i class=" icon-picture fa fa-4x icon-color-1"></i>

							<h3><strong>Post a Free Classified</strong></h3>

							<p> Post your free online classified ads with us. Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
						</div>

						<div class="panel sidebar-panel">
							<div class="panel-heading uppercase">
								<small><strong>How to sell quickly?</strong></small>
							</div>
							<div class="panel-content">
								<div class="panel-body text-left">
									<ul class="list-check">
										<li> Use a brief title and description of the item</li>
										<li> Make sure you post in the correct category</li>
										<li> Add nice photos to your ad</li>
										<li> Put a reasonable price</li>
										<li> Check the item before publish</li>

									</ul>
								</div>
							</div>
						</div>


					</div>
				</div>
				<!--/.reg-sidebar-->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
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


			$('#combo-sub-cat').on('change', function () {
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
							filler(j.details1, '{{ $listing->data1 }}', 'data1',  'data1elem');
						}
						if (j.data2 != "") {
							jQuery('#data2').show();
							jQuery('label.data2').text(j.data2);
							filler(j.details2, '{{ $listing->data2 }}', 'data2',  'data2elem');
						}
						if (j.data3 != "") {
							jQuery('#data3').show();
							jQuery('label.data3').text(j.data3);
							filler(j.details3, '{{ $listing->data3 }}', 'data3',  'data3elem');
						}
						if (j.data4 != "") {
							jQuery('#data4').show();
							jQuery('label.data4').text(j.data4);
							filler(j.details4, '{{ $listing->data4 }}', 'data4',  'data4elem');
						}
						if (j.data5 != "") {
							jQuery('#data5').show();
							jQuery('label.data5').text(j.data5);
							filler(j.details5, '{{ $listing->data5 }}', 'data5',  'data5elem');
						}
						if (j.data6 != "") {
							jQuery('#data6').show();
							jQuery('label.data6').text(j.data6);
							filler(j.details6, '{{ $listing->data6 }}', 'data6',  'data6elem');
						}
						if (j.data7 != "") {
							jQuery('#data7').show();
							jQuery('label.data7').text(j.data7);
							filler(j.details7, '{{ $listing->data7 }}', 'data7',  'data7elem');
						}
						if (j.data8 != "") {
							jQuery('#data8').show();
							jQuery('label.data8').text(j.data8);
							filler(j.details8, '{{ $listing->data8 }}', 'data8',  'data8elem');
						}
						break;
					}
				}

			}

		});
	</script>
@endsection

@section('js2')
	<script type="text/javascript">

		$(document).ready(function(){

			var json = {!! $json_combo !!};

			var htmlstr = '';
			htmlstr += 		'<input type="hidden" data-cat-value="Main Cat" id="combo-main-cat" name="mcategory" value="{{ $listing->subcategory->category->id }}">';
			htmlstr += 		'<input type="hidden" data-cat-sub-value="Sub cat" id="combo-sub-cat" name="category" value="{{ $listing->subcategory_id }}">';
			htmlstr += 		'<span class="combo-span"><i class="fa fa-th"></i> <span>Choose Options</span></span>';
			htmlstr += 		'<ul class="combo-menu">';

			$.each(json, function (key, data) {
				htmlstr += '<li class="has_sub" id="'+key+'" data-cat="'+key+'">';
				flag=0;
				$.each(data, function (index, data2) {
					if(flag==0) {
						htmlstr += '<a href="#" data-value="'+data2.cat+'"><i class="fa fa-car"></i> '+data2.cat+'</a>';
						htmlstr += '<ul class="sub-combo">';
						flag++;
					}
					//console.log('index', index, data2.sid, data2.scat);
					htmlstr += '<li id="'+data2.id+'-'+data2.sid+'" data-cat-sub="'+data2.sid+'"><a href="#" data-value="'+data2.scat+'">'+data2.scat+'</a></li>';
				});
				htmlstr += '</ul></li>';
			});
			htmlstr += '</ul>';
			$('#combo-box-outer').html(htmlstr);
		});

	</script>
@endsection