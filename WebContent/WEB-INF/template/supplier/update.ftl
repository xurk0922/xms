<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>供应商信息更新 - 合同管理系统</title>
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

					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								配件添加
								<small>
									<i class="icon-double-angle-right"></i>
									提交成功后将返回列表页
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<!--
                                	表单开始
                                -->
								<form class="form-horizontal" role="form" method="POST" id="supplierAddForm" action="${basePath}/admin/supplier/update" />
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="sn"> sn </label>

										<div class="col-sm-9">
											<input type="text" id="sn" placeholder="供应商列号" class="col-xs-10 col-sm-5" name="sn" value="${supplier.sn}"/>
											<input type="hidden" name="id" value="${supplier.id}"/>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="name" > 供应商名称 </label>

										<div class="col-sm-9">
											<input type="text" id="name" placeholder="供应商名称" name="name" class="col-xs-10 col-sm-5" value="${supplier.name}" />
											
										</div>
									</div>


									<div class="space-4"></div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="standard"> 供应商法人 </label>

										<div class="col-sm-9">
											<input type="text" id="legalPerson" placeholder="供应商法人" class="col-xs-10 col-sm-5" name="legalPerson" value="${supplier.legalPerson}" />
											
										</div>
									</div>
									
									<div class="space-4"></div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="purchasePrice"> 供应商电话 </label>

										<div class="col-sm-9">
											<input type="text" id="tel" placeholder="供应商电话" class="col-xs-10 col-sm-5" name="tel" value="${supplier.tel}" />
											
										</div>
									</div>
									
									<div class="space-4"></div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="salePrice"> 供应商邮编 </label>

										<div class="col-sm-9">
											<input type="text" id="postcode" placeholder="供应商邮编" class="col-xs-10 col-sm-5" name="postcode" value="${supplier.postcode}" />
											
										</div>
									</div>
									
									<div class="space-4"></div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="wholesalePrice"> 供应商地址 </label>

										<div class="col-sm-9">
											<input type="text" id="address" placeholder="供应商地址" class="col-xs-10 col-sm-5" name="address" value="${supplier.address}" />
											
										</div>
									</div>
									
									<div class="space-4"></div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="supplier"> 备注 </label>
										<div class="col-sm-3">
											
											<div>
												
												<textarea class="form-control" id="remark" placeholder="此处填写备注" name="remark">${supplier.remark}</textarea>
											</div>
												
										</div>
									</div>
						
									

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<input type="submit" id="submit" value="保存" class="btn btn-info" />
											&nbsp; &nbsp; &nbsp;
											<input type="reset" value="重置" class="btn btn-info" />
											
											
										</div>
									</div>

								</form>
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

		<!-- ace scripts -->

		<script src="${basePath}/resources/js/ace-elements.min.js"></script>
		<script src="${basePath}/resources/js/ace.min.js"></script>
		<script src="${basePath}/resources/js/jquery.validate.min.js"></script>
		<script src="${basePath}/resources/js/messages_zh.min.js"></script>
		<script src="${basePath}/resources/js/jquery.form.js"></script>
		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($) {
			
				// 失去焦点事件
				$("#sn").blur(function(){
					var sn = $("#sn").val();
				  	var res = $.ajax({
				  		url:"${basePath}/admin/supplier/checkSn",
				  		dataType:"text",
				  		data:{sn:sn},
				  		async:false,
				  		success: function(data) {
				  			if (data != "true") {
				  				alert("sn已存在");
				  				$("#sn").val("");
			  				}
				  		}
				  	});
				  	
				});
				
				// jquery表单验证
				$("#supplierAddForm").validate({
					
					rules: {
						sn:"required",
						name:"required",
						legalPerson:"required",
						address:"required",
						postcode:{required:true,number:true, minlength:6}
					},
					messages: {
						sn:"请填写sn",
						name:"请填写配件名",
						legalPerson:"请填写法人",
						address:"请填写地址",
						postcode:{required:"邮编必须填写", number:"必须为数字", minlength:"长度至少为6"}
					},
					submitHandler: function(form) {
						$(form).ajaxSubmit();
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
