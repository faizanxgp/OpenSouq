    <div class="footer" id="footer">
        <div class="container">
            <ul class=" pull-left navbar-link footer-nav">
                <li><a href="{{ route('home') }}"> Home </a> <a href="#"> About us </a> <a href="#"> Terms and  Conditions </a> <a href="#"> Privacy Policy </a> <a href="#"> Contact us </a> <a href="#"> FAQ </a>
            </ul>
            <ul class=" pull-right navbar-link footer-nav">
                <li> &copy; 2017 SooqAliBaba</li>
            </ul>
        </div>

    </div>
    <!-- /.footer -->
</div>
<!-- /.wrapper -->

<!-- Le javascript
================================================== -->

<!-- Placed at the end of the document so the pages load faster -->

{{--https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js--}}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="{{ URL::to('src/assets/bootstrap/js/bootstrap.min.js') }}"></script>

<script src="{{ URL::to('src/js/modernizr.js') }}"></script>

<!-- include carousel slider plugin  -->
<script src="{{ URL::to('src/assets/js/owl.carousel.min.js') }}"></script>

<!-- include equal height plugin  -->
<script src="{{ URL::to('src/assets/js/jquery.matchHeight-min.js') }}"></script>

<!-- include jquery list shorting plugin plugin  -->
<script src="{{ URL::to('src/assets/js/hideMaxListItem.js') }}"></script>

<!-- include jquery.fs plugin for custom scroller and selecter  -->
<script src="{{ URL::to('src/assets/plugins/jquery.fs.scroller/jquery.fs.scroller.js') }}"></script>
<script src="{{ URL::to('src/assets/plugins/jquery.fs.selecter/jquery.fs.selecter.js') }}"></script>


<script src="{{ URL::to('src/js/jquery.filer.min.js') }}"></script>
<link href="{{ URL::to('src/css/jquery.filer.css') }}" type="text/css" rel="stylesheet" />
<link href="{{ URL::to('src/css/themes/jquery.filer-dragdropbox-theme.css') }}" type="text/css" rel="stylesheet" />



{{--<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>--}}
{{--<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet">--}}
{{--<script type="text/javascript">--}}
{{--//		$(document).ready(function() {--}}
{{--//			$(".js-example-basic-single").select2();--}}
{{--//		});--}}
{{--</script>--}}


<!-- include custom script for site  -->
<script src="{{ URL::to('src/assets/js/script.js') }}"></script>

<!-- include custom script for site  -->
<script src="{{ URL::to('src/selectize.min.js') }}"></script>
<link href="{{ URL::to('src/selectize.css') }}" type="text/css" rel="stylesheet" />

@yield('js2')
<script src="{{ URL::to('src/js/sooq.js') }}"></script>
<!-- additional scripts -->
@yield('js')

<!-- include jquery autocomplete plugin  -->

{{--<script type="text/javascript" src="{{ URL::to('assets/plugins/autocomplete/jquery.mockjax.js') }}"></script>--}}
{{--<script type="text/javascript" src="{{ URL::to('assets/plugins/autocomplete/jquery.autocomplete.js') }}"></script>--}}
{{--<script type="text/javascript" src="{{ URL::to('assets/plugins/autocomplete/usastates.js') }}"></script>--}}

{{--<script type="text/javascript" src="{{ URL::to('assets/plugins/autocomplete/autocomplete-demo.js') }}"></script>--}}