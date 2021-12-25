@extends('layouts.main')

@section('content')

	{{--<div class="search-row-wrapper">--}}
		{{--<div class="container">--}}
			{{--<form action="{{ route('search') }}" method="post">--}}
			{{--<div class="col-sm-3">--}}
			{{--<input class="form-control keyword" placeholder="e.g. Mobile Sale" type="text" name="searchstr">--}}
			{{--</div>--}}
			{{--<div class="col-sm-3">--}}
			{{--<div class="selecter  closed" tabindex="0">--}}




			{{--<select tabindex="-1" class="form-control selecter selecter-element" name="category" id="search-category"><option value="" class="selecter-placeholder" selected="">Select An Item</option>--}}
			{{--<option selected="selected" value="">All Categories</option>--}}
			{{--<option value="Vehicles" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled">--}}
			{{--- Vehicles ---}}
			{{--</option>--}}
			{{--<option value="Cars"> Cars</option>--}}
			{{--<option value="Commercial vehicles"> Commercial vehicles</option>--}}
			{{--<option value="Motorcycles"> Motorcycles</option>--}}
			{{--<option value="Motorcycle Equipment"> Car &amp; Motorcycle Equipment</option>--}}
			{{--<option value="Boats"> Boats</option>--}}
			{{--<option value="Vehicles"> Other Vehicles</option>--}}
			{{--<option value="House" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> ---}}
			{{--House and Children ---}}
			{{--</option>--}}
			{{--<option value="Appliances"> Appliances</option>--}}
			{{--<option value="Inside"> Inside</option>--}}
			{{--<option value="Games"> Games and Clothing</option>--}}
			{{--<option value="Garden"> Garden</option>--}}
			{{--<option value="Multimedia" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> - Multimedia ---}}
			{{--</option>--}}
			{{--<option value="Telephony"> Telephony</option>--}}
			{{--<option value="Image"> Image and sound</option>--}}
			{{--<option value="Computers"> Computers and Accessories</option>--}}
			{{--<option value="Video"> Video games and consoles</option>--}}
			{{--<option value="Real" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> ---}}
			{{--Real Estate ---}}
			{{--</option>--}}
			{{--<option value="Apartment"> Apartment</option>--}}
			{{--<option value="Home"> Home</option>--}}
			{{--<option value="Vacation"> Vacation Rentals</option>--}}
			{{--<option value="Commercial"> Commercial offices and local</option>--}}
			{{--<option value="Grounds"> Grounds</option>--}}
			{{--<option value="Houseshares"> Houseshares</option>--}}
			{{--<option value="Other real estate"> Other real estate</option>--}}
			{{--<option value="Services" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled">--}}
			{{--- Services ---}}
			{{--</option>--}}
			{{--<option value="Jobs"> Jobs</option>--}}
			{{--<option value="Job application"> Job application</option>--}}
			{{--<option value="Services"> Services</option>--}}
			{{--<option value="Price"> Price</option>--}}
			{{--<option value="Business"> Business and goodwill</option>--}}
			{{--<option value="Professional"> Professional equipment</option>--}}
			{{--<option value="dropoff" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled">--}}
			{{--- Extra ---}}
			{{--</option>--}}
			{{--<option value="Other"> Other</option>--}}
			{{--</select>--}}

			{{--{{ Form::select('category', $subcateg, null, ['class' => 'form-control', 'placeholder' => 'All Categories']) }}--}}


			{{--<span class="selecter-selected">All Categories</span><div class="selecter-options scroller"><div style="height: 100px;" class="scroller-bar"><div style="height: 100px; margin-bottom: 0px; margin-top: 0px;" class="scroller-track"><div style="" class="scroller-handle"></div></div></div><div class="scroller-content"><span class="selecter-item placeholder" data-value="">Select An Item</span><span class="selecter-item selected" data-value="">All Categories</span><span class="selecter-item disabled" data-value="Vehicles">--}}
			{{--- Vehicles ---}}
			{{--</span><span class="selecter-item" data-value="Cars"> Cars</span><span class="selecter-item" data-value="Commercial vehicles"> Commercial vehicles</span><span class="selecter-item" data-value="Motorcycles"> Motorcycles</span><span class="selecter-item" data-value="Motorcycle Equipment"> Car &amp; Motorcycle Equipment</span><span class="selecter-item" data-value="Boats"> Boats</span><span class="selecter-item" data-value="Vehicles"> Other Vehicles</span><span class="selecter-item disabled" data-value="House"> ---}}
			{{--House and Children ---}}
			{{--</span><span class="selecter-item" data-value="Appliances"> Appliances</span><span class="selecter-item" data-value="Inside"> Inside</span><span class="selecter-item" data-value="Games"> Games and Clothing</span><span class="selecter-item" data-value="Garden"> Garden</span><span class="selecter-item disabled" data-value="Multimedia"> - Multimedia ---}}
			{{--</span><span class="selecter-item" data-value="Telephony"> Telephony</span><span class="selecter-item" data-value="Image"> Image and sound</span><span class="selecter-item" data-value="Computers"> Computers and Accessories</span><span class="selecter-item" data-value="Video"> Video games and consoles</span><span class="selecter-item disabled" data-value="Real"> ---}}
			{{--Real Estate ---}}
			{{--</span><span class="selecter-item" data-value="Apartment"> Apartment</span><span class="selecter-item" data-value="Home"> Home</span><span class="selecter-item" data-value="Vacation"> Vacation Rentals</span><span class="selecter-item" data-value="Commercial"> Commercial offices and local</span><span class="selecter-item" data-value="Grounds"> Grounds</span><span class="selecter-item" data-value="Houseshares"> Houseshares</span><span class="selecter-item" data-value="Other real estate"> Other real estate</span><span class="selecter-item disabled" data-value="Services">--}}
			{{--- Services ---}}
			{{--</span><span class="selecter-item" data-value="Jobs"> Jobs</span><span class="selecter-item" data-value="Job application"> Job application</span><span class="selecter-item" data-value="Services"> Services</span><span class="selecter-item" data-value="Price"> Price</span><span class="selecter-item" data-value="Business"> Business and goodwill</span><span class="selecter-item" data-value="Professional"> Professional equipment</span><span class="selecter-item disabled" data-value="dropoff">--}}
			{{--- Extra ---}}
			{{--</span><span class="selecter-item" data-value="Other"> Other</span></div></div>--}}


			{{--</div>--}}
			{{--</div>--}}
			{{--<div class="col-sm-3">--}}
			{{--<div class="selecter closed" tabindex="0">--}}
			{{--{{ Form::select('city', $city, null, ['class' => 'form-control', 'placeholder' => 'All Locations']) }}--}}

			{{--<select tabindex="-1" class="form-control selecter selecter-element" name="location" id="id-location"><option value="" class="selecter-placeholder" selected="">Select An Item</option>--}}
			{{--<option selected="selected" value="">All Locations</option>--}}
			{{--<option value="AL">Alabama</option>--}}
			{{--<option value="AK">Alaska</option>--}}
			{{--<option value="AZ">Arizona</option>--}}
			{{--<option value="AR">Arkansas</option>--}}
			{{--<option value="CA">California</option>--}}
			{{--<option value="CO">Colorado</option>--}}
			{{--<option value="CT">Connecticut</option>--}}
			{{--<option value="DE">Delaware</option>--}}
			{{--<option value="DC">District Of Columbia</option>--}}
			{{--<option value="FL">Florida</option>--}}
			{{--<option value="GA">Georgia</option>--}}
			{{--<option value="HI">Hawaii</option>--}}
			{{--<option value="ID">Idaho</option>--}}
			{{--<option value="IL">Illinois</option>--}}
			{{--<option value="IN">Indiana</option>--}}
			{{--<option value="IA">Iowa</option>--}}
			{{--<option value="KS">Kansas</option>--}}
			{{--<option value="KY">Kentucky</option>--}}
			{{--<option value="LA">Louisiana</option>--}}
			{{--<option value="ME">Maine</option>--}}
			{{--<option value="MD">Maryland</option>--}}
			{{--<option value="MA">Massachusetts</option>--}}
			{{--<option value="MI">Michigan</option>--}}
			{{--<option value="MN">Minnesota</option>--}}
			{{--<option value="MS">Mississippi</option>--}}
			{{--<option value="MO">Missouri</option>--}}
			{{--<option value="MT">Montana</option>--}}
			{{--<option value="NE">Nebraska</option>--}}
			{{--<option value="NV">Nevada</option>--}}
			{{--<option value="NH">New Hampshire</option>--}}
			{{--<option value="NJ">New Jersey</option>--}}
			{{--<option value="NM">New Mexico</option>--}}
			{{--<option value="NY">New York</option>--}}
			{{--<option value="NC">North Carolina</option>--}}
			{{--<option value="ND">North Dakota</option>--}}
			{{--<option value="OH">Ohio</option>--}}
			{{--<option value="OK">Oklahoma</option>--}}
			{{--<option value="OR">Oregon</option>--}}
			{{--<option value="PA">Pennsylvania</option>--}}
			{{--<option value="RI">Rhode Island</option>--}}
			{{--<option value="SC">South Carolina</option>--}}
			{{--<option value="SD">South Dakota</option>--}}
			{{--<option value="TN">Tennessee</option>--}}
			{{--<option value="TX">Texas</option>--}}
			{{--<option value="UT">Utah</option>--}}
			{{--<option value="VT">Vermont</option>--}}
			{{--<option value="VA">Virginia</option>--}}
			{{--<option value="WA">Washington</option>--}}
			{{--<option value="WV">West Virginia</option>--}}
			{{--<option value="WI">Wisconsin</option>--}}
			{{--<option value="WY">Wyoming</option>--}}
			{{--<option value="Other-Locations">Other Locations</option>--}}
			{{--</select> --}}
			{{--<span class="selecter-selected">All Locations</span><div class="selecter-options scroller"><div style="height: 100px;" class="scroller-bar"><div style="height: 100px; margin-bottom: 0px; margin-top: 0px;" class="scroller-track"><div style="" class="scroller-handle"></div></div></div><div class="scroller-content"><span class="selecter-item placeholder" data-value="">Select An Item</span><span class="selecter-item selected" data-value="">All Locations</span><span class="selecter-item" data-value="AL">Alabama</span><span class="selecter-item" data-value="AK">Alaska</span><span class="selecter-item" data-value="AZ">Arizona</span><span class="selecter-item" data-value="AR">Arkansas</span><span class="selecter-item" data-value="CA">California</span><span class="selecter-item" data-value="CO">Colorado</span><span class="selecter-item" data-value="CT">Connecticut</span><span class="selecter-item" data-value="DE">Delaware</span><span class="selecter-item" data-value="DC">District Of Columbia</span><span class="selecter-item" data-value="FL">Florida</span><span class="selecter-item" data-value="GA">Georgia</span><span class="selecter-item" data-value="HI">Hawaii</span><span class="selecter-item" data-value="ID">Idaho</span><span class="selecter-item" data-value="IL">Illinois</span><span class="selecter-item" data-value="IN">Indiana</span><span class="selecter-item" data-value="IA">Iowa</span><span class="selecter-item" data-value="KS">Kansas</span><span class="selecter-item" data-value="KY">Kentucky</span><span class="selecter-item" data-value="LA">Louisiana</span><span class="selecter-item" data-value="ME">Maine</span><span class="selecter-item" data-value="MD">Maryland</span><span class="selecter-item" data-value="MA">Massachusetts</span><span class="selecter-item" data-value="MI">Michigan</span><span class="selecter-item" data-value="MN">Minnesota</span><span class="selecter-item" data-value="MS">Mississippi</span><span class="selecter-item" data-value="MO">Missouri</span><span class="selecter-item" data-value="MT">Montana</span><span class="selecter-item" data-value="NE">Nebraska</span><span class="selecter-item" data-value="NV">Nevada</span><span class="selecter-item" data-value="NH">New Hampshire</span><span class="selecter-item" data-value="NJ">New Jersey</span><span class="selecter-item" data-value="NM">New Mexico</span><span class="selecter-item" data-value="NY">New York</span><span class="selecter-item" data-value="NC">North Carolina</span><span class="selecter-item" data-value="ND">North Dakota</span><span class="selecter-item" data-value="OH">Ohio</span><span class="selecter-item" data-value="OK">Oklahoma</span><span class="selecter-item" data-value="OR">Oregon</span><span class="selecter-item" data-value="PA">Pennsylvania</span><span class="selecter-item" data-value="RI">Rhode Island</span><span class="selecter-item" data-value="SC">South Carolina</span><span class="selecter-item" data-value="SD">South Dakota</span><span class="selecter-item" data-value="TN">Tennessee</span><span class="selecter-item" data-value="TX">Texas</span><span class="selecter-item" data-value="UT">Utah</span><span class="selecter-item" data-value="VT">Vermont</span><span class="selecter-item" data-value="VA">Virginia</span><span class="selecter-item" data-value="WA">Washington</span><span class="selecter-item" data-value="WV">West Virginia</span><span class="selecter-item" data-value="WI">Wisconsin</span><span class="selecter-item" data-value="WY">Wyoming</span><span class="selecter-item" data-value="Other-Locations">Other Locations</span></div></div>--}}

			{{--</div>--}}
			{{--</div>--}}
			{{--<div class="col-sm-3">--}}
			{{--<button class="btn btn-block btn-primary  "><i class="fa fa-search"></i></button>--}}
			{{--{{ csrf_field() }}--}}
			{{--</div>--}}
			{{--</form>--}}
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
							<div class="categories-list list-filter">

								{{--<form action="{{ route('search') }}" method="post">--}}
									{{--<h3>Filters:</h3>--}}

									{{--<label>Search: </label> <input type="text" name="searchstr" class="form-control"/>--}}

									{{--<label>Category: </label>--}}
									{{--{{ Form::select('category', $subcateg, null, ['class' => 'form-control js-categories', 'placeholder' => 'All Categories', 'id' => 'category']) }}--}}

									{{--<label>Location: </label>--}}
									{{--{{ Form::select('city', $city, null, ['class' => 'form-control  js-locations', 'placeholder' => 'All Locations', 'id'=>'location']) }}--}}

									{{--<label>Price: </label> <input type="text" class="form-control price" name="price1" maxlength="6" placeholder="From"/> - <input type="text" class="form-control price" name="price2" maxlength="6" placeholder="Up to"/>--}}

									{{--<input type="submit" class="btn btn-primary" name="submit" value="Filter"/>{{ csrf_field() }}--}}

								{{--</form>--}}
								<h3>Sub-Categories:</h3>
								<ul>
									@foreach($subcateg2 as $key=>$value)
										<li><a href="../subcategory/{{ $key }}">{{ $value  }}</a></li>
									@endforeach
								</ul>


								{{--<h5 class="list-title"><strong><a href="#">All Categories</a></strong></h5>--}}
								{{--<ul class=" list-unstyled">--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Electronics</span><span class="count">&nbsp;8626</span></a>--}}
								{{--</li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Automobiles </span><span class="count">&nbsp;123</span></a></li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Property </span><span class="count">&nbsp;742</span></a></li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Services </span><span class="count">&nbsp;8525</span></a></li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">For Sale </span><span class="count">&nbsp;357</span></a></li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Learning </span><span class="count">&nbsp;3576</span></a></li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Jobs </span><span class="count">&nbsp;453</span></a></li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Cars &amp; Vehicles</span><span class="count">&nbsp;801</span></a>--}}
								{{--</li>--}}
								{{--<li><a href="sub-category-sub-location.html"><span class="title">Other</span><span class="count">&nbsp;9803</span></a></li>--}}
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
						{{--</ul><p class="maxlist-more"><a href="#">View More (5)</a></p>--}}
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
						{{--<li><a href="sub-category-sub-location.html"><strong>All Ads</strong> <span class="count">88,705</span></a></li>--}}
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
									<label>Price: </label><br /> <input type="text" class="form-control price" name="price1" maxlength="6" placeholder="From"/> - <input type="text" class="form-control price" name="price2" maxlength="6" placeholder="Up to"/>
								</div>
								<div class="col-md-4">
									<input type="submit" class="btn btn-primary" name="submit" value="Filter"/>{{ csrf_field() }}
								</div>
							</div>
							</form>
							<div class="sub-categories">
							<h3>Sub-Categories:</h3>
							<ul>
							@foreach($subcateg2 as $key=>$value)
								<li><a href="../subcategory/{{ $key }}">{{ $value  }}</a></li>
							@endforeach
							</ul>
							</div>
						</div>
					</div>





					<div class="tab-box ">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs add-tabs" role="tablist">
							<li class="active"><a href="#allAds" role="tab" data-toggle="tab">All Ads <span class="badge">{{ $listings->total() }}</span></a></li>
						</ul>
						<div class="tab-filter">
							<div class="selecter select-short-by closed" tabindex="0"><select tabindex="-1" class="selectpicker selecter-element" data-style="btn-select" data-width="auto">
									<option value="Short by">Sort by</option>
									<option value="Price: Low to High">Price: Low to High</option>
									<option value="Price: High to Low">Price: High to Low</option>
								</select><span class="selecter-selected">Sort by</span>
								<div class="selecter-options scroller">
									<div style="height: 100px;" class="scroller-bar">
										<div style="height: 100px; margin-bottom: 0px; margin-top: 0px;" class="scroller-track">
											<div style="" class="scroller-handle"></div>
										</div>
									</div>
									<div class="scroller-content"><span class="selecter-item selected" data-value="Short by">Sort by</span><span class="selecter-item" data-value="Price: Low to High">Price: Low to High</span><span class="selecter-item"
												data-value="Price: High to Low">Price: High to Low</span></div>
								</div>
							</div>
						</div>
					</div>
					<!--/.tab-box-->

					<div class="listing-filter">
						<div class="pull-left col-xs-6">
							{{--<div class="breadcrumb-list"><a href="#" class="current"> <span>All ads</span></a> in--}}
							{{--<!-- cityName will replace with selected location/area from location modal -->--}}
							{{--<span class="cityName"> New York </span> <a href="#selectRegion" id="dropdownMenu1" data-toggle="modal"> <span class="caret"></span> </a></div>--}}
						</div>
						<div class="pull-right col-xs-6 text-right listing-view-action"><span class="list-view active"><i class="  icon-th"></i></span> <span class="compact-view"><i class=" icon-th-list  "></i></span> <span class="grid-view "><i
										class=" icon-th-large "></i></span></div>
						<div style="clear:both"></div>
					</div>
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
						@foreach($listings as $row)
							<div class="item-list">


								<div class="col-sm-2 no-padding photobox">

									<?php if (isset($row->photo->first()->photo)) {
										$p = 'uploads/ads/' . $row->photo->first()->photo;
									} else {
										$p = 'src/images/product-thumb-default.jpg';
									} ?>

									<div class="add-image"><span class="photo-count"><i class="fa fa-camera"></i> {{ $row->photo->count() }} </span><a href="{{ route('ad', [$row->id, $row->title]) }}"><img alt="img" src="{{ URL::to($p) }}"
													class="thumbnail no-margin img-responsive"> </a>
									</div>
								</div>
								<!--/.photobox-->

								<div class="col-sm-7 add-desc-box">
									<div class="add-details">
										<h5 class="add-title"><a href="{{ route('ad', [$row->id, $row->title]) }}">
												{{ $row->title }} </a></h5>

										<?php

										// return 1 if true
										if ($user != null) {
											$isFavorite = isset($row->favorite->where('user_id', $user->id)->first()->user_id);
										} else {
											$isFavorite = false;
										}
										?>


										<span class="info-row"> @if($row->user->user_type == 1)
												<span data-original-title="Individual Ad" class="add-type business-ads tooltipHere" data-toggle="tooltip" data-placement="right" title="">I </span>
											@else
												<span data-original-title="Business Ad" class="add-type business-ads tooltipHere" data-toggle="tooltip" data-placement="right" title="">B </span>
											@endif <span class="date"><i
														class=" icon-clock"> </i> {{ date('M d, Y H:i', strtotime($row->created_at)) }} </span> - <span class="category">{{ $row->subcategory->sub_category }} </span>- <span class="item-location"><i
														class="fa fa-map-marker"></i> {{ $row->city->city }} </span> </span>
									</div>
								</div>


								<!--/.add-desc-box-->
								<div id="row-{{ $row->id }}" class="col-sm-3 text-right price-box">
									<h2 class="item-price"> JD {{ $row->price }} </h2>
									{{--<a class="btn btn-danger  btn-sm make-favorite"> <i class="fa fa-certificate"></i> <span>Top Ads</span> </a>--}}

									<button data-link="{{ $row->id }}" class="btn btn-danger btn-sm mark-favorite" @if($isFavorite) style="display:none;" @endif><i class="fa fa-heart"></i> <span> Favorite </span></button>
									<button data-link="{{ $row->id }}" class="btn btn-default btn-sm unmark-favorite" @if(!$isFavorite) style="display:none;" @endif><i class="fa fa-heart-o"></i> <span> Remove</span></button>
								</div>
								<!--/.add-desc-box-->
							</div>
							<!--/.item-list-->
						@endforeach
						{{--<div class="item-list">--}}
						{{--<div class="cornerRibbons featuredAds">--}}
						{{--<a href="#"> Featured Ads</a>--}}
						{{--</div>--}}

						{{--<div class="col-sm-2 no-padding photobox">--}}
						{{--<div class="add-image"><span class="photo-count"><i class="fa fa-camera"></i> 2 </span> <a href="ads-details.html"><img class="thumbnail no-margin" src="images/item/tp/Image00008.jpg" alt="img"></a></div>--}}
						{{--</div>--}}
						{{--<!--/.photobox-->--}}
						{{--<div class="col-sm-7 add-desc-box">--}}
						{{--<div class="add-details">--}}
						{{--<h5 class="add-title"><a href="ads-details.html">--}}
						{{--Sony Xperia dual sim 100% brand new </a></h5>--}}
						{{--<span class="info-row"> <span data-original-title="Business Ads" class="add-type business-ads tooltipHere" data-toggle="tooltip" data-placement="right" title="">B </span> <span class="date"><i class=" icon-clock"> </i> Today 1:21 pm </span> - <span class="category">Electronics </span>- <span class="item-location"><i class="fa fa-map-marker"></i> New York </span> </span></div>--}}
						{{--</div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--<div class="col-sm-3 text-right  price-box">--}}
						{{--<h2 class="item-price"> $ 250 </h2>--}}
						{{--<a class="btn btn-danger  btn-sm make-favorite"> <i class="fa fa-certificate"></i>--}}
						{{--<span>Featured Ads</span> </a> <a class="btn btn-default  btn-sm make-favorite">--}}
						{{--<i class="fa fa-heart"></i> <span>Save</span> </a></div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--</div>--}}

						{{--<div class="item-list">--}}
						{{--<div class="cornerRibbons urgentAds">--}}
						{{--<a href="#"> Urgent</a>--}}
						{{--</div>--}}
						{{--<div class="col-sm-2 no-padding photobox">--}}
						{{--<div class="add-image"><span class="photo-count"><i class="fa fa-camera"></i> 2 </span> <a href="ads-details.html"><img class="thumbnail no-margin" src="images/item/FreeGreatPicture.com-46404-google-drops-nexus-4-by-100-offers-15-day-price-protection-refund.jpg" alt="img"></a></div>--}}
						{{--</div>--}}
						{{--<!--/.photobox-->--}}
						{{--<div class="col-sm-7 add-desc-box">--}}
						{{--<div class="add-details">--}}
						{{--<h5 class="add-title"><a href="ads-details.html"> Google drops Nexus 4 </a></h5>--}}
						{{--<span class="info-row"> <span data-original-title="Business Ads" class="add-type business-ads tooltipHere" data-toggle="tooltip" data-placement="right" title="">B </span> <span class="date"><i class=" icon-clock"> </i> Today 1:21 pm </span> - <span class="category">Electronics </span>- <span class="item-location"><i class="fa fa-map-marker"></i> New York </span> </span></div>--}}
						{{--</div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--<div class="col-sm-3 text-right  price-box">--}}
						{{--<h2 class="item-price"> $ 150 </h2>--}}
						{{--<a class="btn btn-danger  btn-sm make-favorite"> <i class="fa fa-certificate"></i>--}}
						{{--<span>Urgent</span> </a>--}}
						{{--<a class="btn btn-default  btn-sm make-favorite"> <i class="fa fa-heart"></i> <span>Save</span>--}}
						{{--</a></div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--</div>--}}
						{{--<!--/.item-list-->--}}

						{{--<!--/.item-list-->--}}
						{{--<div class="item-list">--}}

						{{--<div class="col-sm-2 no-padding photobox">--}}
						{{--<div class="add-image"><span class="photo-count"><i class="fa fa-camera"></i> 2 </span> <a href="ads-details.html"><img class="thumbnail no-margin" src="images/item/tp/Image00014.jpg" alt="img"></a></div>--}}
						{{--</div>--}}
						{{--<!--/.photobox-->--}}
						{{--<div class="col-sm-7 add-desc-box">--}}
						{{--<div class="add-details">--}}
						{{--<h5 class="add-title"><a href="ads-details.html"> Samsung Galaxy S Dous (Brand--}}
						{{--New/ Intact Box) With 1year Warranty </a></h5>--}}
						{{--<span class="info-row"> <span data-original-title="Business Ads" class="add-type business-ads tooltipHere" data-toggle="tooltip" data-placement="right" title="">B </span> <span class="date"><i class=" icon-clock"> </i> Today 1:21 pm </span> - <span class="category">Electronics </span>- <span class="item-location"><i class="fa fa-map-marker"></i> New York </span> </span></div>--}}
						{{--</div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--<div class="col-sm-3 text-right  price-box">--}}
						{{--<h2 class="item-price"> $ 230</h2>--}}
						{{--<a class="btn btn-default  btn-sm make-favorite"> <i class="fa fa-heart"></i> <span>Save</span>--}}
						{{--</a></div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--</div>--}}
						{{--<!--/.item-list-->--}}
						{{--<div class="item-list">--}}
						{{--<div class="col-sm-2 no-padding photobox">--}}
						{{--<div class="add-image"><span class="photo-count"><i class="fa fa-camera"></i> 2 </span> <a href="ads-details.html"><img class="thumbnail no-margin" src="images/item/tp/Image00003.jpg" alt="img"></a></div>--}}
						{{--</div>--}}
						{{--<!--/.photobox-->--}}
						{{--<div class="col-sm-7 add-desc-box">--}}
						{{--<div class="add-details">--}}
						{{--<h5 class="add-title"><a href="ads-details.html"> MSI GE70 Apache Pro-061 17.3"--}}
						{{--Core i5-4200H/8GB DDR3/NV GTX860M Gaming Laptop </a></h5>--}}
						{{--<span class="info-row"> <span data-original-title="Business Ads" class="add-type business-ads tooltipHere" data-toggle="tooltip" data-placement="right" title="">B </span> <span class="date"><i class=" icon-clock"> </i> Today 1:21 pm </span> - <span class="category">Electronics </span>- <span class="item-location"><i class="fa fa-map-marker"></i> New York </span> </span></div>--}}
						{{--</div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--<div class="col-sm-3 text-right  price-box">--}}
						{{--<h2 class="item-price"> $ 400 </h2>--}}
						{{--<a class="btn btn-default  btn-sm make-favorite"> <i class="fa fa-heart"></i> <span>Save</span>--}}
						{{--</a></div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--</div>--}}
						{{--<!--/.item-list-->--}}
						{{--<div class="item-list">--}}
						{{--<div class="col-sm-2 no-padding photobox">--}}
						{{--<div class="add-image"><span class="photo-count"><i class="fa fa-camera"></i> 2 </span> <a href="ads-details.html"><img class="thumbnail no-margin" src="images/item/tp/Image00022.jpg" alt="img"></a></div>--}}
						{{--</div>--}}
						{{--<!--/.photobox-->--}}
						{{--<div class="col-sm-7 add-desc-box">--}}
						{{--<div class="add-details">--}}
						{{--<h5 class="add-title"><a href="ads-details.html"> Apple iPod touch 16 GB 3rd--}}
						{{--Generation </a></h5>--}}
						{{--<span class="info-row"> <span data-original-title="Business Ads" class="add-type business-ads tooltipHere" data-toggle="tooltip" data-placement="right" title="">B </span> <span class="date"><i class=" icon-clock"> </i> Today 1:21 pm </span> - <span class="category">Electronics </span>- <span class="item-location"><i class="fa fa-map-marker"></i> New York </span> </span></div>--}}
						{{--</div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--<div class="col-sm-3 text-right  price-box">--}}
						{{--<h2 class="item-price"> $ 150 </h2>--}}
						{{--<a class="btn btn-default  btn-sm make-favorite"> <i class="fa fa-heart"></i> <span>Save</span>--}}
						{{--</a></div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--</div>--}}
						{{--<!--/.item-list-->--}}
						{{--<div class="item-list">--}}
						{{--<div class="col-sm-2 no-padding photobox">--}}
						{{--<div class="add-image"><span class="photo-count"><i class="fa fa-camera"></i> 2 </span> <a href="ads-details.html"><img class="thumbnail no-margin" src="images/item/FreeGreatPicture.com-46405-google-drops-price-of-nexus-4-smartphone.jpg" alt="img"></a></div>--}}
						{{--</div>--}}
						{{--<!--/.photobox-->--}}
						{{--<div class="col-sm-7 add-desc-box">--}}
						{{--<div class="add-details">--}}
						{{--<h5 class="add-title"><a href="ads-details.html"> Google drops Nexus 4 by $100,--}}
						{{--offers 15 day price protection refund </a></h5>--}}
						{{--<span class="info-row"> <span data-original-title="Business Ads" class="add-type business-ads tooltipHere" data-toggle="tooltip" data-placement="right" title="">B </span> <span class="date"><i class=" icon-clock"> </i> Today 1:21 pm </span> - <span class="category">Electronics </span>- <span class="item-location"><i class="fa fa-map-marker"></i> New York </span> </span></div>--}}
						{{--</div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--<div class="col-sm-3 text-right  price-box">--}}
						{{--<h2 class="item-price"> $ 150 </h2>--}}
						{{--<a class="btn btn-default  btn-sm make-favorite"> <i class="fa fa-heart"></i> <span>Save</span>--}}
						{{--</a></div>--}}
						{{--<!--/.add-desc-box-->--}}
						{{--</div>--}}
						{{--<!--/.item-list-->--}}


					</div>
					<!--/.adds-wrapper-->

					<div class="tab-box  save-search-bar text-center"><a href=""> <i class=" icon-star-empty"></i> Save Search </a></div>
					{{--</div>--}}
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

				</div>
				<!--/.page-content-->

			</div>
		</div>
	</div>
	<!-- /.main-container -->

@endsection

@section('js')

	{{--paceOptions = {--}}
	{{--elements: true--}}
	{{--};--}}

	{{--$('.bxslider').bxSlider({--}}
	{{--pagerCustom: '#bx-pager'--}}
	{{--});--}}



	<script type="text/javascript">
		jQuery().ready(function () {


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