<header id="header">

    <!--公司logo、名称-->
    <div id="logo-group">
     <img src="{{ asset('/smar/img/logo2.png') }}" alt="SmartAdmin"width="55%"/>  
    </div>


    <div class="pull-right">


        <div id="hide-menu" class="btn-header pull-right">
            <span>
                <a href="javascript:void(0);" data-action="toggleMenu" title="Cotizacion">
                    <i class="fa fa-reorder"></i>
                </a>
            </span>
        </div>


        <!-- 退出按钮 -->
        <div id="logout" class="btn-header transparent pull-right">
            <span>
              <a href="{{ url('/logout') }}"
                  onclick="event.preventDefault();
                           document.getElementById('logout-form').submit();"><i class="fa fa-sign-out"></i>

              </a>
              <form id="logout-form"   title="desea salir?" action="{{ url('/logout') }}" method="POST" style="display: none;"><i class="fa fa-sign-out"></i>
                  {{ csrf_field() }}
              </form>
            </span>
        </div>

        <div id="fullscreen" class="btn-header transparent pull-right">
        					<span> <a href="javascript:void(0);" data-action="launchFullscreen" title="Full Screen"><i class="fa fa-arrows-alt"></i></a> </span>
        				</div>
    </div>

</header>
