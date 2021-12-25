<div class="header">
	<nav class="navbar   navbar-site navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a href="{{ route('home') }}" class="navbar-brand logo logo-title">
					<!-- Original Logo will be placed here  --><img alt="img" src="{{ URL::to('src/images/sab-logo.png') }}" class="no-margin img-responsive">{{--
          <span class="logo-icon"><i class="icon icon-search-1 ln-shadow-logo shape-0"></i> </span>
          open<span>SOUQ </span>--}}
				</a>
				<div class="flag-lang">
  <span class="flag">
   <img src="https://placeholdit.imgix.net/~text?txtsize=5&amp;txt=30%C3%9720&amp;w=30&amp;h=20&amp;fm=jpg&amp;txtpad=1">
  </span>
					<a href="#">EN</a>
				</div>
			</div>
			<div class="navbar-collapse collapse">

				<ul class="nav navbar-nav navbar-right">
					@if(isset($user))
						<li><a href="">Welcome {{ $user->name }}</a></li>
						@if (($user->roles->first()->id) == 3)
							<li><a href="{{ route('admin-dashboard') }}">Dashboard</a></li>
						@else
							<li><a href="{{ route('dashboard') }}">Dashboard</a></li>
							<li><a href="{{ route('messages') }}">Messages <span class="label label-warning">{{ $user->hasMessage() }}</span></a></li>
							{{--@if(Session::has('messages')) {{ Session::get('messages') }} @endif--}}
							<li><a href="{{ route('notifications') }}">Notifications <span class="label label-warning">{{ $user->hasNotification() }}</span></a></li>
						@endif

						<li><a href="{{ route('logout') }}">Logout</a></li>
					@else
						<li><a href="{{ route('signin') }}">Login</a></li>
						<li><a href="{{ route('signup') }}">Signup</a></li>
					@endif
					<li class="postadd"><a class="btn btn-block btn-border btn-post btn-danger" href="{{ route('post-ads') }}"><i class="fa fa-plus"></i> Post Free Add</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
</div>
<!-- /.header -->