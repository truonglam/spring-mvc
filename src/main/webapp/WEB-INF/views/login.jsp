<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
<link rel="stylesheet" href="<c:url value='/template/ace.min.css'/>"/>
<link rel="stylesheet" href="<c:url value='/template/bootstrap.min.css'/>"/>
<link rel="stylesheet" href="<c:url value='/template/font-awesome.min.css'/>"/>
</head>
<body class="login-layout">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="ace-icon fa fa-leaf green"></i> <span class="red">Ace</span>
								<span class="white" id="id-text2">Application</span>
							</h1>
							<h4 class="blue" id="id-company-text">&copy; Company Name</h4>
						</div>
						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<i class="ace-icon fa fa-coffee green"></i>
											Đăng nhập
										</h4>	
										<c:if test="${param.incorrectAccount != null}">
											<div class="alert alert-block alert-danger">
												Sai mật khẩu hay tên tài khoản
											</div>
										</c:if>
										<c:if test="${param.accessDenied != null}">
											<div class="alert alert-block alert-danger">
												Bạn không có quyền truy cập vào trang này
											</div>
										</c:if>							
										<div class="space-6"></div>
											<form action="j_spring_security_check" method="POST">
												<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" id="username"													
														placeholder="Tên đăng nhâp"
														name="j_username"
														required>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" id="password"														
														placeholder="Mật khẩu"
														name="j_password"
														required>
												</span>
												</label>
												<div class="space"></div>
												<div class="clearfix">
													<button type="submit"
														class="width-35 pull-right btn btn-sm btn-primary">
														<span class="bigger-110">Đăng nhập</span>
													</button>
												</div>
												<div class="space-4"></div>
											</fieldset>					
											</form>					
										<div class="space-6"></div>
									</div>
									<!-- /.widget-main -->
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.login-box -->
						</div>
						<!-- /.position-relative -->

						<div class="navbar-fixed-top align-right">
							<br /> &nbsp; <a id="btn-login-dark" href="#">Dark</a> &nbsp; <span
								class="blue">/</span> &nbsp; <a id="btn-login-blur" href="#">Blur</a>
							&nbsp; <span class="blue">/</span> &nbsp; <a id="btn-login-light"
								href="#">Light</a> &nbsp; &nbsp; &nbsp;
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>