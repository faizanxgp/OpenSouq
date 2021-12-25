@extends('layouts.main')

@section('content')
	@if($service == 'facebook')
		<div class="title m-b-md">
			Welcome {{ $details->user['name']}} ! <br> Your email is : {{
    $details->user['email'] }} <br> You are {{ $details->user['gender'] }}.
		</div>
	@endif

@endsection
