<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>管理员列表 - 合同管理系统</title>
		<!-- basic styles -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="${basePath}/resources/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${basePath}/resources/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="${basePath}/resources/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<link rel="stylesheet" href="${basePath}/resources/css/jquery-ui-1.10.3.full.min.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/datepicker.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/ui.jqgrid.css" />

		<!-- ace styles -->

		<link rel="stylesheet" href="${basePath}/resources/css/ace.min.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${basePath}/resources/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="${basePath}/resources/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="${basePath}/resources/js/html5shiv.js"></script>
		<script src="${basePath}/resources/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							合同管理系统
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">

						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="${basePath}/resources/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎登录,</small>
									${adminName}
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

								<li>
									<a href="${basePath}/admin/logout">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<br>
						</div>

						<br />
					</div><!-- #sidebar-shortcuts -->

					<ul class="nav nav-list">
						<li class="active">
							<a href="${basePath}/admin/index">
								<i class="icon-home"></i>
								<span class="menu-text"> 基础信息 </span>
							</a>
						</li>


						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-cogs"></i>
								<span class="menu-text"> 配件管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="${basePath}/admin/part_category/list">
										<i class="icon-double-angle-right"></i>
										配件类别列表
									</a>
								</li>

								
								<li>
									<a href="#" class="dropdown-toggle">
										<i class="icon-double-angle-right"></i>

										配件列表
										<b class="arrow icon-angle-down"></b>
									</a>

									<ul class="submenu">
										<li>
											<a href="${basePath}/admin/part/list">
												<i class="icon-eye-open"></i>
												配件查看
											</a>
										</li>
										
										<li>
											<a href="${basePath}/admin/part/add">
												<i class="icon-edit"></i>
												配件添加
											</a>
										</li>

										
									</ul>
								</li>
							</ul>
							
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-coffee"></i>
								<span class="menu-text"> 分公司管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="${basePath}/admin/filiale/list">
										<i class="icon-double-angle-right"></i>
										分公司列表
									</a>
								</li>
								
								<li>
									<a href="${basePath}/admin/filiale/add">
										<i class="icon-double-angle-right"></i>
										分公司添加
									</a>
								</li>
							</ul>
							
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-group"></i>
								<span class="menu-text"> 供应商管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="${basePath}/admin/supplier/list">
										<i class="icon-double-angle-right"></i>
										供应商列表
									</a>
								</li>
								<li>
									<a href="${basePath}/admin/supplier/add">
										<i class="icon-double-angle-right"></i>
										供应商添加
									</a>
								</li>

							</ul>
						</li>
						
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-folder-open"></i>
								<span class="menu-text">合同管理</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="#" class="dropdown-toggle">
										<i class="icon-double-angle-right"></i>

										采购合同
										<b class="arrow icon-angle-down"></b>
									</a>

									<ul class="submenu">
										<li>
											<a href="${basePath}/admin/purchase/list">
												<i class="icon-eye-open"></i>
												采购合同列表
											</a>
										</li>
										<li>
											<a href="${basePath}/admin/purchase/add">
												<i class="icon-edit"></i>
												采购合同添加
											</a>
										</li>

										<li>
											<a href="" class="dropdown-toggle">
												<i class="icon-folder-close"></i>

												采购合同汇总
												<b class="arrow icon-angle-down"></b>
											</a>

											<ul class="submenu">
												<li>
													<a href="${basePath}/admin/purchase/report_part">
														<i class="icon-leaf"></i>
														采购配件汇总
													</a>
												</li>

												<li>
													<a href="${basePath}/admin/purchase/report_part_category">
														<i class="icon-leaf"></i>
														采购配件类别汇总
													</a>
												</li>
												
												<li>
													<a href="${basePath}/admin/purchase/report_supplier">
														<i class="icon-leaf"></i>
														采购供应商汇总
													</a>
												</li>
												
												
											</ul>
										</li>
									</ul>
								</li>
								
								
							</ul>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-cog"></i>
								<span class="menu-text"> 系统管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="${basePath}/admin/dump">
										<i class="icon-double-angle-right"></i>
										数据转储
									</a>
								</li>

								
								<li>
									<a href="#" class="dropdown-toggle">
										<i class="icon-double-angle-right"></i>

										管理员账号管理
										<b class="arrow icon-angle-down"></b>
									</a>

									<ul class="submenu">
										<li>
											<a href="${basePath}/admin/list">
												<i class="icon-eye-open"></i>
												管理员账号查看
											</a>
										</li>
										
										<li>
											<a href="${basePath}/admin/add">
												<i class="icon-edit"></i>
												管理员账号添加
											</a>
										</li>

										
									</ul>
								</li>
							</ul>
							
						</li>
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							
						</ul><!-- .breadcrumb -->

						
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								管理员列表
								<small>
									<i class="icon-double-angle-right"></i>
									双击进行详细修改
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								
								<div>
									<table id="grid-table"></table>
									<div id="grid-pager"></div>
								</div>

								
								

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->


		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='${basePath}/resources/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${basePath}/resources/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${basePath}/resources/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${basePath}/resources/js/bootstrap.min.js"></script>
		<script src="${basePath}/resources/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<script src="${basePath}/resources/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="${basePath}/resources/js/jqGrid/jquery.jqGrid.min.js"></script>
		<script src="${basePath}/resources/js/jqGrid/i18n/grid.locale-cn.js"></script>

		<!-- ace scripts -->

		<script src="${basePath}/resources/js/ace-elements.min.js"></script>
		<script src="${basePath}/resources/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			
			jQuery(function($) {
				var grid_selector = "#grid-table";
				var pager_selector = "#grid-pager";
				
				
				
				
				$("#submitPartCategoryAddFrom").click(function() {
					$("#partCategoryAddFrom").submit();
				});
				
			
				jQuery(grid_selector).jqGrid({
					url:"admin_list",
					mtype:'POST',
					datatype: "json",
					height: 250,
					colNames:[' ', 'sn','管理员账号','密码', '管理员名字', '管理员所属公司', '管理员对应角色'],
					colModel:[
						{name:'myac',index:'', width:80, fixed:true, sortable:false, resize:false, 
							formatter:'actions', 
							formatoptions:{ 
								keys:true,
								
								delOptions:{recreateForm: true, beforeShowForm:beforeDeleteCallback},
								//editformbutton:true, editOptions:{recreateForm: true, beforeShowForm:beforeEditCallback}
							}
						},
						{name:'sn',index:'id', width:60, align:"center", sorttype:"int", editable: false, editrules:{required:true}},
						{name:'username',index:'usernamename', width:150, align:"center",editable: false,editrules:{required:true}},
						{name:'password',index:'password', width:150, align:"center",editable: false,editrules:{required:true}},
						{name:'name',index:'name', width:150, align:"center",editable: true,editrules:{required:true}},
						{name:'filiale',index:'filiale', width:60, align:"center", editable: false, formatter:function(cellvalue, options, rowObject) { if (cellvalue == null) return "-"; else return ""+cellvalue.name;}},
						{name:'role',index:'role', width:60, align:"center", editable: false, formatter:function(cellvalue, options, rowObject) { if (cellvalue == null) return "-"; else return ""+cellvalue.name;}}
					], 
					jsonReader: {
						id: "id", //设置返回参数中，表格ID的名字为blackId
						root:"content",
						repeatitems: false
					},
					ondblClickRow: function(id){  
						window.open("${basePath}/admin/update?id=" + id);
					},
					
					viewrecords : true,
					rowNum:10,
					rowList:[10,20,30],
					pager : pager_selector,
					altRows: true,
					multiselect: true,
			        multiboxonly: true,
			
					loadComplete : function() {
						var table = this;
						setTimeout(function(){
							styleCheckbox(table);
							
							updateActionIcons(table);
							updatePagerIcons(table);
							enableTooltips(table);
						}, 0);
					},
			
					editurl: "edit",
					caption: "管理员列表",
					autowidth: true
			
				});
			
				//enable search/filter toolbar
				//jQuery(grid_selector).jqGrid('filterToolbar',{defaultSearch:true,stringResult:true})
			
				//switch element when editing inline
				function aceSwitch( cellvalue, options, cell ) {
					setTimeout(function(){
						$(cell) .find('input[type=checkbox]')
								.wrap('<label class="inline" />')
							.addClass('ace ace-switch ace-switch-5')
							.after('<span class="lbl"></span>');
					}, 0);
				}
				//enable datepicker
				function pickDate( cellvalue, options, cell ) {
					setTimeout(function(){
						$(cell) .find('input[type=text]')
								.datepicker({format:'yyyy-mm-dd' , autoclose:true}); 
					}, 0);
				}
			
			
				//navButtons
				jQuery(grid_selector).jqGrid('navGrid',pager_selector,
					{ 	//navbar options
						edit: true,
						editicon : 'icon-pencil blue',
						add:false,
						
						del: true,
						delicon : 'icon-trash red',
						
						search: false,
						searchicon : 'icon-search orange',
						
						refresh: true,
						refreshicon : 'icon-refresh green',
						
						view: true,
						viewicon : 'icon-zoom-in grey',
					},
					{
						//编辑
						closeAfterEdit: true,
						recreateForm: true,
						beforeShowForm : function(e) {
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
							style_edit_form(form);
						}
					},
					{
						//添加
						closeAfterAdd: true,
						recreateForm: true,
						viewPagerButtons: false,
						beforeShowForm : function(e) {
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
							style_edit_form(form);
						}
					},
					{
						//删除
						recreateForm: true,
						beforeShowForm : function(e) {
							var form = $(e[0]);
							if(form.data('styled')) return false;
							
							form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
							style_delete_form(form);
							
							form.data('styled', true);
						},
						onClick : function(e) {
							alert(1);
						}
					},
					{
						//搜索
						recreateForm: true,
						afterShowSearch: function(e){
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
							style_search_form(form);
						},
						afterRedraw: function(){
							style_search_filters($(this));
						}
						,
						multipleSearch: true,
						/**
						multipleGroup:true,
						showQuery: true
						*/
					},
					{
						//view record form
						
						recreateForm: true,
						beforeShowForm: function(e){
							// 确认框
							var r = confirm("是否查看详细信息？");
							if (r) {
								var id = $(grid_selector).jqGrid('getGridParam','selrow');
								
								window.open("${basePath}/admin/show?id=" + id);
								
							}
							
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
							
						}
					}
				)
			
			
				
				function style_edit_form(form) {
					//enable datepicker on "sdate" field and switches for "stock" field
					form.find('input[name=sdate]').datepicker({format:'yyyy-mm-dd' , autoclose:true})
						.end().find('input[name=stock]')
							  .addClass('ace ace-switch ace-switch-5').wrap('<label class="inline" />').after('<span class="lbl"></span>');
			
					//update buttons classes
					var buttons = form.next().find('.EditButton .fm-button');
					buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
					buttons.eq(0).addClass('btn-primary').prepend('<i class="icon-ok"></i>');
					buttons.eq(1).prepend('<i class="icon-remove"></i>')
					
					buttons = form.next().find('.navButton a');
					buttons.find('.ui-icon').remove();
				}
				
				function style_delete_form(form) {
					var buttons = form.next().find('.EditButton .fm-button');
					buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
					buttons.eq(0).addClass('btn-danger').prepend('<i class="icon-trash"></i>');
					buttons.eq(1).prepend('<i class="icon-remove"></i>')
				}
				
				function style_search_filters(form) {
					form.find('.delete-rule').val('X');
					form.find('.add-rule').addClass('btn btn-xs btn-primary');
					form.find('.add-group').addClass('btn btn-xs btn-success');
					form.find('.delete-group').addClass('btn btn-xs btn-danger');
				}
				function style_search_form(form) {
					var dialog = form.closest('.ui-jqdialog');
					var buttons = dialog.find('.EditTable')
					buttons.find('.EditButton a[id*="_reset"]').addClass('btn btn-sm btn-info').find('.ui-icon').attr('class', 'icon-retweet');
					buttons.find('.EditButton a[id*="_query"]').addClass('btn btn-sm btn-inverse').find('.ui-icon').attr('class', 'icon-comment-alt');
					buttons.find('.EditButton a[id*="_search"]').addClass('btn btn-sm btn-purple').find('.ui-icon').attr('class', 'icon-search');
				}
				
				function beforeDeleteCallback(e) {
					var form = $(e[0]);
					if(form.data('styled')) return false;
					
					form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
					style_delete_form(form);
					
					form.data('styled', true);
				}
				
				function beforeEditCallback(e) {
					var form = $(e[0]);
					form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
					style_edit_form(form);
				}
			
			
			
				//it causes some flicker when reloading or navigating grid
				//it may be possible to have some custom formatter to do this as the grid is being created to prevent this
				//or go back to default browser checkbox styles for the grid
				function styleCheckbox(table) {
				/**
					$(table).find('input:checkbox').addClass('ace')
					.wrap('<label />')
					.after('<span class="lbl align-top" />')
			
			
					$('.ui-jqgrid-labels th[id*="_cb"]:first-child')
					.find('input.cbox[type=checkbox]').addClass('ace')
					.wrap('<label />').after('<span class="lbl align-top" />');
				*/
				}
				
			
				//unlike navButtons icons, action icons in rows seem to be hard-coded
				//you can change them like this in here if you want
				function updateActionIcons(table) {
					/**
					var replacement = 
					{
						'ui-icon-pencil' : 'icon-pencil blue',
						'ui-icon-trash' : 'icon-trash red',
						'ui-icon-disk' : 'icon-ok green',
						'ui-icon-cancel' : 'icon-remove red'
					};
					$(table).find('.ui-pg-div span.ui-icon').each(function(){
						var icon = $(this);
						var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
						if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
					})
					*/
				}
				
				//replace icons with FontAwesome icons like above
				function updatePagerIcons(table) {
					var replacement = 
					{
						'ui-icon-seek-first' : 'icon-double-angle-left bigger-140',
						'ui-icon-seek-prev' : 'icon-angle-left bigger-140',
						'ui-icon-seek-next' : 'icon-angle-right bigger-140',
						'ui-icon-seek-end' : 'icon-double-angle-right bigger-140'
					};
					$('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function(){
						var icon = $(this);
						var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
						
						if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
					})
				}
			
				function enableTooltips(table) {
					$('.navtable .ui-pg-button').tooltip({container:'body'});
					$(table).find('.ui-pg-div').tooltip({container:'body'});
				}
			
				//var selr = jQuery(grid_selector).jqGrid('getGridParam','selrow');
			
			
			});
		</script>
		
</body>
</html>
