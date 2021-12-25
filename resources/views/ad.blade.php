@extends('layouts.main')

@section('content')
	<div class="main-container">
		<div class="container">
			<ol class="breadcrumb pull-left">
				<li><a href="#"><i class="icon-home fa"></i></a></li>
				<li><a href="#">All Ads</a></li>
				<li><a href="#">{{ $listing->subcategory->category->category }}</a></li>
				<li class="active">{{ $listing->subcategory->sub_category }}</li>
			</ol>
			<div class="pull-right backtolist"><a href="#"> <i class="fa fa-angle-double-left"></i> Back to Results</a></div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-9 page-content col-thin-right">
					<div class="inner inner-box ads-details-wrapper">
						<h2> {{ $listing->title  }}
							<small class="label label-default adlistingtype">@if($listing->user->user_type == 1) Individual @else Business @endif</small>
						</h2>
						<span class="info-row"> <span class="date"><i class=" icon-clock"> </i> {{ date('M d, Y H:i', strtotime($listing->created_at)) }}</span> - <span class="item-location"><i
										class="fa fa-map-marker"></i> {{ $listing->city->city }} </span> - <span> <i
										class="fa fa-eye"></i> {{ $listing->views }}</span> - <span> AD ID: {{ $listing->id }}</span></span>

						<div class="ads-image">
							<h1 class="pricetag"> JD {{ $listing->price }}</h1>
							<div class="bx-wrapper" style="max-width: 100%;">
								<div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 402px;">
									<ul class="bxslider" style="width: 515%; position: relative; transition-duration: 0s; transform: translate3d(-713px, 0px, 0px);">
										@if( count($photos))
											<?php $ctr = 0 ?>
											@foreach($photos as $photo)
												<?php if ($ctr == 0) { ?>
												<li style="float: left; list-style: outside none none; position: relative; width: 713px;" class="bx-clone">
													<img alt="img" src="{{ URL::to('uploads/ads/' . $photo->photo) }}">
												</li>
												<?php $ctr++; } else { ?>
												<li style="float: left; list-style: outside none none; position: relative; width: 713px;">
													<img alt="img" src="{{ URL::to('uploads/ads/' . $photo->photo) }}">
												</li>
												<?php } ?>
											@endforeach
										@else
											<li style="float: left; list-style: outside none none; position: relative; width: 713px;" class="bx-clone">
												<img alt="img" src="{{ URL::to('src/images/product-default.jpg') }}">
											</li>
											sadfsdf
										@endif
										{{--<li style="float: left; list-style: outside none none; position: relative; width: 713px;" class="bx-clone"><img alt="img" src="{{ URL::to('src/images/product-default.jpgx') }}"></li>--}}
										{{--<li style="float: left; list-style: outside none none; position: relative; width: 713px;"><img alt="img" src="{{ URL::to('src/images/product-default.jpg') }}"></li>--}}
										{{--<li style="float: left; list-style: outside none none; position: relative; width: 713px;"><img alt="img" src="{{ URL::to('src/images/product-default.jpg') }}"></li>--}}
										{{--<li style="float: left; list-style: outside none none; position: relative; width: 713px;"><img alt="img" src="{{ URL::to('src/images/product-default.jpg') }}"></li>--}}
										{{--<li style="float: left; list-style: outside none none; position: relative; width: 713px;" class="bx-clone"><img alt="img" src="images/item/tp-big/Image00014.jpg"></li>--}}
									</ul>
								</div>
								{{--<div class="bx-controls bx-has-controls-direction">--}}
								{{--<div class="bx-controls-direction"><a href="" class="bx-prev">Prev</a><a href="" class="bx-next">Next</a></div>--}}
								{{--</div>--}}
							</div>
							<div id="bx-pager">
								<?php $ctr = 0 ?>
								@foreach($photos as $photo)
									<?php if ($ctr == 0) { ?>
									<a href="" data-slide-index="{{ $ctr }}" class="thumb-item-link active"><img alt="img" src="{{ URL::to('uploads/ads/' . $photo->photo) }}"></a>

									<?php $ctr++; } else { ?>
									<a href="" data-slide-index="{{ $ctr }}" class="thumb-item-link"><img alt="img" src="{{ URL::to('uploads/ads/' . $photo->photo) }}"></a>
									<?php } ?>
								@endforeach
								{{--<a href="" data-slide-index="0" class="thumb-item-link active"><img alt="img" src="{{ URL::to('src/images/product-thumb-default.jpg') }}"></a>--}}
								{{--<a href="" data-slide-index="1" class="thumb-item-link"><img alt="img" src="{{ URL::to('src/images/product-thumb-default.jpg') }}"></a>--}}
								{{--<a href="" data-slide-index="2" class="thumb-item-link"><img alt="img" src="{{ URL::to('src/images/product-thumb-default.jpg') }}"></a>--}}
							</div>
						</div>
						<!--ads-image-->

						<div class="Ads-Details">
							<h5 class="list-title"><strong>Ads Details</strong></h5>

							<div class="row">


								<div class="ads-details-info col-md-8">
									{{ $listing->description }}

									{{--<p>Sony Xperia C3 Dual smartphone with 5.50-inch 720x1280 display powered by 1.2GHz--}}
									{{--processor alongside 1GB RAM and 8-megapixel rear camera. </p>--}}
									{{--<h4>Camera and video</h4>--}}
									{{--<ul class="list-circle">--}}
									{{--<li>5 MP Front-facing camera (720p)</li>--}}
									{{--<li>Front flash LED</li>--}}
									{{--<li>Wide view front camera</li>--}}
									{{--<li>8 MP camera with auto focus</li>--}}
									{{--<li>HD video recording 1080 p</li>--}}
									{{--<li>Sony Exmor RS for mobile image sensor</li>--}}
									{{--<li>HDR (High Dynamic Range) for photos and videos</li>--}}
									{{--<li>Pulsed LED flash</li>--}}
									{{--<li>16x digital zoom</li>--}}
									{{--<li>Superior Auto &ndash; automatic scene selection</li>--}}
									{{--<li>Geotagging &ndash; add location info to your photos</li>--}}
									{{--<li>Object tracking &ndash; lock focus on a specific object</li>--}}
									{{--<li>Red-eye reduction</li>--}}
									{{--<li>Image capture, supported file format: JPEG</li>--}}
									{{--<li>Image playback, supported file formats: BMP, GIF, JPEG, PNG; WebP</li>--}}
									{{--<li>Video capture, supported file formats: 3GPP, MP4</li>--}}
									{{--<li>Video playback, supported file formats: 3GPP, MP4, M4V, AvI, XVID, WEBM</li>--}}
									{{--</ul>--}}
									{{--<h4>Networks</h4>--}}
									{{--<ul>--}}
									{{--<li>GSM GPRS/EDGE (2G)</li>--}}
									{{--<li>UMTS HSPA (3G)</li>--}}
									{{--<li>LTE (4G)</li>--}}
									{{--</ul>--}}
								</div>
								<div class="col-md-4">
									{{--<aside class="panel panel-body panel-details">--}}
									{{--<h3>Features:</h3>--}}
									{{--<ul>--}}
									{{--@if($listing->data1)--}}
									{{--<li>--}}
									{{--<p class="no-margin "><strong>{{ $subcateg->data1 }}:</strong><span class="data">{{ $listing->data1 }}</span></p>--}}
									{{--</li>--}}
									{{--@endif--}}
									{{--@if($listing->data2)--}}
									{{--<li>--}}
									{{--<p class="no-margin "><strong>{{ $subcateg->data2 }}:</strong><span class="data">{{ $listing->data2 }}</span></p>--}}
									{{--</li>--}}
									{{--@endif--}}
									{{--@if($listing->data3)--}}
									{{--<li>--}}
									{{--<p class="no-margin "><strong>{{ $subcateg->data3 }}:</strong><span class="data">{{ $listing->data3 }}</span></p>--}}
									{{--</li>--}}
									{{--@endif--}}
									{{--@if($listing->data4)--}}
									{{--<li>--}}
									{{--<p class="no-margin "><strong>{{ $subcateg->data4 }}:</strong><span class="data">{{ $listing->data4 }}</span></p>--}}
									{{--</li>--}}
									{{--@endif--}}
									{{--@if($listing->data5)--}}
									{{--<li>--}}
									{{--<p class="no-margin "><strong>{{ $subcateg->data5 }}:</strong><span class="data">{{ $listing->data5 }}</span></p>--}}
									{{--</li>--}}
									{{--@endif--}}
									{{--@if($listing->data6)--}}
									{{--<li>--}}
									{{--<p class="no-margin "><strong>{{ $subcateg->data6 }}:</strong><span class="data">{{ $listing->data6 }}</span></p>--}}
									{{--</li>--}}
									{{--@endif--}}
									{{--@if($listing->data7)--}}
									{{--<li>--}}
									{{--<p class="no-margin "><strong>{{ $subcateg->data7 }}:</strong><span class="data">{{ $listing->data7 }}</span></p>--}}
									{{--</li>--}}
									{{--@endif--}}
									{{--@if($listing->data8)--}}
									{{--<li>--}}
									{{--<p class="no-margin "><strong>{{ $subcateg->data8 }}:</strong><span class="data">{{ $listing->data8 }}</span></p>--}}
									{{--</li>--}}
									{{--@endif--}}










									{{--<li>--}}
									{{--<p class=" no-margin "><strong>Price:</strong> SAR {{ $listing->price }}</p>--}}
									{{--</li>--}}
									{{--<li>--}}
									{{--<p class="no-margin"><strong>Type:</strong> {{ $listing->subcategory->sub_category }} </p>--}}
									{{--</li>--}}
									{{--<li>--}}
									{{--<p class="no-margin"><strong>Location:</strong> {{ $listing->city->city }} </p>--}}
									{{--</li>--}}
									{{--<li>--}}
									{{--<p class=" no-margin "><strong>Condition:</strong> New</p>--}}
									{{--</li>--}}
									{{--<li>--}}
									{{--<p class="no-margin"><strong>Brand:</strong> Sony</p>--}}
									{{--</li>--}}
									{{--</ul>--}}
									{{--</aside>--}}
									<div class="ads-action">
										<ul class="list-border">
											<li><a href="#reportAdvertiser" data-toggle="modal" data-target="#myModal"> <i class="fa fa-flag"></i> Report </a></li>
											<li><a href="#"> <i class=" fa fa-user"></i> More ads by User </a></li>
											<li><a href="#"> <i class=" fa fa-heart"></i> Save ad </a></li>
											<li><a href="#"> <i class="fa fa-share-alt"></i> Share ad </a></li>
											<li><a data-toggle="modal" href="#reportAdvertiser"> <i class="fa icon-info-circled-alt"></i> Report abuse </a></li>

										</ul>
									</div>
								</div>
								<div class="features col-md-12">
									<h5 class="list-title"><strong>Features:</strong></h5>

									@if($listing->data1)
										<div class="col-md-3">
											<strong>{{ $subcateg->data1 }}:</strong><br/><span class="data">{{ $listing->data1 }}</span></p>
										</div>
									@endif
									@if($listing->data2)
										<div class="col-md-3">
											<p class="no-margin "><strong>{{ $subcateg->data2 }}:</strong><br/><span class="data">{{ $listing->data2 }}</span></p>
										</div>
									@endif
									@if($listing->data3)
										<div class="col-md-3">
											<p class="no-margin "><strong>{{ $subcateg->data3 }}:</strong><br/><span class="data">{{ $listing->data3 }}</span></p>
										</div>
									@endif
									@if($listing->data4)
										<div class="col-md-3">
											<p class="no-margin "><strong>{{ $subcateg->data4 }}:</strong><br/><span class="data">{{ $listing->data4 }}</span></p>
										</div>
									@endif
									@if($listing->data5)
										<div class="col-md-3">
											<p class="no-margin "><strong>{{ $subcateg->data5 }}:</strong><br/><span class="data">{{ $listing->data5 }}</span></p>
										</div>
									@endif
									@if($listing->data6)
										<div class="col-md-3">
											<p class="no-margin "><strong>{{ $subcateg->data6 }}:</strong><br/><span class="data">{{ $listing->data6 }}</span></p>
										</div>
									@endif
									@if($listing->data7)
										<div class="col-md-3">
											<p class="no-margin "><strong>{{ $subcateg->data7 }}:</strong><br/><span class="data">{{ $listing->data7 }}</span></p>
										</div>
									@endif
									@if($listing->data8)
										<div class="col-md-3">
											<p class="no-margin "><strong>{{ $subcateg->data8 }}:</strong><br/><span class="data">{{ $listing->data8 }}</span></p>
										</div>
									@endif


								</div>

							</div>
							<div class="content-footer text-left">
								@if($listing->youtube)
									<div class="videowrapper"><iframe width="560" height="315" src="https://www.youtube.com/embed/{{ $listing->youtube }}" frameborder="0" allowfullscreen></iframe></div>

									{{--<a href="{{ $listing->youtube }}" data-toggle="modal" class="btn btn-default" target="_blank"><i class="icon-mail-2"></i> YouTube Video </a>--}} @endif
								@if($listing->attachement)
									<a href={{ $listing->attachement }}" class=" btn btn-info" target="_blank"><i class=" icon-phone-1"></i> {{ $listing->attachement }} </a> @endif
							</div>
						</div>
						<div class="Ads-Comments">
							<h5 class="list-title"><strong>Comments:</strong></h5>
							<div class="details">
								@foreach($comments as $comment)
									<div>
										<p><a href="#">{{ $comment->user->name }}</a> - {{ $comment->created_at }} <span class="pull-right"><a href="#" class="commentreport" data-toggle="modal" data-target="#myModalComment" data-id="{{ $comment->id }}"> <i class="fa fa-flag"></i> Report </a> @if($user != null and $listing->user_id == $user->id)<a href="{{ route('delete-comment', $comment->id) }}" onclick="return confirm('Are you sure?');"> <i class="fa fa-trash"></i> Delete </a>@endif</span></p>
										<div class="comment">
