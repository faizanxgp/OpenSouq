@extends('layouts.main')

@section('pageHeading')
  Registration
@endsection

@section('content')
  <div class="main-container">
    <div class="container">
      <div class="row">
        <div class="col-md-8 page-content">
          <div class="inner-box category-content">
            <h2 class="title-2"><i class="icon-user-add"></i> Create your account, Its free </h2>
            
            @if(Session::has('flash_message'))
              <div class="alert alert-success">
                {{ Session::get('flash_message') }}
              </div>
            @endif
            
            <div class="row">
              <div class="col-sm-12">
                <form class="form-horizontal" method="post" action="{{ route('signup') }}">
                  <fieldset>
                    <div class="form-group required">
                      <label class="col-md-4 control-label">You are a <sup>*</sup></label>
                      
                      <div class="col-md-6">
                        <div class="radio">
                          <label> <input type="radio" value="1" id="optionsRadios1" name="user_type" checked="">
                            Individual </label>
                        </div>
                        <div class="radio">
                          <label> <input type="radio" value="2" id="optionsRadios2" name="user_type" >
                            Business </label>
                        </div>
                      </div>
                    </div>
                    
                    <!-- Text input-->
                    <div class="form-group {{ $errors->has('name') ? ' has-error' : '' }} required">
                      <label class="col-md-4 control-label">Name <sup>*</sup></label>
                      
                      <div class="col-md-6">
                        <input type="text" required="" class="form-control input-md" placeholder="Name" name="name" value="{{ old('name') }}">
                        @if ($errors->has('name'))
                          <span class="help-block">
                            <strong>{{ $errors->first('name') }}</strong>
                          </span>
                        @endif
                      </div>
                    </div>
                  
                  {{-- <!-- Text input-->
                  <div class="form-group required">
                  <label class="col-md-4 control-label">Last Name <sup>*</sup></label>
                  
                  <div class="col-md-6">
                  <input type="text" class="form-control input-md" placeholder="Last Name" name="textinput">
                  </div>
                  </div> --}}
                  
                  <!-- Text input-->
                    <div class="form-group {{ $errors->has('phone') ? ' has-error' : '' }} required">
                      <label class="col-md-4 control-label">Phone Number <sup>*</sup></label>
                      
                      <div class="col-md-6">
                        <input type="text" class="form-control input-md" placeholder="Phone Number" name="phone" value="{{ old('phone') }}">
                        @if ($errors->has('phone'))
                          <span class="help-block">
                            <strong>{{ $errors->first('phone') }}</strong>
                          </span>
                        @endif
                        
                        <div class="checkbox">
                          <label>
                            <input type="checkbox" name="phone_show" value="1" checked="">
                            <small> Show the phone number on the published ads.</small>
                          </label>
                        </div>
                      </div>
                    </div>
                    
                    <!-- Multiple Radios -->
                  {{-- <div class="form-group">
                  <label class="col-md-4 control-label">Gender</label>
                  
                  <div class="col-md-6">
                  <div class="radio">
                  <label for="Gender-0">
                  <input type="radio" checked="checked" value="1" id="Gender-0" name="Gender">
                  Male </label>
                  </div>
                  <div class="radio">
                  <label for="Gender-1">
                  <input type="radio" value="2" id="Gender-1" name="Gender">
                  Female </label>
                  </div>
                  </div>
                  </div> --}}
                  
                  <!-- Textarea -->
                    {{-- <div class="form-group">
                    <label for="textarea" class="col-md-4 control-label">About Yourself</label>
                    
                    <div class="col-md-6">
                    <textarea name="about_user" id="textarea" class="form-control">About Yourself</textarea>
                    </div>
                    </div> --}}
                    <div class="form-group {{ $errors->has('email') ? ' has-error' : '' }} required">
                      <label class="col-md-4 control-label" for="email">Email <sup>*</sup></label>
                      
                      <div class="col-md-6">
                        <input type="email" placeholder="Email" id="email" name="email" class="form-control" value="{{ old('email') }}">
                        @if ($errors->has('email'))
                          <span class="help-block">
                            <strong>{{ $errors->first('email') }}</strong>
                          </span>
                        @endif
                      </div>
                    </div>
                    <div class="form-group {{ $errors->has('password') ? ' has-error' : '' }} required">
                      <label class="col-md-4 control-label" for="password">Password </label>
                      
                      <div class="col-md-6">
                        <input type="password" placeholder="Password" id="password" name="password" class="form-control">
                        @if ($errors->has('password'))
                          <span class="help-block">
                            <strong>{{ $errors->first('password') }}</strong>
                          </span>
                        @endif
                        <p class="help-block">At least 5 characters
                          <!--Example block-level help text here.--></p>
                      </div>
                    </div>
                    <div class="form-group {{ $errors->has('password_confirmation') ? ' has-error' : '' }} required">
                      <label class="col-md-4 control-label" for="password">Confirm Password </label>
    
                      <div class="col-md-6">
                        <input type="password" placeholder="Password" id="password_confirmation" name="password_confirmation" class="form-control">
                        @if ($errors->has('password_confirmation'))
                          <span class="help-block">
                            <strong>{{ $errors->first('password_confirmation') }}</strong>
                          </span>
                        @endif
                        <p class="help-block">Same as above
                          <!--Example block-level help text here.--></p>
                      </div>
                    </div>
                    <div class="form-group {{ $errors->has('confirm') ? ' has-error' : '' }}">
                      <label class="col-md-4 control-label"></label>
                      
                      <div class="col-md-8">
                        <div class="termbox mb10">
                          <label for="checkboxes-1" class="checkbox-inline">
                            <input type="checkbox" value="1" id="checkboxes-1" name="confirm">
                            @if ($errors->has('confirm'))
                              <span class="help-block">
                                <strong>{{ $errors->first('confirm') }}</strong>
                              </span>
                            @endif
                            I have read and agree to the <a href="#">Terms &amp; Conditions</a>
                          </label>
                        </div>
                        <div style="clear:both"></div>
                        <input type="submit" name="submit" class="btn btn-primary" value="Register"/>
                        {{ csrf_field() }}
                      </div>
                    </div>
                  </fieldset>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- /.page-content -->
        
        <div class="col-md-4 reg-sidebar">
          <div class="reg-sidebar-inner text-center">
            <div class="promo-text-box"><i class=" icon-picture fa fa-4x icon-color-1"></i>
              
              <h3><strong>Post a Free Classified</strong></h3>
              
              <p> Post your free online classified ads with us. Lorem ipsum dolor sit amet, consectetur
                adipiscing elit. </p>
            </div>
            <div class="promo-text-box"><i class=" icon-pencil-circled fa fa-4x icon-color-2"></i>
              
              <h3><strong>Create and Manage Items</strong></h3>
              
              <p> Nam sit amet dui vel orci venenatis ullamcorper eget in lacus.
                Praesent tristique elit pharetra magna efficitur laoreet.</p>
            </div>
            <div class="promo-text-box"><i class="  icon-heart-2 fa fa-4x icon-color-3"></i>
              
              <h3><strong>Create your Favorite ads list.</strong></h3>
              
              <p> PostNullam quis orci ut ipsum mollis malesuada varius eget metus.
                Nulla aliquet dui sed quam iaculis, ut finibus massa tincidunt.</p>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
  </div>
  
@endsection
