<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>合同添加 - 合同管理系统</title>
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
									<a href="#">
										<i class="icon-cog"></i>
										设置
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										个人资料
									</a>
								</li>

								<li class="divider"></li>

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
								采购合同添加
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
								<form class="form-horizontal" role="form" method="POST" id="purchaseForm" action="${basePath}/admin/purchase/save">
									<div class="row">
										<div class="col-xs-12">
											<button class="btn btn-app btn-grey btn-xs radius-4" type="button" id="save">
												<i class="icon-save bigger-160"></i>
												保存
											</button>
										</div>
									</div>
									
									<div class="space-4"></div>
									<div class="form-group">
										<div class="col-xs-12 col-sm-3">
											<label class="col-sm-3 control-label no-padding-right" for="sn"> 合同号 </label>
											<div class="col-sm-9">
												<input type="text" id="sn" class="col-xs-10 col-sm-9" name="sn" value="" readonly/>
											</div>
										</div>
										
										<div class="col-xs-12 col-sm-3">
											<label class="col-sm-4 control-label no-padding-right" > 采购单位 </label>
											<div class="col-sm-8">
												<select class="width-100 chosen-select" id="filialeId" data-placeholder="选择一家公司" name="filialeId">
													<option value="">&nbsp;</option>
													<#list filiales as filiales>
														<option value="${filiales.id}">${filiales.name}</option>
													</#list>
												</select>
											</div>
										</div>
										
										<div class="col-xs-12 col-sm-3">
											<label class="col-sm-4 control-label no-padding-right" for="supplierId"> 供货单位 </label>
											<div class="col-sm-8">
												<select class="width-100 chosen-select" id="supplierId" data-placeholder="选择一家供应商" name="supplierId">
													<option value="">&nbsp;</option>
													<#list suppliers as supplier>
														<option value="${supplier.id}">${supplier.name}</option>
													</#list>
												</select>
											</div>
										</div>
										
										<div class="col-xs-12 col-sm-3">
											<label class="col-sm-3 control-label no-padding-right" for="adminId"> 审核员 </label>
											<div class="col-sm-9">
												<select class="width-40 chosen-select" id="adminId" data-placeholder="选择采购员" name="adminId" disabled>
													<option value="">--未审核--</option>
												<#list admins as admin>
													<option value="${admin.id}">${admin.name}</option>
												</#list>
												</select>
											</div>
										</div>
										
									</div>
									
									<div class="space-4"></div>
									<div class="form-group">
										<div class="col-xs-12 col-sm-3">
											<label class="col-sm-3 control-label no-padding-right" for="operatorId"> 制单员 </label>
											<div class="col-sm-9">
												<select class="width-70 chosen-select" id="operatorId" data-placeholder="选择制单员" name="operatorId">
													<option value="">&nbsp;</option>
												<#list admins as admin>
													<option value="${admin.id}">${admin.name}</option>
												</#list>
												</select>
											</div>
										</div>
										
										<div class="col-xs-12 col-sm-3">
											<label class="col-sm-4 control-label no-padding-right" for="addTime"> 制单时间 </label>
											<div class="col-sm-8">
												<input type="text" id="addTime" placeholder="制单时间 " class="col-xs-10 col-sm-12" name="addTime" readonly/>
											</div>
										</div>
										
										<div class="col-xs-12 col-sm-3">
											<label class="col-sm-4 control-label no-padding-right" for="deliveryTime"> 交货时间 </label>
											<div class="input-group date form_date col-sm-8" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
												<input class="form-control" size="16" type="text" value="" name="deliveryTime" id="deliveryTime" readonly>
												<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
												<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
											</div>
											
										</div>
										
										
										<div class="col-xs-12 col-sm-3">
											<label class="col-sm-4 control-label no-padding-right" for="auditTime"> 审核时间 </label>
											<div class="col-sm-8">
												<input type="text" id="auditTime" placeholder="审核时间 " class="col-xs-10 col-sm-9" name="auditTime" value="" readonly/>
											</div>
										</div>
										
									</div>
									
									<div class="space-4"></div>
									<div class="form-group">
										<div class="col-xs-12 col-sm-12">
											<label class="col-sm-1 control-label no-padding-right" for="remark"> 备注 </label>
											<div class="col-sm-9">
												<input type="text" id="remark" placeholder="备注" class="col-xs-10 col-sm-9" name="备注" value=""/>
											</div>
										</div>
										
									</div>
									
									<hr class="hr-32">
									<div class="row">
										<div class="space-4"></div>
									
									<div class="form-group">
										<label class="col-sm-1 control-label no-padding-right" for="parts"> 配件选择 </label>

										<div class="col-sm-7">
											
											<select class="width-40 chosen-select" id="parts" data-placeholder="选择一种分类">
												<option value="">&nbsp;</option>
											<#list parts as part>
												<option value="${part.id}">${part.name}</option>
											</#list>
											</select>
											
											<button type="button" class="btn btn-success" id="addPart">添加</button>
											<button type="button" class="btn btn-danger" id="delPart">删除</button>
										</div>
									</div>
									
									
									<input type="hidden" id="purchaseInfo" name="purchaseInfos" />
								</form>
								<hr class="hr-32">
								<table id="grid-table"></table>
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
			$("#addTime").val(initAdd);
			var ms = new Date(d.getTime()+10*60*60*24*1000);
    		var delivery = new Date(ms);
    		var initDelivery = delivery.getFullYear()+"-"+(delivery.getMonth()+1)+"-"+delivery.getDate();
    		$("#deliveryTime").val(initDelivery);
    		
			var oldId = 0;
			
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
			
			// 添加按钮点击事件,用于给表格添加行
			$("#addPart").click(function(){
				$.ajax({
					url:"${basePath}/admin/purchase/getPartJson",
					async:false,
					type:"post",
					dataType:"json",
					data:{partId:$("#parts").val()},
					success:function(data) {
						// 获取服务器返回的对象
						// 给jqgrid添加
						var newId = $("#parts").val();
						if (newId - oldId == 0) {
							alert("已经存在");
						} else {
							jQuery("#grid-table").jqGrid("addRowData", newId, data);
							oldId = newId;
						}
						
					}
				});
			});
			
			// 删除按钮点击事件,用于给表格删除行
			$("#delPart").click(function(){
				jQuery("#grid-table").jqGrid("delRowData", $("#parts").val());
				oldId = 0;
				jQuery("#grid-table").footerData("set",{name:"总计",sum:jQuery(grid_selector).getCol('sum', false, 'sum')});
			});
			
			
			
			// 按钮点击事件，用于保存数据
			$("#save").click(function(){
				var rows = jQuery("#grid-table").jqGrid("getRowData"); // object
				$("#purchaseInfo").val(JSON.stringify(rows));
				
				// 表单提交
				$("#purchaseForm").submit();
			});
			
			
			var grid_selector = "#grid-table";
				
				   
				jQuery(grid_selector).jqGrid({
					
					datatype: "local",
					height: 250,
					rowNum:-1,
					searchable : false,
					sortable : false,
					colNames:['ID', '配件号','配件名','规格', '单位','换算单位', '数量','进货价','金额'],
					colModel:[
						{name:'id',index:'id', width:60, editable: false},
						{name:'sn',index:'sn', width:60, editable: false},
						{name:'name',index:'name', width:150,editable: false},
						{name:'standard',index:'standard',width:90, editable:false},
						{name:'unit',index:'unit', width:70, editable: true},
						{name:'conversion',index:'conversion', width:150, editable: true},
						{name:'amount',index:'amount', width:150, sortable:false,editable: true},
						{name:'purchasePrice',index:'ship', width:90, editable: false},
						{name:'sum',index:'sum', width:90, editable: false},
						
					], 
					afterSaveCell : function(rowid,name,val,iRow,iCol) {
						if (name == "amount") {
							var sum = jQuery(grid_selector).getCell(rowid, 'conversion') * jQuery(grid_selector).getCell(rowid, 'amount') * jQuery(grid_selector).getCell(rowid, 'purchasePrice');
							jQuery(grid_selector).setCell(rowid, 'sum', sum);
						}
						jQuery(grid_selector).footerData("set",{name:"总计",sum:jQuery(grid_selector).getCol('sum', false, 'sum')});
					},
					footerrow:true,
		            forceFit : true,
		            shrinkToFit: false,
		            autoScroll: true,
					cellEdit: true,
					cellsubmit: 'clientArray',
					multiselect: true,
			        multiboxonly: true,
					autowidth: true,
					caption: "采购合同明细列表",
					
			
				});
				//grid_selector.footerData('set',{'name':"总计",'number':sum_num,'packNum':sum_pack,'actualBigDecimal':sum_total});
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
			$("#purchaseForm").validate({
				
				rules: {
					name:"required",
					supplierId:"required",
					operatorId:"required",
					filialeId:"required"
				},
				messages: {
					sn:"请填写sn",
					supplierId:"请选择供货单位",
					operatorId:"请选择操作员",
					filialeId:"请选择采购单位"
				}
			});
		
			$(".chosen-select").chosen(); 
			$('#chosen-multiple-style').on('click', function(e){
				var target = $(e.target).find('input[type=radio]');
				var which = parseInt(target.val());
				if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
				 else $('#form-field-select-4').removeClass('tag-input-style');
			});
		});
	
		</script>

</html>
