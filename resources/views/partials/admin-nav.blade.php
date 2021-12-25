<aside>
    <div class="inner-box">
        <div class="user-panel-sidebar">
            <div class="collapse-box">
                <h5 class="collapse-title no-border"> Admin Dashboard <a href="#MyClassified" data-toggle="collapse" class="pull-right"><i class="fa fa-angle-down"></i></a></h5>

                <div class="panel-collapse collapse in" id="MyClassified">
                    <ul class="acc-list">
						@if (($user->roles->first()->id) == 3)
                        <li class="active"><a href="{{ route('admin-dashboard') }}"><i class="icon-home"></i> Home </a>
                        </li>
						@else
							<li class="active"><a href="{{ route('manager-dashboard') }}"><i class="icon-home"></i> Home </a>
							</li>

							@endif
						<li class=""><a href="{{ route('admin-account') }}"><i class="icon-home"></i> Account </a>
						</li>


                    </ul>
                </div>
            </div>
            <!-- /.collapse-box  -->
            <div class="collapse-box">
                <h5 class="collapse-title"> Manage <a href="#MyAds" data-toggle="collapse" class="pull-right"><i class="fa fa-angle-down"></i></a>
                </h5>

                <div class="panel-collapse collapse in" id="MyAds">
                    <ul class="acc-list">
                        <li><a href="{{ route('admin-users') }}"><i class="icon-docs"></i> Users <span class="badge">42</span> </a></li>
                        <li><a href="{{ route('admin-ads') }}"><i class="icon-heart"></i> Ads <span class="badge">42</span> </a></li>
                        <li><a href="{{ route('admin-pending-ads') }}"><i class="icon-hourglass"></i> Pending approval <span class="badge">42</span></a></li>

                    </ul>
                </div>
            </div>

            <!-- /.collapse-box  -->
            <div class="collapse-box">
                <h5 class="collapse-title"> Data Management <a href="#TerminateAccount" data-toggle="collapse" class="pull-right"><i class="fa fa-angle-down"></i></a></h5>

                <div class="panel-collapse collapse in" id="TerminateAccount">
                    <ul class="acc-list">
                        @if (($user->roles->first()->id) == 3)
                        <li><a href="{{ route('admin-category') }}"><i class="icon-star-circled"></i> Categories <span class="badge"></span> </a></li>
                        <li><a href="{{ route('admin-subcategory') }}"><i class="icon-star-circled"></i> Sub Categories <span class="badge"></span> </a></li>
                        <li><a href="{{ route('admin-city') }}"><i class="icon-folder-close"></i> Cities <span class="badge"></span></a></li>
							<li><a href="{{ route('admin.emails') }}"><i class="icon-folder-close"></i> Emails <span class="badge"></span></a></li>
							<li><a href="{{ route('admin.pages') }}"><i class="icon-folder-close"></i> Pages <span class="badge"></span></a></li>
                            @endif
                    </ul>
                </div>
            </div>
            <!-- /.collapse-box  -->
        </div>
    </div>
    <!-- /.inner-box  -->

</aside>