<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>合同列表 - 合同管理系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="${basePath}/resources/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${basePath}/resources/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="${basePath}/resources/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<link rel="stylesheet" href="${basePath}/resources/css/jquery-ui-1.10.3.custom.min.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/chosen.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/datepicker.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/bootstrap-timepicker.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/daterangepicker.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/colorpicker.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/ui.jqgrid.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/bootstrap-datetimepicker.min.css" />
		<link rel="stylesheet" href="${basePath}/resources/css/bootstrap.min.css" />


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
			<style>
			.error {
				color: red;
			}
			</style>
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
						<br/>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
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
								采购合同列表
								<small>
									<i class="icon-double-angle-right"></i>
									
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<!--
                                	表单开始
                                -->
								<form class="form-horizontal" role="form" method="POST" id="searchForm" action="${basePath}/admin/purchase/purchase_list">
									
									<div class="space-7"></div>
									<div class="form-group">
										

						                <label for="dtp_input2" class="col-sm-1 control-label">日期选择</label>
						                <div class="input-group date form_date col-sm-3" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
						                    <input class="form-control" size="16" type="text" value="" name="start" id="start" readonly>
						                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						                </div>
						                <div class="input-group date form_date col-sm-3" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
						                    <input class="form-control" size="16" type="text" value="" name="end" id="end" readonly>
						                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						                </div>
										<div class="col-xs-12 col-sm-5">
											<label class="col-sm-4 control-label no-padding-right" for="filialeId"> 分公司 </label>
											<div class="col-sm-8">
												<select class="width-70 chosen-select" id="filialeId" data-placeholder="选择一家公司" name="filialeId">
													<option value="">&nbsp;</option>
													<#list filiales as filiale>
														<option value="${filiale.id}">${filiale.name}</option>
													</#list>
												</select>
											</div>
										</div>
										<div class="col-xs-12 col-sm-12">
											<div class="col-sm-8">
												<button class="btn btn-info" type="button" id="search">搜索</button>
											</div>
										</div>
									</div>
									<hr class="hr-32">
									
									</div>
									
									
								</form>
								<hr class="hr-32">
								<div class="col-sm-12">
									<table id="grid-table"></table>
									<div id="grid-pager"></div>
								</div>
								
								<!--
                                	
                                	描述：表单结束
                                -->
								</div><!-- PAGE CONTENT ENDS -->
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

		<!--[if lte IE 8]>
		  <script src="${basePath}/resources/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="${basePath}/resources/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="${basePath}/resources/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${basePath}/resources/js/chosen.jquery.min.js"></script>
		<script src="${basePath}/resources/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="${basePath}/resources/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="${basePath}/resources/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="${basePath}/resources/js/date-time/moment.min.js"></script>
		<script src="${basePath}/resources/js/date-time/daterangepicker.min.js"></script>
		<script src="${basePath}/resources/js/bootstrap-colorpicker.min.js"></script>
		<script src="${basePath}/resources/js/jquery.knob.min.js"></script>
		<script src="${basePath}/resources/js/jquery.autosize.min.js"></script>
		<script src="${basePath}/resources/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="${basePath}/resources/js/jquery.maskedinput.min.js"></script>
		<script src="${basePath}/resources/js/bootstrap-tag.min.js"></script>
		
		<script src="${basePath}/resources/js/jqGrid/jquery.jqGrid.min.js"></script>

		<!-- ace scripts -->

		<script src="${basePath}/resources/js/ace-elements.min.js"></script>
		<script src="${basePath}/resources/js/ace.min.js"></script>
		<script src="${basePath}/resources/js/jquery.validate.min.js"></script>
		<script src="${basePath}/resources/js/jquery.form.js"></script>
		<script src="${basePath}/resources/js/jqGrid/i18n/grid.locale-cn.js"></script>
		<!-- inline scripts related to this page -->
		<script type="text/javascript" src="${basePath}/resources/js/date-time/bootstrap-datetimepicker.js" ></script>
		<script type="text/javascript" src="${basePath}/resources/js/date-time/bootstrap-datetimepicker.zh-CN.js" ></script>
		<script type="text/javascript">
		
		jQuery(function($) {
		
			var d = new Date();
    		var initAdd = d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
			$("#end").val(initAdd);
			var ms = new Date(d.getTime()-10*60*60*24*1000);
    		var delivery = new Date(ms);
    		var initDelivery = delivery.getFullYear()+"-"+(delivery.getMonth()+1)+"-"+delivery.getDate();
    		$("#start").val(initDelivery);
		
			$('.form_date').datetimepicker({
				format: "yyyy-mm-dd",
		        language:  'zh-CN',
		        weekStart: 7,
		        todayBtn:  1,
				autoclose: 1,
				todayHighlight: 1,
				startView: 2,
				minView: 2,
				forceParse: 0
		    });
			
			
				var grid_selector = "#grid-table";
				var pager_selector = "#grid-pager";
				   
				jQuery(grid_selector).jqGrid({
					dataType:"local",
					colNames:['合同序列号','供应商', '采购方', '审核员','制单员','制单日期', '交货日期', '状态', '上一次修改状态时间'],
					colModel:[
						{name:'sn',index:'id', width:120, align:"center"},
						{name:'supplierName',index:'supplierName', width:50, align:"center"},
						{name:'filialeName',index:'filialeName', width:60, align:"center"},
						{name:'auditor',index:'auditor', width:60, align:"center", formatter:function(cellValue, options, rowObject) 
							{ 	
								if (cellValue == null)
									return "-";
								else
									return ""+cellValue.name; 
							}},
						{name:'operator',index:'operator', width:60, align:"center", formatter:function(cellValue, options, rowObject) 
							{ 
								if (cellValue == null)
									return "-";
								else
									return ""+cellValue.name; 
							}},
						{name:'addTime',index:'addTime', width:60, align:"center", formatter:function(cellValue, options, rowObject) 
							{ 
								var add = new Date(cellValue); 
								return ""+add.getFullYear()+"-"+(add.getMonth()+1)+"-"+add.getDate(); 
							}},
						{name:'deliveryTime',index:'deliveryTime', width:60, align:"center", formatter:function(cellValue, options, rowObject) 
							{ 
								var delivery = new Date(cellValue); 
								return ""+delivery.getFullYear()+"-"+(delivery.getMonth()+1)+"-"+delivery.getDate(); 
							}},
						{name:'status',index:'status', width:60, align:"center", formatter:function(cellValue, options, rowObject) 
							{
								return ""+cellValue;
							}},
						{name:'auditTime',index:'auditTime', width:60, align:"center", formatter:function(cellValue, options, rowObject) 
							{
								if (cellValue == null) {
									return "-"
								;} 
								else { 
									var audit = new Date(cellValue);
									return ""+audit.getFullYear()+"-"+(audit.getMonth()+1)+"-"+audit.getDate()+" "+audit.getHours()+":"+audit.getMinutes()+":"+audit.getSeconds();
								};
							}}
					], 
					
					viewrecords : true,
					rowNum:10,
					rowList:[10,20,30],
					pager : pager_selector,
					altRows: true,
					multiselect: true,
			        multiboxonly: true,
			
					loadComplete : function() {
						$("#grid-table").addJSONData(grid_data);
						var table = this;
						setTimeout(function(){
							styleCheckbox(table);
							
							updateActionIcons(table);
							updatePagerIcons(table);
							enableTooltips(table);
						}, 0);
					},
			
					editurl: "edit",
					caption: "采购合同列表",
					autowidth: true
			
				});
				//navButtons
				jQuery(grid_selector).jqGrid('navGrid',pager_selector,
					{ 	//navbar options
						edit: false,
						editicon : 'icon-pencil blue',
						add:false,
						
						del: false,
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
								
								window.open("${basePath}/admin/purchase/audit?id=" + id);
								
							}
							
							var form = $(e[0]);
							form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
							
						}
					}
				)
			
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
					buttons.eq(0).append('<i class="icon-chevron-left"></i>');
					buttons.eq(1).append('<i class="icon-chevron-right"></i>');		
				}
			
				function style_delete_form(form) {
					var buttons = form.next().find('.EditButton .fm-button');
					buttons.addClass('btn batn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
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
			
			// jquery表单验证
			$("#searchForm").validate({
				
				rules: {
					start:"dateISO",
					end:"dateISO"
				},
				messages: {
					start:"yyyy-MM-dd",
					end:"yyyy-MM-dd"
				}
			});
			
			$("#search").click(function(){
				var start = $("#start").val();
				var end = $("#end").val();
				var filialeId = $("#filialeId").val();
			
				$.ajax({
					url:"${basePath}/admin/purchase/purchase_list",
					async:false,
					type:"post",
					dataType:"json",
					data:{start:start, end:end, filialeId:filialeId},
					success:function(data) {
						
						jQuery("#grid-table").jqGrid("clearGridData");
						for (var i = 0; i < data.length; i++) {
							jQuery("#grid-table").jqGrid("addRowData", data[i].id, data[i]);
						} 
					}
				});
			});
		
			$(".chosen-select").chosen(); 
		});
	
		</script>
</html>
