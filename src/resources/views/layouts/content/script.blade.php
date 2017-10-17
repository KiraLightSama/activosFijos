

<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
<script data-pace-options='{ "restartOnRequestAfter": true }' src="{{ asset('./smar/js/plugin/pace/pace.min.js') }}"></script>

<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
<script src="{{ asset('/smar/js/libs/jquery-2.0.2.min.js') }}"></script>

<script src="{{ asset('./smar/js/libs/jquery-ui-1.10.3.min.js') }}"></script>


<!-- IMPORTANT: APP CONFIG -->
<script src="{{ asset('./smar/js/app.config.js') }}"></script>

<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
<script src="{{ asset('./smar/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js') }}"></script>

<!-- BOOTSTRAP JS -->
<script src="{{ asset('./smar/js/bootstrap/bootstrap.min.js') }}"></script>

<!-- CUSTOM NOTIFICATION -->
<script src="{{ asset('./smar/js/notification/SmartNotification.min.js') }}"></script>

<!-- JARVIS WIDGETS -->
<script src="{{ asset('./smar/js/smartwidgets/jarvis.widget.min.js') }}"></script>

<!-- SPARKLINES -->
<script src="{{ asset('./smar/js/plugin/sparkline/jquery.sparkline.min.js') }}"></script>

<!-- JQUERY VALIDATE -->
<script src="{{ asset('./smar/js/plugin/jquery-validate/jquery.validate.min.js') }}"></script>


<!-- JQUERY MASKED INPUT -->
<script src="{{ asset('./smar/js/plugin/masked-input/jquery.maskedinput.min.js') }}"></script>

<!-- JQUERY SELECT2 INPUT -->
<script src="{{ asset('./smar/js/plugin/select2/select2.min.js') }}"></script>


<!-- browser msie issue fix -->
<script src="{{ asset('./smar/js/plugin/msie-fix/jquery.mb.browser.min.js') }}"></script>

<!-- FastClick: For mobile devices -->
<script src="{{ asset('./smar/js/plugin/fastclick/fastclick.min.js') }}"></script>

<script src="{{ asset('./smar/js/smartwidgets/jarvis.widget.min.js') }}"></script>


<!-- Demo purpose only -->

<!-- Demo purpose only -->
<script src="./smar/js/demo.min.js"></script>

















<!-- PAGE RELATED PLUGIN(S) -->
<script src="./smar/js/plugin/summernote/summernote.min.js"></script>
<script src="./smar/js/plugin/markdown/markdown.min.js"></script>
<script src="./smar/js/plugin/markdown/to-markdown.min.js"></script>
<script src="./smar/js/plugin/markdown/bootstrap-markdown.min.js"></script>

<script type="text/javascript">

    // DO NOT REMOVE : GLOBAL FUNCTIONS!

    $(document).ready(function() {

        pageSetUp();

		/*
		 * SUMMERNOTE EDITOR
		 */

        $('.summernote').summernote({
            height : 180,
            focus : false,
            tabsize : 2
        });

		/*
		 * MARKDOWN EDITOR
		 */

        $("#mymarkdown").markdown({
            autofocus:false,
            savable:true
        })


    })

</script>

<!-- Your GOOGLE ANALYTICS CODE Below -->
<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })();

</script>


<!-- MAIN APP JS FILE -->
<script src="{{ asset('./smar/js/app.min.js') }}"></script>


<script type="text/javascript">

    $(document).ready(function() {



        pageSetUp();


        var pagefunction = function (){
            loadScript(".../smar/plugin.js", run_after_loaded);
        }

    })

</script>
