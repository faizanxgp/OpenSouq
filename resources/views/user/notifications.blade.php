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
            <h2 class="title-2"><i class="icon-docs"></i>  </h2>
            
            <div class="table-responsive">
              <div class="table-action">
                <label for="checkAll">
                  <input type="checkbox" id="checkAll">
                  Select: All | <a class="btn btn-xs btn-danger" href="#">Delete <i
                        class="glyphicon glyphicon-remove "></i></a> </label>
                
                <div class="table-search pull-right col-xs-7">
                  <div class="form-group">
                    <label class="col-xs-5 control-label text-right">Search <br>
                      <a href="#clear" class="clear-filter" title="clear filter">[clear]</a>
                    </label>
                    
                    <div class="col-xs-7 searchpan">
                      <input type="text" id="filter" class="form-control">
                    </div>
                  </div>
                </div>
              </div>
              <table data-filter-text-only="true" data-filter="#filter"
                     class="table table-striped table-bordered add-manage-table table demo footable-loaded footable"
                     id="addManageTable">
                <thead>
                <tr>
                  <th data-sort-initial="true" data-type="numeric"></th>
                  <th> Notification </th>

                  <th data-type="numeric"> Date </th>

                </tr>
                </thead>
                <tbody>
                @foreach($notifications as $msg)

                  <tr>
                    <td class="add-img-selector" style="width:2%">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox">
                        </label>
                      </div>
                    </td>
                    <td class="add-img-td" style="width:14%">
{{ $msg->description }}
                    </td>

					  <td class="date-td" style="width:16%">
                      {{ $msg->created_at }}
                    </td>

                  </tr>
                @endforeach
				<tr>
					<td colspan="3">{{ $notifications->links() }}</td>
				</tr>
                
                </tbody>
              </table>
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