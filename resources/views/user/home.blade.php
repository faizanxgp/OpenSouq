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
            <div class="row">
              <div class="col-md-5 col-xs-4 col-xxs-12">
                <h3 class="no-padding text-center-480 useradmin"><a href="">@if($user->photo == "")
							<img alt="user" src="{{ URL::to('src/images/user.jpg') }}" class="userImg">

						@else
							<img alt="user" src="{{ URL::to('uploads/users/' . $user->photo) }}" class="userImg">
						@endif {{ $user->name }} </a>
                </h3>
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
              <h3 class="page-sub-header2 clearfix no-padding">Hello {{ $user->name }} </h3>
              <span class="page-sub-header-sub small">You last logged in at: 01-01-2014 12:40 AM [UK time (GMT + 6:00hrs)]</span>
				@if(Session::has('flash_message'))
					<div class="alert alert-success">
						{{ Session::get('flash_message') }}
					</div>
				@endif
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