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
                <h3 class="no-padding text-center-480 useradmin"><a href=""><img alt="user" src="{{ URL::to('src/images/user.jpg') }}" class="userImg"> {{ $user->name }}
                  </a></h3>
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
            <div class="panel-group" id="accordion">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"><a data-toggle="collapse" href="#collapseB1"> My
                      details </a></h4>
                </div>
                <div id="collapseB1" class="panel-collapse collapse in">
                  <div class="panel-body">
                    <form role="form" class="form-horizontal" method="post" action="{{ route('admin-update') }}">
                      <div class="form-group">
                        <label class="col-sm-3 control-label">Name</label>
                        
                        <div class="col-sm-9">
                          <input type="text" placeholder="Name" class="form-control" name="name" value="{{ $user->name }}">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-3 control-label">Email</label>
                        
                        <div class="col-sm-9">
                          <input type="email" placeholder="Email" class="form-control" name="email" value="{{ $user->email }}">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="col-sm-3 control-label" for="Phone">Phone</label>
                        
                        <div class="col-sm-9">
                          <input type="text" placeholder="Phone" id="Phone" class="form-control" name="phone" value="{{ $user->phone }}">
                        </div>
                      </div>
                      
                      
                      
                      <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9"></div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                          <button class="btn btn-default" type="submit">Update</button>
                          {{ csrf_field() }}
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"><a data-toggle="collapse" href="#collapseB2"> Settings </a>
                  </h4>
                </div>
                <div id="collapseB2" class="panel-collapse collapse">
                  <div class="panel-body">
                    <form role="form" class="form-horizontal" method="post" action="{{ route('admin-update-password') }}">
                      {{--<div class="form-group">--}}
                        {{--<div class="col-sm-12">--}}
                          {{--<div class="checkbox">--}}
                            {{--<label>--}}
                              {{--<input type="checkbox">--}}
                              {{--Comments are enabled on my ads </label>--}}
                          {{--</div>--}}
                        {{--</div>--}}
                      {{--</div>--}}
                      <div class="form-group">
                        <label class="col-sm-3 control-label">New Password</label>
                        
                        <div class="col-sm-9">
                          <input type="password" placeholder="" class="form-control" name="password">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-3 control-label">Confirm Password</label>
                        
                        <div class="col-sm-9">
                          <input type="password" placeholder="" class="form-control" name="password_confirmation">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                          <button class="btn btn-default" type="submit">Update</button>
                          {{ csrf_field() }}
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"><a data-toggle="collapse" href="#collapseB3">
                      Preferences </a></h4>
                </div>
                <div id="collapseB3" class="panel-collapse collapse">
                  <div class="panel-body">
                    <div class="form-group">
                      <div class="col-sm-12">
                        {{--<div class="checkbox">--}}
                          {{--<label>--}}
                            {{--<input type="checkbox">--}}
                            {{--I want to receive newsletter. </label>--}}
                        {{--</div>--}}
                        {{--<div class="checkbox">--}}
                          {{--<label>--}}
                            {{--<input type="checkbox">--}}
                            {{--I want to receive advice on buying and selling. </label>--}}
                        {{--</div>--}}
                      </div>
                    </div>
                  </div>
                </div>
              </div>
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