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
          
          <form role="form" class="form-horizontal" method="post" action="{{ route('admin-user-update') }}">
            
            
            <div class="inner-box">
              <div class="welcome-msg">
                <h3 class="page-sub-header2 clearfix no-padding">Users </h3>
                <span class="page-sub-header-sub small"></span>
              </div>
              
              <div class="form-horizontal">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Name</label>
                  
                  <div class="col-sm-9">
                    <input type="text" placeholder="Name" class="form-control" name="name" value="{{ $users->name }}">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">Email</label>
                  
                  <div class="col-sm-9">
                    <input type="text" placeholder="Email" class="form-control" name="email"
                           value="{{ $users->email }}">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">Phone</label>
                  
                  <div class="col-sm-9">
                    <input type="text" placeholder="Phone" class="form-control" name="phone"
                           value="{{ $users->phone }}">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">User Type</label>
                  
                  <div class="col-sm-9">
                    
                    {{ Form::select('user_type', $user_type, $users->user_type, ['class' => 'form-control']) }}
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">Status</label>
                  
                  <div class="col-sm-9">
  
                    {{ Form::select('user_status', $user_status, $users->status, ['class' => 'form-control']) }}
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-offset-3 col-sm-9"></div>
                </div>
                <div class="form-group">
                  <div class="col-sm-offset-3 col-sm-9">
                    <input type="hidden" name="id" value="{{ $users->id }}">
                    <button class="btn btn-default" type="submit">Update</button>
                    {{ csrf_field() }}
                  </div>
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
@endsection