@if($comment->description != "")
											<div>{{ $comment->description }}</div>
@else
											<div>OFFER: <strong>{{ $comment->offer }}</strong> JD</div>
	@endif
										</div>
									</div>
								@endforeach

							</div>
							<div class="comment-reply">
								<h5 class="list-title"><strong>Add Comment</strong></h5>
								@if($user == null)
									<p>Please login or register</p>
								@else
									<div class="form-wrapper" style="margin-bottom: 10px">
										<form method="post" action="{{ route('comment-reply') }}">
											<input type="hidden" name="list_id" value="{{ $listing->id }}"/>

											<textarea class="form-control" name="msg"></textarea> <input type="submit" class="btn btn-primary" value="Comment"/>
											{{ csrf_field() }}
										</form>
									</div>

									<div class="form-wrapper row" style="margin-bottom: 10px; margin-top: 10px; display: block; padding-bottom: 10px;">

										<form method="post" action="{{ route('comment-offer') }}">
											<div class="col-md-12"><h4>OR</h4></div>
											<div class="col-md-6">
												<input type="hidden" name="list_id" value="{{ $listing->id }}"/> <input type="text" class="form-control" name="offer"></div>
											<div class="col-md-6"><input type="submit" class="btn btn-primary" value="Make an Offer"/>
												{{ csrf_field() }} </div>
										</form>
									</div>
								@endif
							</div>

						</div>

						<div style="clear: both"></div>


						<div class="col-lg-12x content-box ">
							<div class="row row-featured">
								<div class="col-lg-12  box-title ">
									<div class="inner"><h2><span>Similar </span> Products </h2>


									</div>
								</div>

								<div style="clear: both"></div>

								<div class=" relative  content featured-list-row clearfix">

									<nav class="slider-nav has-white-bg nav-narrow-svg">
										<a class="prev">
											<span class="nav-icon-wrap"></span>

										</a>
										<a class="next">
											<span class="nav-icon-wrap"></span>
										</a>
									</nav>

									<div class="no-margin featured-list-slider ">
										<div class="item"><a href="#">
                 <span class="item-carousel-thumb">
                    <img class="img-responsive" src="{{ URL::to('src/images/auto/2012-mercedes-benz-sls-amg.jpg') }}" alt="img">
                 </span>
												<span class="item-name"> 2011 Mercedes-Benz SLS AMG  </span>
												<span class="price">  $204,990 </span>
											</a>
										</div>

										<div class="item">

											<a href="#">
                 <span class="item-carousel-thumb">
                    <img class="img-responsive" src="{{ URL::to('src/images/item/tp/Image00011.jpg') }}" alt="img">
                 </span>
												<span class="item-name"> Lorem ipsum dolor sit amet </span>
												<span class="price"> $ 260 </span>
											</a>
										</div>

										<div class="item"><a href="#">
                            <span class="item-carousel-thumb"> <img class="item-img"
										src="{{ URL::to('src/images/item/tp/Image00006.jpg') }}" alt="img"> </span>
												<span class="item-name"> consectetuer adipiscing elit </span>
												<span class="price"> $ 240 </span></a></div>


										<div class="item"><a href="#">
                            <span class="item-carousel-thumb"> <img class="item-img"
										src="{{ URL::to('src/images/item/tp/Image00022.jpg') }}" alt="img"> </span>
												<span class="item-name"> sed diam nonummy  </span> <span class="price"> $ 140</span></a>
										</div>

										<div class="item"><a href="#">
                            <span class="item-carousel-thumb"> <img class="item-img"
										src="{{ URL::to('src/images/item/tp/Image00013.jpg') }}" alt="img">  </span><span
														class="item-name"> feugiat nulla facilisis  </span> <span
														class="price"> $ 140 </span></a></div>

										<div class="item"><a href="#">
                            <span class="item-carousel-thumb"> <img class="item-img" src="{{ URL::to('src/images/item/3.jpg') }}"
										alt="img"> </span> <span class="item-name"> praesent luptatum zzril  </span>
												<span class="price"> $ 220 </span></a></div>

										<div class="item"><a href="#">
                            <span class="item-carousel-thumb"> <img class="item-img" src="{{ URL::to('src/images/item/4.jpg') }}"
										alt="img"> </span> <span class="item-name"> delenit augue duis dolore  </span>
												<span class="price"> $ 120 </span></a></div>

										<div class="item"><a href="#">
                            <span class="item-carousel-thumb"> <img class="item-img" src="{{ URL::to('src/images/item/6.jpg') }}"
										alt="img"> </span> <span class="item-name"> te feugait nulla facilisi </span>
												<span class="price"> $ 251 </span></a></div>
									</div>


								</div>

							</div>
						</div>





					</div>
					<!--/.ads-details-wrapper-->

				</div>
				<!--/.page-content-->

				<div class="col-sm-3  page-sidebar-right">
					<aside>
						<div class="panel sidebar-panel panel-contact-seller">
							<div class="panel-heading">Contact Seller</div>
							<div class="panel-content user-info">
								<div class="panel-body text-center">
									<div class="seller-info">
										@if($listing->user->photo == "")
											<img alt="user" src="{{ URL::to('src/images/user.jpg') }}" class="userImg">

										@else
											<img alt="user" src="{{ URL::to('uploads/users/' . $listing->user->photo) }}" class="userImg">
										@endif
										<h3 class="no-margin">{{ $listing->posted_by }}</h3>
										<p>Location: <strong>{{ $listing->city->city }}</strong></p>
										<p> Joined: <strong>{{ date('M d, Y', strtotime($listing->user->created_at)) }}</strong></p>
									</div>
									<div class="user-ads-action">
										<?php
										if ($user != null) {
											$isFavorite = (isset($listing->favorite()->where('user_id', $user->id)->first()->user_id) ? 1 : 0);
										} else {
											$isFavorite = 0;
										}


										?>


										<button class="btn btn-danger btn-block" id="setFavorite" data-link="{{ $listing->id }}" @if($isFavorite == 1) style="display: none;" @endif><i class="glyphicon glyphicon-heart"></i> Mark as Favorite</button>
										<button class="btn btn-default btn-block" id="unsetFavorite" data-link="{{ $listing->id }}" @if($isFavorite == 0) style="display: none;" @endif><i class="glyphicon glyphicon-heart-empty"></i> Unmark as Favorite </button>


										<button class="btn btn-default btn-block popup" data-toggle="modal" id="msgButton"><i class=" icon-mail-2"></i> Send a message</button>
										<div class="popupbox" id="msgPopup" style="display: none;">
											@if($user == null)
												<p>Please login or register</p>
											@else
												<form method="post" action="{{ route('send-msg') }}">
													<p>Your message for seller:<br/><textarea name="msg"></textarea><input type="hidden" name="id" value="{{ $listing->id }}"/>{{ csrf_field() }}<input class="btn btn-primary" type="submit" value="Send"/>
												</form>
											@endif
										</div>
										{{--<a class="btn  btn-info btn-block"><i class=" icon-phone-1"></i> @if($listing->user->phone_show ==1) {{ $listing->user->phone }} @else HIDDEN @endif {{ $listing->phone }} </a>--}}
										<a class="btn  btn-info btn-block"><i class=" icon-phone-1"></i> {{ $listing->phone }} </a>

									</div>
								</div>
							</div>
						</div>
						<div class="panel sidebar-panel">
							<div class="panel-heading">Safety Tips for Buyers</div>
							<div class="panel-content">
								<div class="panel-body text-left">
									<ul class="list-check">
										<li> Meet seller at a public place</li>
										<li> Check the item before you buy</li>
										<li> Pay only after collecting the item</li>
									</ul>
									<p><a href="#" class="pull-right"> Know more <i class="fa fa-angle-double-right"></i> </a></p>
								</div>
							</div>
						</div>
						<!--/.categories-list-->
					</aside>
				</div>
				<!--/.page-side-bar-->
			</div>
		</div>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Report Ad</h4>
				</div>
				<div class="modal-body reason">
					<p>Please select the reason for Report.</p>
					<form method="post" action="{{ route('report-ad') }}">
						<input type="hidden" name="list_id" value="{{ $listing->id }}" />
						<ul>
							<li><input type="radio" name="reason" value="1" /> Reason 1</li>
							<li><input type="radio" name="reason" value="2" /> Reason 2</li>
							<li><input type="radio" name="reason" value="3" /> Reason 3 <br /><input type="text" name="reasontext" class="form-control" /></li>
						</ul>
						<input type="submit" class="btn btn-danger" style="margin: 10px 0px" />
						{{ csrf_field() }}
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModalComment" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Report Comment</h4>
				</div>
				<div class="modal-body reason">
					<p>Please select the reason.</p>
					<form method="post" action="{{ route('report-comment') }}">
						<input type="hidden" name="list_id" value="{{ $listing->id }}" />
						<input type="hidden" name="comment_id" value="" id="commentid" />
						<ul>
							<li><input type="radio" name="reason" value="1" /> Reason 1</li>
							<li><input type="radio" name="reason" value="2" /> Reason 2</li>
							<li><input type="radio" name="reason" value="3" /> Reason 3 <br /><input type="text" name="reasontext" class="form-control" /></li>
						</ul>
						<input type="submit" class="btn btn-danger" style="margin: 10px 0px" />
						{{ csrf_field() }}
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

