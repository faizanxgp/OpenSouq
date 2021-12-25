@extends('layouts.main')

@section('content')

<div class="container">
@if(Session::has('flash_message'))
    <div class="alert alert-success">
        {{ Session::get('flash_message') }}
    </div>
@endif
</div>
<div class="main-container">
    <div class="container">
        <div class="col-lg-12 content-box ">
			{!! $page->description !!}
        </div>
        <div style="clear: both"></div>
	</div>
</div>
<!-- /.main-container -->
@endsection
