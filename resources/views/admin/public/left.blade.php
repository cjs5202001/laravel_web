<aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
          <p class="app-sidebar__user-name">admin</p>
          <p class="app-sidebar__user-designation">超级管理员</p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item <?=active($active,'mainindex')?>" href="/admin/main"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">首页</span></a></li>
        
        <li class="treeview <?=expanded($expanded,'site')?>"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">基本设置</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item <?=active($active,'sitepassword')?>" href="/admin/site/password"><i class="icon fa fa-circle-o"></i> 修改密码</a></li>
          </ul>
        </li>
		
        <li class="treeview <?=expanded($expanded,'goods')?>"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">数据管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item <?=active($active,'goodsindex,goodsadd')?>" href="/admin/goods"><i class="icon fa fa-circle-o"></i> 主题数据</a></li>
          </ul>
        </li>
		
		<li class="treeview <?=expanded($expanded,'about')?>"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">用户管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item <?=active($active,'aboutindex')?>" href="?m=admin&c=about"><i class="icon fa fa-circle-o"></i> 评论管理</a></li>
          </ul>
        </li>
      </ul>
    </aside> 