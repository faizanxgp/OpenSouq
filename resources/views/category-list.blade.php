@extends('layouts.main')

@section('content')

	{{--<div class="search-row-wrapper">--}}
		{{--<div class="container ">--}}

		{{--</div>--}}
	{{--</div>--}}
	<!-- /.search-row -->
	<div class="main-container">
		<div class="container">
			<div class="row">
				<!-- this (.mobile-filter-sidebar) part will be position fixed in mobile version -->
				<div class="col-sm-3 page-sidebar mobile-filter-sidebar">
					<aside>
						<div class="inner-box">
							<div class="categories-list  list-filter">

								<h3>Filters:</h3>
								{{--<form method="post" action="{{ route('search') }}">--}}
									{{--<label>Search: </label> <input type="text" name="searchstr" class="form-control" value=""/>--}}

									{{--<label>Category: </label>--}}
									{{--{{ Form::select('category', $subcateg, null, ['class' => 'form-control', 'placeholder' => 'All Categories', 'id' => 'category']) }}--}}

									{{--<label>Location: </label>--}}
									{{--{{ Form::select('city', $city, null, ['class' => 'form-control', 'placeholder' => 'All Locations', 'id' => 'location']) }}--}}

									{{--<label>Price: </label> <input type="text" class="form-control price" maxlength="6" name="price1" value=""/> - <input type="text" class="form-control price" maxlength="6" name="price2" value=""/>--}}


									{{--<label>&nbsp;</label><br/> <input type="submit" class="btn btn-primary" name="submit" value="Search"/>--}}
									{{--{{ csrf_field() }}--}}

								{{--</form>--}}


								{{--<h5 class="list-title"><strong><a href="#">All Categories</a></strong></h5>--}}
								{{--<ul class=" list-unstyled">--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Electronics</span><span--}}
								{{--class="count">&nbsp;8626</span></a>--}}
								{{--</li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Automobiles </span><span--}}
								{{--class="count">&nbsp;123</span></a></li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Property </span><span class="count">&nbsp;742</span></a>--}}
								{{--</li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Services </span><span class="count">&nbsp;8525</span></a>--}}
								{{--</li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">For Sale </span><span class="count">&nbsp;357</span></a>--}}
								{{--</li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Learning </span><span class="count">&nbsp;3576</span></a>--}}
								{{--</li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Jobs </span><span class="count">&nbsp;453</span></a>--}}
								{{--</li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Cars &amp; Vehicles</span><span--}}
								{{--class="count">&nbsp;801</span></a>--}}
								{{--</li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Other</span><span class="count">&nbsp;9803</span></a>--}}
								{{--</li>--}}
								{{--</ul>--}}
							</div>
							<!--/.categories-list-->

						{{--<div class="locations-list  list-filter">--}}
						{{--<h5 class="list-title"><strong><a href="#">Location</a></strong></h5>--}}
						{{--<ul class="browse-list list-unstyled long-list">--}}
						{{--<li><a href="sub-category-sub-location.html"> Atlanta </a></li>--}}
						{{--<li><a href="sub-category-sub-location.html"> Wichita </a></li>--}}
						{{--<li><a href="sub-category-sub-location.html"> Anchorage </a></li>--}}
						{{--<li><a href="sub-category-sub-location.html"> Dallas </a></li>--}}
						{{--<li><a href="sub-category-sub-location.html">New York </a></li>--}}
						{{--<li><a href="sub-category-sub-location.html"> Santa Ana/Anaheim </a></li>--}}
						{{--<li><a href="sub-category-sub-location.html"> Miami </a></li>--}}
						{{--<li><a href="sub-category-sub-location.html"> Virginia Beach </a></li>--}}
						{{--<li class="maxlist-hidden" style="display: none;"><a href="sub-category-sub-location.html"> San Diego </a></li>--}}
						{{--<li class="maxlist-hidden" style="display: none;"><a href="sub-category-sub-location.html"> Boston </a></li>--}}
						{{--<li class="maxlist-hidden" style="display: none;"><a href="sub-category-sub-location.html"> Houston </a></li>--}}
						{{--<li class="maxlist-hidden" style="display: none;"><a href="sub-category-sub-location.html">Salt Lake City </a></li>--}}
						{{--<li class="maxlist-hidden" style="display: none;"><a href="sub-category-sub-location.html"> Other Locations </a></li>--}}
						{{--</ul>--}}
						{{--<p class="maxlist-more"><a href="#">View More (5)</a></p>--}}
						{{--</div>--}}
						{{--<!--/.locations-list-->--}}

						{{--<div class="locations-list  list-filter">--}}
						{{--<h5 class="list-title"><strong><a href="#">Price range</a></strong></h5>--}}

						{{--<form role="form" class="form-inline ">--}}
						{{--<div class="form-group col-sm-4 no-padding">--}}
						{{--<input placeholder="$ 2000 " id="minPrice" class="form-control" type="text">--}}
						{{--</div>--}}
						{{--<div class="form-group col-sm-1 no-padding text-center hidden-xs"> -</div>--}}
						{{--<div class="form-group col-sm-4 no-padding">--}}
						{{--<input placeholder="$ 3000 " id="maxPrice" class="form-control" type="text">--}}
						{{--</div>--}}
						{{--<div class="form-group col-sm-3 no-padding">--}}
						{{--<button class="btn btn-default pull-right btn-block-xs" type="submit">GO--}}
						{{--</button>--}}
						{{--</div>--}}
						{{--</form>--}}
						{{--<div style="clear:both"></div>--}}
						{{--</div>--}}
						{{--<!--/.list-filter-->--}}
						{{--<div class="locations-list  list-filter">--}}
						{{--<h5 class="list-title"><strong><a href="#">Seller</a></strong></h5>--}}
						{{--<ul class="browse-list list-unstyled long-list">--}}
						{{--<li><a href="sub-category-sub-location.html"><strong>All Ads</strong> <span--}}
						{{--class="count">228,705</span></a></li>--}}
						{{--<li><a href="sub-category-sub-location.html">Business <span class="count">28,705</span></a></li>--}}
						{{--<li><a href="sub-category-sub-location.html">Personal <span class="count">18,705</span></a></li>--}}
						{{--</ul>--}}
						{{--</div>--}}
						{{--<!--/.list-filter-->--}}
						{{--<div class="locations-list  list-filter">--}}
						{{--<h5 class="list-title"><strong><a href="#">Condition</a></strong></h5>--}}
						{{--<ul class="browse-list list-unstyled long-list">--}}
						{{--<li><a href="sub-category-sub-location.html">New <span class="count">228,705</span></a>--}}
						{{--</li>--}}
						{{--<li><a href="sub-category-sub-location.html">Used <span class="count">28,705</span></a>--}}
						{{--</li>--}}
						{{--<li><a href="sub-category-sub-location.html">None </a></li>--}}
						{{--</ul>--}}
						{{--</div>--}}
						<!--/.list-filter-->
							<div style="clear:both"></div>
						</div>

						<!--/.categories-list-->
					</aside>
				</div>
				<!--/.page-side-bar-->
				<div class="col-sm-9 page-content col-thin-left">


					<div class="category-list">
						<div class="inner-box">
							<form action="{{ route('search') }}" method="post">
								<h3>Filters:</h3>
								<div class="row">
									<div class="col-md-4">
										<label>Search: </label> <input type="text" name="searchstr" class="form-control"/>
									</div>
									<div class="col-md-4">
										<label>Category: </label>

										<div class="combo-outer" id="combo-box-outer"></div>


										{{--{{ Form::select('category', $subcateg, null, ['class' => 'form-control js-categories', 'placeholder' => 'All Categories', 'id' => 'category']) }}--}}
									</div>
									<div class="col-md-4">
										<label>Location: </label>
										{{ Form::select('city', $city, null, ['class' => 'form-control  js-locations', 'placeholder' => 'All Locations', 'id'=>'location']) }}
									</div>

									<div class="col-md-4">
										<input type="submit" class="btn btn-primary" name="submit" value="Filter"/>{{ csrf_field() }}
									</div>
								</div>
							</form>

						</div>
					</div>

					<div class="tab-box ">

						<!-- Nav tabs -->
						<ul class="nav nav-tabs add-tabs" role="tablist">
							{{--<li class="active"><a href="#allAds" role="tab" data-toggle="tab">All Ads <span--}}
											{{--class="badge"></span></a></li>--}}
						</ul>
						{{--<div class="tab-filter">--}}
							{{--<div class="selecter select-short-by closed" tabindex="0"><select tabindex="-1" class="selectpicker selecter-element" data-style="btn-select" data-width="auto">--}}
									{{--<option value="Short by">Sort by</option>--}}
									{{--<option value="Price: Low to High">Price: Low to High</option>--}}
									{{--<option value="Price: High to Low">Price: High to Low</option>--}}
								{{--</select><span class="selecter-selected">Sort by</span>--}}
								{{--<div class="selecter-options scroller">--}}
									{{--<div style="height: 100px;" class="scroller-bar">--}}
										{{--<div style="height: 100px; margin-bottom: 0px; margin-top: 0px;" class="scroller-track">--}}
											{{--<div style="" class="scroller-handle"></div>--}}
										{{--</div>--}}
									{{--</div>--}}
									{{--<div class="scroller-content">--}}
										{{--<span class="selecter-item selected" data-value="Short by">Sort by</span><span class="selecter-item" data-value="Price: Low to High">Price: Low to High</span><span--}}
												{{--class="selecter-item" data-value="Price: High to Low">Price: High to Low</span></div>--}}
								{{--</div>--}}
							{{--</div>--}}
						{{--</div>--}}
					</div>
					<!--/.tab-box-->

					{{--<div class="listing-filter">--}}
						{{--<div class="pull-left col-xs-6">--}}
							{{--<div class="breadcrumb-list"><a href="#" class="current"> <span>All ads</span></a> in--}}
							{{--<!-- cityName will replace with selected location/area from location modal -->--}}
							{{--<span class="cityName"> New York </span> <a href="#selectRegion" id="dropdownMenu1" data-toggle="modal">--}}
							{{--<span class="caret"></span> </a></div>--}}
						{{--</div>--}}
						{{--<div class="pull-right col-xs-6 text-right listing-view-action"><span class="list-view active"><i--}}
										{{--class="  icon-th"></i></span> <span class="compact-view"><i class=" icon-th-list  "></i></span> <span class="grid-view "><i class=" icon-th-large "></i></span></div>--}}
						{{--<div style="clear:both"></div>--}}
					{{--</div>--}}
					<!--/.listing-filter-->

					<!-- Mobile Filter bar-->
					<div class="mobile-filter-bar col-lg-12  ">
						<ul class="list-unstyled list-inline no-margin no-padding">
							<li class="filter-toggle">
								<a class=""> <i class="  icon-th-list"></i> Filters </a>
							</li>
							<li>


								<div class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle"><i class="caret "></i> Sort by </a>
									<ul class="dropdown-menu">
										<li><a href="" rel="nofollow">Relevance</a></li>
										<li><a href="" rel="nofollow">Date</a></li>
										<li><a href="" rel="nofollow">Company</a></li>
									</ul>
								</div>

							</li>
						</ul>
					</div>
					<div class="menu-overly-mask"></div>
					<!-- Mobile Filter bar End-->


					<div class="adds-wrapper">
						<div class="col-md-3">
							<ul id="categories">
								@foreach($categories as $categ)
									<li>
										<div id="cat{{ $categ->id }}" class="category">{{ $categ->category }} </div>
									</li>
								@endforeach
							</ul>
						</div>
						<div class="col-md-9">
							<div id="details">
								@foreach($subcategories as $subcateg)
									<div class="details_cat{{ $subcateg->category_id }}">
										<a href="{{ route('subcategory', [$subcateg->id, $subcateg->sub_category]) }}"><i class="fa {{ $subcateg->image }}"></i>{{ $subcateg->sub_category }}</a>
									</div>
								@endforeach
							</div>
						</div>
					</div>

					<!--/.adds-wrapper-->

					<div class="tab-box  save-search-bar text-center"><a href=""> <i class=" icon-star-empty"></i> Save Search </a></div>

					<div class="pagination-bar text-center">
						<ul class="pagination">
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"> ...</a></li>
							<li><a class="pagination-btn" href="#">Next »</a></li>
						</ul>
					</div>
					<!--/.pagination-bar -->

					<div class="post-promo text-center">
						<h2> Do you get anything for sell ? </h2>
						<h5>Sell your products online FOR FREE. It's easier than you think !</h5>
						<a href="{{ route('post-ads') }}" class="btn btn-lg btn-border btn-post btn-danger">Post a Free Ad </a>
					</div>
					<!--/.post-promo-->
				</div><!--/.page-content-->
			</div>
			<!--/.row-->

		</div><!--/.container-->

	</div>
	<!-- /.main-container -->

@endsection

@section('js')
	<script>
		$(document).ready(function () {

			var selected = 'cat' + {{ $selected or 0 }} ;
			// first screen
			$("#details div").hide();
			console.log(selected);
			//console.log(".details_" + selected);
			$( '#' + selected ).parent().addClass('selected');
			$(".details_" + selected).show();

			$('.category').click(function () {
				var clicked = $(this).attr('id');
				//console.log(clicked);

				$("#categories li").removeClass('selected');

				$("#details div").hide();

				//var element = ".secret_" + id;
				//$(element).show();
				$( this ).parent().addClass('selected');

				$(".details_" + clicked).show();
			});

		});
	</script>
@endsection

@section('js2')
	<script type="text/javascript">

		$(document).ready(function(){

			var json = {!! $json_combo !!};

			var htmlstr = '';
			htmlstr += 		'<input type="hidden" data-cat-value="Main Cat" id="combo-main-cat" name="mcategory" value="{{ $searchdata['mcategoryid'] or 0}}">';
			htmlstr += 		'<input type="hidden" data-cat-sub-value="Sub cat" id="combo-sub-cat" name="{{ $searchdata['categoryid'] or 0 }}" value="0">';
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