@endsection


@section('css')
	<link href="{{ URL::to('src/assets/plugins/bxslider/jquery.bxslider.css') }}" rel="stylesheet"/>
@endsection

@section('js')

	{{--paceOptions = {--}}
	{{--elements: true--}}
	{{--};--}}

	{{--$('.bxslider').bxSlider({--}}
	{{--pagerCustom: '#bx-pager'--}}
	{{--});--}}


	<script src="{{ URL::to('src/assets/plugins/bxslider/jquery.bxslider.min.js') }}"></script>
	<script type="text/javascript">
		$('.bxslider').bxSlider({
			pagerCustom: '#bx-pager'
		});
	</script>

	<script type="text/javascript">
		jQuery().ready(function () {


			var path = '<?php echo getenv('APP_URL'); ?>';

			$('#setFavorite').click(function (evt) {
				evt.preventDefault();
				var listid = $(this).attr("data-link");
				$.ajax({
					method: 'get',
					url: path + '/setfavorite',
					data: {
						id: listid
					}
				}).done(function (data) {
					$('#setFavorite').hide();
					$('#unsetFavorite').show();
				});
			});
			$('#unsetFavorite').click(function (evt) {
				evt.preventDefault();
				var listid = $(this).attr("data-link");
				$.ajax({
					method: 'get',
					url: path + '/unsetfavorite',
					data: {
						id: listid
					}
				}).done(function (data) {
					$('#unsetFavorite').hide();
					$('#setFavorite').show();
				});
			});

			jQuery("#msgButton").click(function () {
				jQuery("#msgPopup").show();
			});

			$('#myModal').on('shown.bs.modal', function () {
				$('#myInput').focus()
			});

			$('a.commentreport').click(function () {

				var data_id = '';

				if (typeof $(this).data('id') !== 'undefined') {
					data_id = $(this).data('id');
				}
				$('#commentid').val(data_id);
			});

//			jQuery('.ls-modal').on('click', function(e){
//				e.preventDefault();
//				jQuery('#myModal').modal('show').find('.modal-body').load(jQuery(this).attr('href'));
//			});


		});
	</script>


@endsection
