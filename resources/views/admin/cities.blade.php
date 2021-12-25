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

				<h3 class="page-sub-header2 clearfix no-padding">City <div class="pull-right"><a href="{{ route('admin-city-edit', 0) }}" class="btn btn-primary">Add City</a></div></h3>
              <span class="page-sub-header-sub small"></span>
            </div>
            @if(Session::has('flash_message'))
              <div class="alert alert-success">
                {{ Session::get('flash_message') }}
              </div>
            @endif
            <div>
              <table class="table table-striped table-bordered add-manage-table table demo footable-loaded footable">
                <thead>
                <tr>
                  <th>City</th>
                  <th>Order by</th>
                  <th>Active</th>
                  
                  <th>Action</th>
                </tr></thead>
                <tbody>
                @foreach($city as $row)
                <tr>
                  <td>{{ $row->city }}</td>
                  <td>{{ $row->seq }}</td>
                  <td>{{ $row->active }}</td>
                  
                  <td>
                    <p><a class="btn btn-info btn-xs" href="{{ route('admin-city-edit', $row->id) }}"> <i class="fa fa-recycle"></i> Edit </a> </p>
                    <p><a class="btn btn-danger btn-xs" href="{{ route('admin-city-delete', $row->id) }}"> <i class=" fa fa-trash"></i> Delete </a></p>
                    
                  </td>
                </tr>
                @endforeach
				<tr>
					<td colspan="5">{{ $city->links() }}</td>
				</tr>
                  
                </tbody>
              </table>
            </div>
            
            
            </div>
        <!--/.page-content-->
      </div>
      <!--/.row-->
    </div>
    <!--/.container-->
  </div>
@endsection