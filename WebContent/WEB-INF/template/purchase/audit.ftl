<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>合同审核 - 合同管理系统</title>
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
								采购合同详细信息查看
								<small>
									<i class="icon-double-angle-right"></i>
									
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="col-sm-12">
								 <@shiro.hasRole name="superAdmin">
								 
									<select id="status">
										<option value="${purchase.status}">当前：${purchase.status}</option>
									<#list status as s>
										<option value="${s}">${s}</option>
									</#list>
									</select>
								</@shiro.hasRole>
								<h6 id="showStatus">状态：${purchase.status}</h6>
								<button class="btn btn-app btn-light btn-xs" type="button" onclick="preview();">
									<i class="icon-print bigger-160"></i>
									打印
								</button>
								</div>
								<!--startprint-->
								<div class="col-sm-12">
										<div class="widget-box">
											<div class="widget-header widget-header-flat center">
												<h1>采购合同</h1>
												<h6>编号：${purchase.sn}</h6>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<div class="row">
														<div class="col-sm-12">
															<ul>
																<br />
																<div class="col-sm-2"></div>
																<div class="col-sm-8">
																	<b>甲方:${purchase.filialeName}</b>
																</div>
																<br />
																<br />
																<div class="col-sm-2"></div>
																<div class="col-sm-8">
																	<b>乙方:${purchase.supplierName}</b>
																</div>
																
															</ul>
														</div>
													</div>
													<hr />
													<div class="row">
														<div class="col-xs-12">
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
															<p>&nbsp;&nbsp;经甲、乙双方友好协商，本着平等互利的原则，根据《中华人民共和国合同法》及相关法律法规的规定，现就甲方向乙方订购生产物资事宜，达成一致意见，为明确双方权利和义务，特订立本合同：</p>
															</div>
															<div class="col-sm-1">
															</div>
															
															<div class="col-sm-11">
															<p>一、订购产品明细：</p>
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<table class="table table-striped table-bordered table-hover">
																	<thead>
																		<td>配件号</td>
																		<td>配件名</td>
																		<td>配件规格</td>
																		<td>配件单位</td>
																		<td>配件换算单位</td>
																		<td>配件数量</td>
																		<td>配件进货价</td>
																		<td>配件金额</td>
																	</thead>
																	<tfoot>
																	    <tr>
																	      <td align="center" colspan="7">总计</td>
																	      <td>${purchase.sum}</td>
																	    </tr>
																  	</tfoot>
																	<tbody>
																	<#list purchaseParts as purchasePart>
																	<tr>
																		<td>${purchasePart.barCode}</td>
																		<td>${purchasePart.name}</td>
																		<td>${purchasePart.standard}</td>
																		<td>${purchasePart.unit}</td>
																		<td>${purchasePart.conversion}</td>
																		<td>${purchasePart.amount}</td>
																		<td>${purchasePart.purchasePrice}</td>
																		<td>${purchasePart.purchasePrice}</td>
																	</tr>
																	</#list>
																	</tbody>
																</table>
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<p>
																	二、质量标准：
																</p>
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<p>
																	&nbsp;&nbsp;1、乙方供应的货物须符合国家质量标准、地方质量标准和甲方的生产要求。
																</p>
																<p>
																	&nbsp;&nbsp;2、_______________________________________________。
																</p>
																<p>
																	&nbsp;&nbsp;3、_______________________________________________。
																</p>
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<p>
																	三、付款方式：
																</p>
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<p>
																	&nbsp;&nbsp;乙方将货物送到甲方处并经甲方检验合格且卸货后,______付款。
																</p>
																
															</div>
															
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<p>
																	四、交货时间：
																</p>
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<p>
																	&nbsp;&nbsp;_____${purchase.deliveryTime}_______前乙方将货物送至。运费由乙方负担。运输过程中货物毁损、灭失等各种风险均由乙方承担责任。
																</p>
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<p>
																	五、双方权利和义务：
																</p>
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<p>
																	&nbsp;&nbsp;1、乙方必须向甲方提供生产企业资质证明、营业执照及相关的手续。其提供的产品，必须符合相关的国家、行业或企业标准，并随货附带产品合格证、化验报告等手续。
																</p>
																<p>
																	&nbsp;&nbsp;2、如乙方提供的货物包装或产品规格不符合要求，甲方有权拒收货物。如甲方拒收，乙方必须按照本合同的约定提供符合要求的货物，且由此造成的各种损失均由乙方承担责任。
																</p>
																<p>
																	&nbsp;&nbsp;3、甲方应在乙方所送的货物到达后及时进行质量检测，如发现质量问题，乙方须立即现场处理善后事宜。因此给甲方造成损失的，乙方应承担甲方为此支付的所有费用（包括但不限于赔偿的费用、必要的律师费、罚款等）。
																</p>
																<p>
																	&nbsp;&nbsp;4、因乙方产品内在质量问题，引发甲方生产或质量事故，造成甲方损失的，乙方应赔偿甲方为此支付的所有费用（包括但不限于赔偿的费用、必要的律师费、罚款等），此责任不因甲方已进行质量监测而免除。
																</p>
																<p>
																	&nbsp;&nbsp;5、如乙方未按照本合同第六条规定的时间送货、送货迟延或货物的数量与合同约定不符，应赔偿甲方违约金__________元。
																</p>
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<p>
																	六、特别条款声明：
																</p>
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<p>
																	&nbsp;&nbsp;_________________________________________________________________________
																</p>
																<p>
																	&nbsp;&nbsp;_________________________________________________________________________
																</p>
																<p>
																	&nbsp;&nbsp;_________________________________________________________________________
																</p>
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-11">
																<p>
																	七、本合同一式两份，甲乙双方各持一份，具有同等法律效力，双方签字盖章后立即生效。双方发生争议时，协商解决，协商不成任何一方均可向甲方所在地人民法院提起诉讼。
																</p>
															</div>
															<div class="col-sm-12"></div>
															<br />
															<div class="col-sm-1">
															</div>
															<div class="col-sm-4">
																<p>
																	甲方:
																</p>
																<p>
																	代表人签字:
																</p>
																<p>
																	盖章：
																</p>
																<p>
																	签字日期：
																</p>
																
															</div>
															<div class="col-sm-1">
															</div>
															<div class="col-sm-4">
																<p>
																	乙方
																</p>
																<p>
																	代表人签字:
																</p>
																<p>
																	盖章：
																</p>
																<p>
																	签字日期：
																</p>
															</div>
															
														</div>
													</div>
												</div>
											</div>
										</div>
									</div><!-- /span -->
								<!--endprint-->
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
		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($) {
			
				if ($("#status").val() == "中止" || $("#status").val() == "结束") {
					 $("#status").attr("disabled", true);
				}
			
			
				$("#status").change(function(){
					if (confirm("确认修改？")) {
						var status = $(this).val();
						$.ajax({
					  		url:"${basePath}/admin/purchase/changeStatus",
					  		dataType:"text",
					  		type:"post",
					  		data:{status:status, id:${purchase.id}},
					  		async:false,
					  		success: function(data) {
					  			$("#showStatus").text("状态："+data);
					  			if (data == "中止" || data == "结束")
					  				 $("#status").attr("disabled", true);
					  			alert("修改成功");
					  		}
					  	});
					}
					
				}); 
				
				// jquery表单验证
				$("#partAddForm").validate({
					
					rules: {
						sn:"required",
						name:"required",
						purchasePrice:"number",
						salePrice:"number",
						wholesalePrice:"number",
						partCategoryId:"required",
						supplierId:"required"
					},
					messages: {
						sn:"请填写sn",
						name:"请填写配件名",
						purchasePrice:"必须是数字",
						salePrice:"必须是数字",
						wholesalePrice:"必须是数字",
						partCategoryId:"请选择配件类别",
						supplierId:"请选择供应商"
					},
					submitHandler: function(form) {
						form.Submit();
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
		</script>

</html>
