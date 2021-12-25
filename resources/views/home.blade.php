@extends('layouts.main')

@section('content')
<div class="intro" style="background-image: url(images/bg3.jpg') }});">
    <div class="dtable hw100">
        <div class="dtable-cell hw100">
            <div class="container text-center">
                <h1 class="intro-title animated fadeInDown"> Find Classified Ads </h1>

                <p class="sub animateme fittext3 animated fadeIn"> Find local classified ads on SooqAliBaba in
                    Minutes </p>

                <div class="row search-row animated fadeInUp">
					<form method="post" action="{{ route('search') }}">
						<div class="col-lg-3 col-sm-3 search-col relative locationicon">

							<i class="icon-location-2 icon-append"></i>
							{{ Form::select('city', $city, null, ['class' => 'form-control', 'placeholder' => 'All Locations', 'id' => 'location']) }}

						</div>
						<div class="col-lg-3 col-sm-3 search-col relative locationicon">
							{{--<i class="icon-location-2 icon-append"></i>--}}
							<div class="combo-outer" id="combo-box-outer"></div>
							{{--{{ Form::select('category', $subcateg, null, ['class' => 'form-control', 'placeholder' => 'All Categories', 'id' => 'category']) }}--}}

						</div>
						<div class="col-lg-5 col-sm-5 search-col relative"><i class="icon-docs icon-append"></i>
							<input type="text" name="searchstr" class="form-control has-icon"
									placeholder="I'm looking for a ..." value="">
						</div>
						<div class="col-lg-1 col-sm-1 search-col">
							<button type="submit" class="btn btn-primary btn-search btn-block"><i
										class="icon-search"></i><strong></strong></button>
							{{ csrf_field() }}
						</div>
					</form>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- /.intro -->
<div class="container">

