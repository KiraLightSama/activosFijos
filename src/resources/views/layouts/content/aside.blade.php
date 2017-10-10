<!--style type="text/css">
    aside {
    ;background:linear-gradient(to right, rgba(58, 54, 51, 0.08) 93%, rgba(42, 39, 37, 0.1) 100%)

    }
</style!-->


<aside id="left-panel" >

    <div class="login-info">
            <span> <!-- User image size is adjusted inside CSS, it should stay as it -->

                <a href="javascript:void(0);" id="show-shortcut" data-action="toggleShortcut">
                    <i class="fa fa-lg fa-fw fa-user"></i>
                    <span>
                      <a >  {{ Auth::user()->name }}</a>

                    </span>
                </a>

            </span>
    </div>

    <nav>

        <ul style="">

            <li >
                <a href="{{ route('home') }}"  title="Dashboard"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Home</span><b class="collapse-sign"><em class="fa fa-minus-square-o"></em></b></a>
            </li>



            <li>
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-list-alt"></i> <span class="menu-item-parent">Privilegios </span><b class="collapse-sign"><em class="fa fa-plus-square-o"></em></b></a>
                <ul>
                    <li >
                        <a href="{{ route('users.index') }}"  title="Dashboard"><i class="fa fa-lg fa-fw fa-users"></i> <span class="menu-item-parent">Usuarios</span><b class="collapse-sign"><em class="fa fa-minus-square-o"></em></b></a>
                    </li>

                    <li >
                        <a href="{{ route('roles.index') }}"  title="Dashboard"><i class="fa fa-lg fa-fw fa-users"></i> <span class="menu-item-parent">Roles</span><b class="collapse-sign"><em class="fa fa-minus-square-o"></em></b></a>
                    </li>
                </ul>
            </li>


            <li>
                <a href="#">
                    <i class="fa fa-lg fa-fw fa-list-alt"></i> <span class="menu-item-parent">Activos </span><b class="collapse-sign"><em class="fa fa-plus-square-o"></em></b></a>
                <ul>
                    <li >
                        <a href="{{ route('activo.index') }}"  title="Dashboard"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Activos</span><b class="collapse-sign"><em class="fa fa-minus-square-o"></em></b></a>
                    </li>


                    <li >
                        <a href="{{ route('grupos.index') }}"  title="Dashboard"><i class="fa fa-lg fa-fw fa-users"></i> <span class="menu-item-parent">Grupos</span><b class="collapse-sign"><em class="fa fa-minus-square-o"></em></b></a>
                    </li>
                    <li >
                        <a href="{{ route('proveedores.index') }}"  title="Dashboard"><i class="fa fa-lg fa-fw fa-users"></i> <span class="menu-item-parent">Proveedores</span><b class="collapse-sign"><em class="fa fa-minus-square-o"></em></b></a>
                    </li>
                </ul>
            </li>
            <li>
              <a href="#">
                  <i class="fa fa-lg fa-fw fa-list-alt"></i> <span class="menu-item-parent">Empresa </span><b class="collapse-sign"><em class="fa fa-plus-square-o"></em></b>
                </a>
              <ul>
                <li >
                    <a href="{{ route('empresas.index') }}"  title="Dashboard"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Empresas</span><b class="collapse-sign"><em class="fa fa-minus-square-o"></em></b></a>
                </li>
                <li >
                    <a href="{{ route('areas.index') }}"  title="Dashboard"><i class="fa fa-lg fa-fw fa-sitemap"></i> <span class="menu-item-parent">Areas-Departamentos</span><b class="collapse-sign"><em class="fa fa-minus-square-o"></em></b></a>
                </li>
              </ul>

            </li>


        </ul>
    </nav>

    <span class="minifyme" data-action="minifyMenu">
        <i class="fa fa-arrow-circle-left hit"></i>
    </span>

</aside>
