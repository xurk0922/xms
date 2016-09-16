<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>按配件汇总 - 合同管理系统</title>
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
								采购合同按配件汇总
								<small>
									<i class="icon-double-angle-right"></i>
									
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="space-4">
								</div>
								<div class="col-sm-12">
										<div class="widget-box">
								<form class="form-horizontal" role="form" method="POST" id="searchForm" action="${basePath}/admin/purchase/getReport">
									
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
						                	<input type="hidden" id="type" name="type" value="配件" />
						                
										<div class="col-xs-12 col-sm-3">
											<div class="col-sm-8">
												<button class="btn btn-info" type="button" id="search">搜索</button>
												
											</div>
											<button class="btn btn-app btn-light btn-xs" type="button" onclick="preview();">
												<i class="icon-print bigger-160"></i>
												打印
											</button>
										</div>
									</div>
									</div>
								</form>
									<!--startprint-->
											<div class="col-sm-11">
												<table id="partList" class="table table-striped table-bordered table-hover">
													<thead>
														<td>配件号</td>
														<td>配件名</td>
														<td>配件规格</td>
														<td>配件进货价</td>
														<td>配件销售价</td>
														<td>配件批发价</td>
														<td>配件数量</td>
													</thead>
													<tfoot>
													  
												  	</tfoot>
													<tbody id="tbody">
													</tbody>
												</table>
											</div>
										<!--endprint-->
										</div>
									</div><!-- /span -->
								
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

		<!-- ace scripts -->

		<script src="${basePath}/resources/js/ace-elements.min.js"></script>
		<script src="${basePath}/resources/js/ace.min.js"></script>
		<script src="${basePath}/resources/js/jquery.validate.min.js"></script>
		<script src="${basePath}/resources/js/messages_zh.min.js"></script>
		<script type="text/javascript" src="${basePath}/resources/js/date-time/bootstrap-datetimepicker.js" ></script>
		<script type="text/javascript" src="${basePath}/resources/js/date-time/bootstrap-datetimepicker.zh-CN.js" ></script>
		<!-- inline scripts related to this page -->

		<script type="text/javascript">
		function preview()    
	    {    
	        bdhtml=window.document.body.innerHTML;    
	        sprnstr="<!--startprint-->";    
	        eprnstr="<!--endprint-->";    
	        prnhtml=bdhtml.substring(bdhtml.indexOf(sprnstr)+17);    
	        prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));    
	        window.document.body.innerHTML=prnhtml;    
	        window.print();    
		} 
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
				var type = $("#type").val();
				$.ajax({
					url:"${basePath}/admin/purchase/getReport",
					async:false,
					type:"post",
					dataType:"json",
					data:{start:start, end:end, type:type},
					success:function(data) {
						for (var key in data) {
							// 解析json为对象
							var obj = jQuery.parseJSON(key);
							// 拼接字符串
							
							var text = "<tr>"+ "<td>" + obj.sn + "</td>" + "<td>" + obj.name + "</td>"+  "<td>" + obj.standard + "</td>" + "<td>" + obj.purchasePrice + "</td>" + "<td>" + obj.salePrice + "</td>" + "<td>" + obj.wholesalePrice + "</td>" +"<td>" + data[key] + "</td>" +"</tr>";
							
							$("#partList tbody").append(text);
						}
					}
				});
			});
			
			
			});
		</script>

</html>
