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
				<h2> {{ $list_title }} </h2>
                @foreach($messages as $msg)
					<div class="message @if($msg->sender==1) blue @else green pull-right @endif">
						<div>@if($msg->sender==1) {{ $list_user_name }} @else {{ $user_name }} @endif
							{{ $msg->created_at }}
						</div>
						<div>{{ $msg->description }}</div>
					</div>
                @endforeach
				<div class="message-reply">
					<h2>Reply</h2>
					<form method="post" action="{{ route('message-reply') }}">
						<input type="hidden" name="list_id" value="{{ $listing_id }}" />
						<input type="hidden" name="list_user_id" value="{{ $listing_user_id }}" />
						<input type="hidden" name="other_user_id" value="{{ $other_user_id }}" />
						@if($user->id==$listing_user_id)
							<input type="hidden" name="sender" value="1" />
							<input type="hidden" name="user_id" value="{{ $other_user_id }}" />
						@else
							<input type="hidden" name="sender" value="2" />
							<input type="hidden" name="user_id" value="{{ $listing_user_id }}" />
						@endif
						<textarea class="form-control" name="msg"></textarea>
						<input type="submit" class="btn btn-primary" value="Send Reply" />
						{{ csrf_field() }}
					</form>
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