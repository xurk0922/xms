<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta charset="utf-8" />
<title>登录 - 合同管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- basic styles -->

<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/css/font-awesome.min.css" />

<!--[if IE 7]>
		  <link rel="stylesheet" href="resources/css/font-awesome-ie7.min.css" />
		<![endif]-->

<!-- page specific plugin styles -->


<!-- ace styles -->

<link rel="stylesheet" href="resources/css/ace.min.css" />
<link rel="stylesheet" href="resources/css/ace-rtl.min.css" />

<!--[if lte IE 8]>
		  <link rel="stylesheet" href="resources/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!--[if lt IE 9]>
		<script src="resources/js/html5shiv.js"></script>
		<script src="resources/js/respond.min.js"></script>
		<![endif]-->
<style>
.error {
	color: red;
}
</style>
</head>

<body class="login-layout">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="icon-leaf green"></i> <span class="red">汽车配件</span> <span
									class="white">合同管理系统</span>
							</h1>
							<h4 class="blue">&copy; 老司机有限公司</h4>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<i class="icon-coffee green"></i> 请输入您的凭证
										</h4>

										<div class="space-6"></div>

										<form id="adminForm" action="admin/login" method="POST">
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" name="username" value="admin"
														class="form-control" placeholder="用户名" /> <i
														class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" name="password" value="admin"
														class="form-control" placeholder="密码" /> <i
														class="icon-lock"></i>
												</span>
												</label>

												<div class="space"></div>

												<div class="clearfix">
													<button id="login" type="button"
														class="width-35 pull-right btn btn-sm btn-primary">
														<i class="icon-key"></i> 登录
													</button>
												</div>

												<div class="space-4"></div>
											</fieldset>
										</form>
									</div>
									<!-- /widget-main -->
								</div>
								<!-- /widget-body -->
							</div>
							<!-- /login-box -->


						</div>
						<!-- /position-relative -->
					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->


	<!--[if !IE]> -->

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='resources/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='resources/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='resources/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>

	<!-- inline scripts related to this page -->

	<script type="text/javascript"
		src='resources/js/jquery.validate.min.js'>
		
	</script>

	<script type="text/javascript">
		$(document).ready(function() {

			// jQuery 表单验证
			$("#adminForm").validate({
				rules : {
					username : "required",
					password : "required"
				},
				messages : {
					username : "请输入用户名",
					password : "请输入密码"
				}
			});

			$("#login").click(function() {
				$("#adminForm").submit();
			});
		});
	</script>

</body>
</html>
