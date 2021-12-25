<aside>
    <div class="inner-box">
        <div class="user-panel-sidebar">
            <div class="collapse-box">
                <h5 class="collapse-title no-border"> My Classified <a href="#MyClassified" data-toggle="collapse" class="pull-right"><i class="fa fa-angle-down"></i></a></h5>

                <div class="panel-collapse collapse in" id="MyClassified">
                    <ul class="acc-list">
                        <li class="active"><a href="{{ route('dashboard') }}"><i class="icon-home"></i> Personal Home </a>
                        </li>

                    </ul>
                </div>
            </div>
            <!-- /.collapse-box  -->
            <div class="collapse-box">
                <h5 class="collapse-title"> My Ads <a href="#MyAds" data-toggle="collapse" class="pull-right"><i class="fa fa-angle-down"></i></a>
                </h5>

                <div class="panel-collapse collapse in" id="MyAds">
                    <ul class="acc-list">
                        <li><a href="{{ route('user-ad') }}"><i class="icon-docs"></i> My
                            ads <span class="badge"></span> </a></li>
                        <li><a href="{{ route('favorite-ad') }}"><i class="icon-heart"></i>
                            Favourite ads <span class="badge"></span> </a></li>
                        {{--<li><a href="{{ route('user-ad') }}"><i class="icon-star-circled"></i>--}}
                            {{--Saved search <span class="badge"></span> </a></li>--}}
                        <li><a href="{{ route('archive-ad') }}"><i class="icon-folder-close"></i>
                            Archived ads <span class="badge"></span></a></li>
                        <li><a href="{{ route('pending-ad') }}"><i class="icon-hourglass"></i> Pending approval <span class="badge"></span></a></li>

                    </ul>
                </div>
            </div>

            <!-- /.collapse-box  -->
            <div class="collapse-box">
                <h5 class="collapse-title"> Account <a href="#TerminateAccount" data-toggle="collapse" class="pull-right"><i class="fa fa-angle-down"></i></a></h5>

				<div class="panel-collapse collapse in" id="TerminateAccount">
					<ul class="acc-list">
						<li><a href="{{ route('account') }}"><i class="icon-cancel-circled "></i> Update account </a></li>
						<li><a href="{{ route('messages') }}"><i class="icon-cancel-circled "></i> Messges </a></li>

                        <li><a href="#"><i class="icon-cancel-circled "></i> Close account </a></li>
                    </ul>
                </div>
            </div>
            <!-- /.collapse-box  -->
        </div>
    </div>
    <!-- /.inner-box  -->

</aside>