</div>
<div class="main-container">
    <div class="container">

        <div class="col-lg-12 content-box ">
            <div class="row row-featured row-featured-category">
                <div class="col-lg-12  box-title no-border">
                    <div class="inner"><h2><span>Browse by</span>
                        Category <a href="#" class="sell-your-item"> View more <i
                                class="  icon-th-list"></i> </a></h2>
                    </div>
                </div>


				<div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
					<a href="categories-list/1"><img src="{{ URL::to('src/images/category/cars-categ.png') }}" class="img-responsive" alt="img"> <h6> Cars </h6></a>
				</div>


                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
                    <a href="categories-list/2"><img src="{{ URL::to('src/images/category/mobiles-categ.png') }}" class="img-responsive" alt="img"> <h6> Mobile & Tablets </h6></a>
                </div>

				<div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
					<a href="categories-list/3"><img src="{{ URL::to('src/images/category/video-games-categ.png') }}" class="img-responsive" alt="img"> <h6> Video Games & Consoles </h6></a>
				</div>

                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
                    <a href="categories-list/4"><img src="{{ URL::to('src/images/category/electronics-categ.png') }}" class="img-responsive" alt="img"> <h6> Electronics - Appliances </h6></a>
                </div>

                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
                    <a href="categories-list/5"><img src="{{ URL::to('src/images/category/realestate-categ.png') }}" class="img-responsive" alt="img"> <h6> Real Estate </h6></a>
                </div>

                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
                    <a href="categories-list/6"><img src="{{ URL::to('src/images/category/furniture-categ.png') }}" class="img-responsive" alt="img"> <h6> Furniture - Decor </h6></a>
                </div>

                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
                    <a href="categories-list/7"><img src="{{ URL::to('src/images/category/women-categ.png') }}"  class="img-responsive" alt="img"> <h6> Women's Fashion </h6></a>
                </div>

                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
                    <a href="categories-list/8"><img src="{{ URL::to('src/images/category/men-categ.png') }}" class="img-responsive" alt="img">
                        <h6> Men's Fashion </h6></a>
                </div>

                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
                    <a href="categories-list/9"><img src="{{ URL::to('src/images/category/baby-categ.png') }}" class="img-responsive" alt="img">
                        <h6> Baby - Kids </h6></a>
                </div>

                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
                    <a href="categories-list/10"><img src="{{ URL::to('src/images/category/food-categ.png') }}" class="img-responsive" alt="img">
                        <h6> Food Supplements </h6></a>
                </div>

                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
                    <a href="categories-list/11"><img src="{{ URL::to('src/images/category/services-categ.png') }}" class="img-responsive" alt="img">
                        <h6> Services </h6></a>
                </div>

                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
                    <a href="categories-list/12"><img src="{{ URL::to('src/images/category/jobs-categ.png') }}" class="img-responsive" alt="img">
                        <h6> Jobs </h6></a>
                </div>



				<div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
					<a href="categories-list/14"><img src="{{ URL::to('src/images/category/pets-categ.png') }}" class="img-responsive" alt="img">
						<h6> Pets </h6></a>
				</div>

				<div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
					<a href="categories-list/15"><img src="{{ URL::to('src/images/category/books-categ.png') }}" class="img-responsive" alt="img">
						<h6> Books - Sports - Others </h6></a>
				</div>

				<div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
					<a href="categories-list/16"><img src="{{ URL::to('src/images/category/business-categ.png') }}" class="img-responsive" alt="img">
						<h6> Business Industrial </h6></a>
				</div>

				<div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
					<a href="categories-list/17"><img src="{{ URL::to('src/images/category/antique-categ.png') }}" class="img-responsive" alt="img">
						<h6> Antiques </h6></a>
				</div>

				<div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
					<a href="categories-list/18"><img src="{{ URL::to('src/images/category/matrimony-categ.png') }}" class="img-responsive" alt="img">
						<h6> Matrimony </h6></a>
				</div>

				<div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
					<a href="categories-list/19"><img src="{{ URL::to('src/images/category/web-categ.png') }}"  class="img-responsive" alt="img"> <h6> Web Services </h6></a>
				</div>

            </div>


        </div>

		<div style="clear: both"></div>

		<div class="col-lg-12 content-box ">
			<div class="row row-featured">
				<div class="col-lg-12  box-title ">
					<div class="inner"><h2><span>Sponsored </span> Products <a href="#" class="sell-your-item"> View more <i class="  icon-th-list"></i> </a></h2>


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

        <div style="clear: both"></div>

        <div class="col-lg-12 content-box ">
            <div class="row row-featured">
                <div class="col-lg-12  box-title ">
                    <div class="inner"><h2><span>Latest </span> Products <a href="#" class="sell-your-item"> View more <i class="  icon-th-list"></i> </a></h2>


                    </div>
                </div>

                <div style="clear: both"></div>

                <div class=" relative  content featured-list-row2
                 clearfix">

                    <nav class="slider-nav has-white-bg nav-narrow-svg">
                        <a class="prev">
                            <span class="nav-icon-wrap"></span>

                        </a>
                        <a class="next">
                            <span class="nav-icon-wrap"></span>
                        </a>
                    </nav>

                    <div class="no-margin featured-list-slider2 recent-list-slider ">
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


        <div class="col-lg-12 content-box ">
            <div class="row row-featured">

                <div style="clear: both"></div>

                <div class=" relative  content  clearfix">


                    {{--<div class="">--}}
                        {{--<div class="tab-lite">--}}

                            {{--<!-- Nav tabs -->--}}
                            {{--<ul class="nav nav-tabs " role="tablist">--}}
                                {{--<li role="presentation" class="active"><a href="#tab1" aria-controls="tab1"--}}
                                                                          {{--role="tab" data-toggle="tab"><i--}}
                                        {{--class="icon-location-2"></i> Top Locations</a></li>--}}
                                {{--<li role="presentation"><a href="#tab2" aria-controls="tab2" role="tab"--}}
                                                           {{--data-toggle="tab"><i class="icon-search"></i> Top Search</a>--}}
                                {{--</li>--}}
                                {{--<li role="presentation"><a href="#tab3" aria-controls="tab3" role="tab"--}}
                                                           {{--data-toggle="tab"><i class="icon-th-list"></i> Top Makes</a>--}}
                                {{--</li>--}}
                            {{--</ul>--}}

                            {{--<!-- Tab panes -->--}}
                            {{--<div class="tab-content">--}}
                                {{--<div role="tabpanel" class="tab-pane active" id="tab1">--}}

                                    {{--<div class="col-lg-12 tab-inner">--}}

                                        {{--<div class="row">--}}
                                            {{--<ul class="cat-list col-sm-3  col-xs-6 col-xxs-12">--}}
												{{--@foreach($city as $row)--}}
                                                {{--<li><a href="#">{{ $row }}</a></li>--}}
												{{--@endforeach--}}
                                                {{--<li><a href="#"> Dallas </a></li>--}}
                                                {{--<li><a href="#"> New York </a></li>--}}
                                                {{--<li><a href="#">Santa Ana/Anaheim </a></li>--}}
                                                {{--<li><a href="#">Wichita </a></li>--}}
                                                {{--<li><a href="#"> Anchorage </a></li>--}}

                                                {{--<li><a href="#"> Miami </a></li>--}}
                                                {{--<li><a href="#">Los Angeles</a></li>--}}
                                            {{--</ul>--}}

                                            {{--<ul class="cat-list cat-list-border col-sm-3  col-xs-6 col-xxs-12">--}}
                                                {{--<li><a href="#">Boston </a></li>--}}
                                                {{--<li><a href="#">Houston</a></li>--}}
                                                {{--<li><a href="#">Salt Lake City </a></li>--}}
                                                {{--<li><a href="#">Virginia Beach </a></li>--}}
                                                {{--<li><a href="#"> San Diego </a></li>--}}

                                                {{--<li><a href="#">San Francisco </a></li>--}}
                                                {{--<li><a href="#">Tampa </a></li>--}}
                                                {{--<li><a href="#"> Washington DC </a></li>--}}

                                            {{--</ul>--}}

                                            {{--<ul class="cat-list cat-list-border col-sm-3  col-xs-6 col-xxs-12">--}}
                                                {{--<li><a href="#">Virginia Beach </a></li>--}}
                                                {{--<li><a href="#"> San Diego </a></li>--}}
                                                {{--<li><a href="#">San Francisco </a></li>--}}
                                                {{--<li><a href="#">Tampa </a></li>--}}
                                                {{--<li><a href="#"> Washington DC </a></li>--}}
                                                {{--<li><a href="#">Boston </a></li>--}}
                                                {{--<li><a href="#">Houston</a></li>--}}
                                                {{--<li><a href="#">Salt Lake City </a></li>--}}


                                            {{--</ul>--}}

                                            {{--<ul class="cat-list cat-list-border col-sm-3  col-xs-6 col-xxs-12">--}}

                                                {{--<li><a href="#">Salt Lake City </a></li>--}}
                                                {{--<li><a href="#">San Francisco </a></li>--}}
                                                {{--<li><a href="#">Tampa </a></li>--}}
                                                {{--<li><a href="#"> Washington DC </a></li>--}}
                                                {{--<li><a href="#">Virginia Beach </a></li>--}}
                                                {{--<li><a href="#"> San Diego </a></li>--}}
                                                {{--<li><a href="#">Boston </a></li>--}}
                                                {{--<li><a href="#">Houston</a></li>--}}

                                            {{--</ul>--}}

                                        {{--</div>--}}

                                    {{--</div>--}}


                                {{--</div>--}}
                                {{--<div role="tabpanel" class="tab-pane" id="tab2">--}}

                                    {{--<div class="col-lg-12 tab-inner">--}}

                                        {{--<div class="row">--}}

                                            {{--<ul class="cat-list cat-list-border col-sm-3  col-xs-6 col-xxs-12">--}}
                                                {{--<li><a href="#">Virginia Beach </a></li>--}}
                                                {{--<li><a href="#"> San Diego </a></li>--}}
                                                {{--<li><a href="#">Boston </a></li>--}}
                                                {{--<li><a href="#">Houston</a></li>--}}
                                                {{--<li><a href="#">Salt Lake City </a></li>--}}
                                                {{--<li><a href="#">San Francisco </a></li>--}}
                                                {{--<li><a href="#">Tampa </a></li>--}}
                                                {{--<li><a href="#"> Washington DC </a></li>--}}

                                            {{--</ul>--}}


                                            {{--<ul class="cat-list col-sm-3  col-xs-6 col-xxs-12">--}}
                                                {{--<li><a href="#">Atlanta</a></li>--}}
                                                {{--<li><a href="#">Wichita </a></li>--}}
                                                {{--<li><a href="#"> Anchorage </a></li>--}}
                                                {{--<li><a href="#"> Dallas </a></li>--}}
                                                {{--<li><a href="#"> New York </a></li>--}}
                                                {{--<li><a href="#">Santa Ana/Anaheim </a></li>--}}
                                                {{--<li><a href="#"> Miami </a></li>--}}
                                                {{--<li><a href="#">Los Angeles</a></li>--}}
                                            {{--</ul>--}}

                                            {{--<ul class="cat-list cat-list-border col-sm-3  col-xs-6 col-xxs-12">--}}
                                                {{--<li><a href="#">Virginia Beach </a></li>--}}
                                                {{--<li><a href="#"> San Diego </a></li>--}}
                                                {{--<li><a href="#">Boston </a></li>--}}
                                                {{--<li><a href="#">Houston</a></li>--}}
                                                {{--<li><a href="#">Salt Lake City </a></li>--}}
                                                {{--<li><a href="#">San Francisco </a></li>--}}
                                                {{--<li><a href="#">Tampa </a></li>--}}
                                                {{--<li><a href="#"> Washington DC </a></li>--}}

                                            {{--</ul>--}}

                                            {{--<ul class="cat-list cat-list-border col-sm-3  col-xs-6 col-xxs-12">--}}
                                                {{--<li><a href="#">Virginia Beach </a></li>--}}
                                                {{--<li><a href="#"> San Diego </a></li>--}}
                                                {{--<li><a href="#">Boston </a></li>--}}
                                                {{--<li><a href="#">Houston</a></li>--}}
                                                {{--<li><a href="#">Salt Lake City </a></li>--}}
                                                {{--<li><a href="#">San Francisco </a></li>--}}
                                                {{--<li><a href="#">Tampa </a></li>--}}
                                                {{--<li><a href="#"> Washington DC </a></li>--}}

                                            {{--</ul>--}}


                                        {{--</div>--}}

                                    {{--</div>--}}


                                {{--</div>--}}
                                {{--<div role="tabpanel" class="tab-pane" id="tab3">--}}

                                    {{--<div class="col-lg-12 tab-inner">--}}

                                        {{--<div class="row">--}}


                                            {{--<ul class="cat-list cat-list-border col-sm-3  col-xs-6 col-xxs-12">--}}
                                                {{--<li><a href="#">Virginia Beach </a></li>--}}
                                                {{--<li><a href="#"> San Diego </a></li>--}}
                                                {{--<li><a href="#">Boston </a></li>--}}
                                                {{--<li><a href="#">Houston</a></li>--}}
                                                {{--<li><a href="#">Salt Lake City </a></li>--}}
                                                {{--<li><a href="#">San Francisco </a></li>--}}
                                                {{--<li><a href="#">Tampa </a></li>--}}
                                                {{--<li><a href="#"> Washington DC </a></li>--}}

                                            {{--</ul>--}}


                                            {{--<ul class="cat-list cat-list-border col-sm-3  col-xs-6 col-xxs-12">--}}
                                                {{--<li><a href="#">Virginia Beach </a></li>--}}
                                                {{--<li><a href="#"> San Diego </a></li>--}}
                                                {{--<li><a href="#">Boston </a></li>--}}
                                                {{--<li><a href="#">Houston</a></li>--}}
                                                {{--<li><a href="#">Salt Lake City </a></li>--}}
                                                {{--<li><a href="#">San Francisco </a></li>--}}
                                                {{--<li><a href="#">Tampa </a></li>--}}
                                                {{--<li><a href="#"> Washington DC </a></li>--}}

                                            {{--</ul>--}}


                                            {{--<ul class="cat-list col-sm-3  col-xs-6 col-xxs-12">--}}
                                                {{--<li><a href="#">Atlanta</a></li>--}}
                                                {{--<li><a href="#">Wichita </a></li>--}}
                                                {{--<li><a href="#"> Anchorage </a></li>--}}
                                                {{--<li><a href="#"> Dallas </a></li>--}}
                                                {{--<li><a href="#"> New York </a></li>--}}
                                                {{--<li><a href="#">Santa Ana/Anaheim </a></li>--}}
                                                {{--<li><a href="#"> Miami </a></li>--}}
                                                {{--<li><a href="#">Los Angeles</a></li>--}}
                                            {{--</ul>--}}

                                            {{--<ul class="cat-list cat-list-border col-sm-3  col-xs-6 col-xxs-12">--}}
                                                {{--<li><a href="#">Virginia Beach </a></li>--}}
                                                {{--<li><a href="#"> San Diego </a></li>--}}
                                                {{--<li><a href="#">Boston </a></li>--}}
                                                {{--<li><a href="#">Houston</a></li>--}}
                                                {{--<li><a href="#">Salt Lake City </a></li>--}}
                                                {{--<li><a href="#">San Francisco </a></li>--}}
                                                {{--<li><a href="#">Tampa </a></li>--}}
                                                {{--<li><a href="#"> Washington DC </a></li>--}}

                                            {{--</ul>--}}


                                        {{--</div>--}}

                                    {{--</div>--}}


                                {{--</div>--}}
                            {{--</div>--}}

                        {{--</div>--}}

                    {{--</div>--}}


                </div>

            </div>
        </div>


        {{--<div class="row">--}}


            {{--<div class="col-sm-9 page-content col-thin-right">--}}
                {{--<div class="inner-box category-content">--}}
                    {{--<h2 class="title-2">Find Classified Ads World Wide </h2>--}}

                    {{--<div class="row">--}}
                        {{--<div class="col-md-4 col-sm-4 ">--}}
                            {{--<div class="cat-list">--}}
                                {{--<h3 class="cat-title"><a href="#"><i class="fa fa-car ln-shadow"></i>--}}
                                    {{--Automobiles <span class="count">277,959</span> </a>--}}

                                    {{--<span data-target=".cat-id-1" data-toggle="collapse"--}}
                                          {{--class="btn-cat-collapsed collapsed">   <span--}}
                                            {{--class=" icon-down-open-big"></span> </span>--}}
                                {{--</h3>--}}
                                {{--<ul class="cat-collapse collapse in cat-id-1">--}}
                                    {{--<li><a href="#">Car Parts &amp; Accessories</a></li>--}}
                                    {{--<li><a href="#">Campervans &amp; Caravans</a></li>--}}
                                    {{--<li><a href="#">Motorbikes &amp; Scooters</a></li>--}}
                                    {{--<li><a href="#">Motorbike Parts &amp; Accessories</a></li>--}}
                                    {{--<li><a href="#">Vans, Trucks &amp; Plant</a></li>--}}
                                    {{--<li><a href="#">Wanted</a></li>--}}
                                {{--</ul>--}}
                            {{--</div>--}}
                            {{--<div class="cat-list">--}}
                                {{--<h3 class="cat-title"><a href="#"><i class="icon-home ln-shadow"></i>--}}
                                    {{--Property <span class="count">228,705</span></a> <span data-target=".cat-id-2"--}}
                                                                                          {{--data-toggle="collapse"--}}
                                                                                          {{--class="btn-cat-collapsed collapsed">   <span--}}
                                        {{--class=" icon-down-open-big"></span> </span></h3>--}}


                                {{--<ul class="cat-collapse collapse in cat-id-2">--}}
                                    {{--<li><a href="#">House for Rent</a></li>--}}
                                    {{--<li><a href="#">House for Sale </a></li>--}}
                                    {{--<li><a href="#"> Apartments For Sale </a></li>--}}
                                    {{--<li><a href="#">Apartments for Rent </a></li>--}}
                                    {{--<li><a href="#">Farms-Ranches </a></li>--}}
                                    {{--<li><a href="#">Land </a></li>--}}
                                    {{--<li><a href="#">Vacation Rentals </a></li>--}}
                                    {{--<li><a href="#">Commercial Building</a></li>--}}
                                {{--</ul>--}}
                            {{--</div>--}}
                            {{--<div class="cat-list">--}}
                                {{--<h3 class="cat-title"><a href="#"><i class="icon-home ln-shadow"></i>--}}
                                    {{--Jobs <span class="count">6375</span></a>--}}

                                    {{--<span data-target=".cat-id-3" data-toggle="collapse"--}}
                                          {{--class="btn-cat-collapsed collapsed">   <span--}}
                                            {{--class=" icon-down-open-big"></span> </span>--}}
                                {{--</h3>--}}
                                {{--<ul class="cat-collapse collapse in cat-id-3">--}}
                                    {{--<li><a href="#">Full Time Jobs</a></li>--}}
                                    {{--<li><a href="#">Internet Jobs </a></li>--}}
                                    {{--<li><a href="#">Learn &amp; Earn jobs </a></li>--}}
                                    {{--<li><a href="#"> Manual Labor Jobs </a></li>--}}
                                    {{--<li><a href="#">Other Jobs </a></li>--}}
                                    {{--<li><a href="#">OwnBusiness </a></li>--}}
                                {{--</ul>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        {{--<div class="col-md-4 col-sm-4">--}}
                            {{--<div class="cat-list">--}}
                                {{--<h3 class="cat-title"><a href="#"><i--}}
                                        {{--class="fa fa-briefcase ln-shadow"></i> Services <span--}}
                                        {{--class="count">45,526</span></a>--}}
                                    {{--<span data-target=".cat-id-4" data-toggle="collapse"--}}
                                          {{--class="btn-cat-collapsed collapsed">   <span--}}
                                            {{--class=" icon-down-open-big"></span> </span>--}}
                                {{--</h3>--}}
                                {{--<ul class="cat-collapse collapse in cat-id-4">--}}
                                    {{--<li><a href="#">Building, Home &amp; Removals</a></li>--}}
                                    {{--<li><a href="#">Entertainment</a></li>--}}
                                    {{--<li><a href="#">Health &amp; Beauty</a></li>--}}
                                    {{--<li><a href="#">Miscellaneous</a></li>--}}
                                    {{--<li><a href="#">Property &amp; Shipping</a></li>--}}
                                    {{--<li><a href="#">Tax, Money &amp; Visas</a></li>--}}
                                    {{--<li><a href="#">Telecoms &amp; Computers</a></li>--}}
                                    {{--<li><a href="#">Travel Services &amp; Tours</a></li>--}}
                                    {{--<li><a href="#">Tuition &amp; Lessons</a></li>--}}
                                {{--</ul>--}}
                            {{--</div>--}}
                            {{--<div class="cat-list">--}}
                                {{--<h3 class="cat-title"><a href="#"><i--}}
                                        {{--class="icon-book-open ln-shadow"></i> Learning <span--}}
                                        {{--class="count">26,529</span></a> <span data-target=".cat-id-5"--}}
                                                                              {{--data-toggle="collapse"--}}
                                                                              {{--class="btn-cat-collapsed collapsed">   <span--}}
                                        {{--class=" icon-down-open-big"></span> </span>--}}
                                {{--</h3>--}}
                                {{--<ul class="cat-collapse collapse in cat-id-5">--}}
                                    {{--<li><a href="#"> Automotive Classes </a></li>--}}
                                    {{--<li><a href="#"> Computer Multimedia Classes </a></li>--}}
                                    {{--<li><a href="#"> Sports Classes </a></li>--}}
                                    {{--<li><a href="#"> Home Improvement Classes </a></li>--}}
                                    {{--<li><a href="#"> Language Classes </a></li>--}}
                                    {{--<li><a href="#"> Music Classes </a></li>--}}
                                    {{--<li><a href="#"> Personal Fitness </a></li>--}}
                                    {{--<li><a href="#"> Other Classes </a></li>--}}
                                {{--</ul>--}}
                            {{--</div>--}}
                            {{--<div class="cat-list">--}}
                                {{--<h3 class="cat-title"><a href="#"><i--}}
                                        {{--class="icon-guidedog ln-shadow"></i> Pets <span class="count">42,111</span></a>--}}
                                    {{--<span data-target=".cat-id-6" data-toggle="collapse"--}}
                                          {{--class="btn-cat-collapsed collapsed">   <span--}}
                                            {{--class=" icon-down-open-big"></span> </span>--}}
                                {{--</h3>--}}
                                {{--<ul class="cat-collapse collapse in cat-id-6">--}}
                                    {{--<li><a href="#">Pets for Sale</a></li>--}}
                                    {{--<li><a href="#">Petsitters &amp; Dogwalkers</a></li>--}}
                                    {{--<li><a href="#">Equipment &amp; Accessories</a></li>--}}
                                    {{--<li><a href="#">Missing, Lost &amp; Found</a></li>--}}
                                {{--</ul>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        {{--<div class="col-md-4 col-sm-4   last-column">--}}
                            {{--<div class="cat-list">--}}
                                {{--<h3 class="cat-title"><a href="#"><i--}}
                                        {{--class=" icon-basket-1 ln-shadow"></i> For Sale <span--}}
                                        {{--class="count">64,526</span></a> <span data-target=".cat-id-7"--}}
                                                                              {{--data-toggle="collapse"--}}
                                                                              {{--class="btn-cat-collapsed collapsed">   <span--}}
                                        {{--class=" icon-down-open-big"></span> </span>--}}
                                {{--</h3>--}}
                                {{--<ul class="cat-collapse collapse in cat-id-7">--}}
                                    {{--<li><a href="#">Audio &amp; Stereo</a></li>--}}
                                    {{--<li><a href="#">Baby &amp; Kids Stuff</a></li>--}}
                                    {{--<li><a href="#">CDs, DVDs, Games &amp; Books</a></li>--}}
                                    {{--<li><a href="#">Clothes, Footwear &amp; Accessories</a></li>--}}
                                    {{--<li><a href="#">Computers &amp; Software</a></li>--}}
                                    {{--<li><a href="#">Home &amp; Garden</a></li>--}}
                                    {{--<li><a href="#">Music &amp; Instruments</a></li>--}}
                                    {{--<li><a href="#">Office Furniture &amp; Equipment</a></li>--}}
                                    {{--<li><a href="#">Phones, Mobile Phones &amp; Telecoms</a></li>--}}
                                    {{--<li><a href="#">Sports, Leisure &amp; Travel</a></li>--}}
                                    {{--<li><a href="#">Tickets</a></li>--}}
                                    {{--<li><a href="#">TV, DVD &amp; Cameras</a></li>--}}
                                    {{--<li><a href="#">Video Games &amp; Consoles</a></li>--}}
                                    {{--<li><a href="#">Freebies</a></li>--}}
                                    {{--<li><a href="#">Miscellaneous Goods</a></li>--}}
                                    {{--<li><a href="#">Stuff Wanted</a></li>--}}
                                    {{--<li><a href="#">Swap Shop</a></li>--}}
                                {{--</ul>--}}
                            {{--</div>--}}
                            {{--<div class="cat-list ">--}}
                                {{--<h3 class="cat-title"><a href="#"><i--}}
                                        {{--class=" icon-theatre ln-shadow"></i> Community <span--}}
                                        {{--class="count">5,30</span> </a> <span data-target=".cat-id-8"--}}
                                                                             {{--data-toggle="collapse"--}}
                                                                             {{--class="btn-cat-collapsed collapsed">   <span--}}
                                        {{--class=" icon-down-open-big"></span> </span>--}}
                                {{--</h3>--}}
                                {{--<ul class="cat-collapse collapse in cat-id-8">--}}
                                    {{--<li><a href="#">Announcements </a></li>--}}
                                    {{--<li><a href="#">Car Pool - Bike Ride </a></li>--}}
                                    {{--<li><a href="#">Charity - Donate - NGO </a></li>--}}
                                    {{--<li><a href="#">Lost - Found </a></li>--}}
                                    {{--<li><a href="#">Tender Notices </a></li>--}}
                                {{--</ul>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}

                {{--<div class="inner-box has-aff relative">--}}
                    {{--<a class="dummy-aff-img" href="#"><img src="{{ URL::to('src/images/aff2.jpg') }}" class="img-responsive"--}}
                                                                       {{--alt=" aff"> </a>--}}

                {{--</div>--}}
            {{--</div>--}}
            {{--<div class="col-sm-3 page-sidebar col-thin-left">--}}
                {{--<aside>--}}
                    {{--<div class="inner-box no-padding">--}}
                        {{--<div class="inner-box-content"><a href="#"><img class="img-responsive"--}}
                                                                        {{--src={{ URL::to('src/images/site/app.jpg') }}" alt="tv"></a>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="inner-box">--}}
                        {{--<h2 class="title-2">Popular Categories </h2>--}}

                        {{--<div class="inner-box-content">--}}
                            {{--<ul class="cat-list arrow">--}}
                                {{--<li><a href="sub-category-sub-location.html"> Apparel (1,386) </a></li>--}}
                                {{--<li><a href="sub-category-sub-location.html"> Art (1,163) </a></li>--}}
                                {{--<li><a href="sub-category-sub-location.html"> Business Opportunities (4,974) </a>--}}
                                {{--</li>--}}
                                {{--<li><a href="sub-category-sub-location.html"> Community and Events (1,258) </a></li>--}}
                                {{--<li><a href="sub-category-sub-location.html"> Electronics and Appliances--}}
                                    {{--(1,578) </a></li>--}}
                                {{--<li><a href="sub-category-sub-location.html"> Jobs and Employment (3,609) </a></li>--}}
                                {{--<li><a href="sub-category-sub-location.html"> Motorcycles (968) </a></li>--}}
                                {{--<li><a href="sub-category-sub-location.html"> Pets (1,188) </a></li>--}}
                                {{--<li><a href="sub-category-sub-location.html"> Services (7,583) </a></li>--}}
                                {{--<li><a href="sub-category-sub-location.html"> Vehicles (1,129) </a></li>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                    {{--</div>--}}

                    {{--<div class="inner-box no-padding"><img class="img-responsive" src={{ URL::to('src/images/add2.jpg') }}" alt="">--}}
                    {{--</div>--}}
                {{--</aside>--}}
            {{--</div>--}}
        {{--</div>--}}
    </div>
</div>
<!-- /.main-container -->

{{--<div class="page-info hasOverly" style="background: url(images/bg.jpg') }}); background-size:cover">--}}
    {{--<div class="bg-overly">--}}
        {{--<div class="container text-center section-promo">--}}
            {{--<div class="row">--}}
                {{--<div class="col-sm-3 col-xs-6 col-xxs-12">--}}
                    {{--<div class="iconbox-wrap">--}}
                        {{--<div class="iconbox">--}}
                            {{--<div class="iconbox-wrap-icon">--}}
                                {{--<i class="icon  icon-group"></i>--}}
                            {{--</div>--}}
                            {{--<div class="iconbox-wrap-content">--}}
                                {{--<h5><span>2200</span></h5>--}}

                                {{--<div class="iconbox-wrap-text">Trusted Seller</div>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        {{--<!-- /..iconbox -->--}}
                    {{--</div>--}}
                    {{--<!--/.iconbox-wrap-->--}}
                {{--</div>--}}

                {{--<div class="col-sm-3 col-xs-6 col-xxs-12">--}}
                    {{--<div class="iconbox-wrap">--}}
                        {{--<div class="iconbox">--}}
                            {{--<div class="iconbox-wrap-icon">--}}
                                {{--<i class="icon  icon-th-large-1"></i>--}}
                            {{--</div>--}}
                            {{--<div class="iconbox-wrap-content">--}}
                                {{--<h5><span>100</span></h5>--}}

                                {{--<div class="iconbox-wrap-text">Categories</div>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        {{--<!-- /..iconbox -->--}}
                    {{--</div>--}}
                    {{--<!--/.iconbox-wrap-->--}}
                {{--</div>--}}

                {{--<div class="col-sm-3 col-xs-6  col-xxs-12">--}}
                    {{--<div class="iconbox-wrap">--}}
                        {{--<div class="iconbox">--}}
                            {{--<div class="iconbox-wrap-icon">--}}
                                {{--<i class="icon  icon-map"></i>--}}
                            {{--</div>--}}
                            {{--<div class="iconbox-wrap-content">--}}
                                {{--<h5><span>700</span></h5>--}}

                                {{--<div class="iconbox-wrap-text">Location</div>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        {{--<!-- /..iconbox -->--}}
                    {{--</div>--}}
                    {{--<!--/.iconbox-wrap-->--}}
                {{--</div>--}}

                {{--<div class="col-sm-3 col-xs-6 col-xxs-12">--}}
                    {{--<div class="iconbox-wrap">--}}
                        {{--<div class="iconbox">--}}
                            {{--<div class="iconbox-wrap-icon">--}}
                                {{--<i class="icon icon-facebook"></i>--}}
                            {{--</div>--}}
                            {{--<div class="iconbox-wrap-content">--}}
                                {{--<h5><span>50,000</span></h5>--}}

                                {{--<div class="iconbox-wrap-text"> Facebook Fans</div>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        {{--<!-- /..iconbox -->--}}
                    {{--</div>--}}
                    {{--<!--/.iconbox-wrap-->--}}
                {{--</div>--}}

            {{--</div>--}}

        {{--</div>--}}
    {{--</div>--}}
{{--</div>--}}
<!-- /.page-info -->

<div class="page-bottom-info">
    <div class="page-bottom-info-inner">

        <div class="page-bottom-info-content text-center">
            <h1>If you have any questions, comments or concerns, please call the Classified Advertising department
                at (000) 555-5555</h1>
            <a class="btn  btn-lg btn-primary-dark" href="tel:+000000000">
                <i class="icon-mobile"></i> <span class="hide-xs color50">Call Now:</span> (000) 555-5555 </a>
        </div>

    </div>
</div>

@if(Session::has('flash_message'))
<div id="myModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Notification</h4>
			</div>
			<div class="modal-body">
				<p>{{ Session::get('flash_message') }}</p>
			</div>
		</div>
	</div>
</div>
@endif
@endsection


@section('js2')
	<script type="text/javascript">

		$(document).ready(function(){

			@if(Session::has('flash_message'))
				$("#myModal").modal('show');
			@endif

			var json = {!! $json_combo !!};

			var htmlstr = '';
			htmlstr += 		'<input type="hidden" data-cat-value="Main Cat" id="combo-main-cat" name="mcategory" value="0">';
			htmlstr += 		'<input type="hidden" data-cat-sub-value="Sub cat" id="combo-sub-cat" name="category" value="0">';
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