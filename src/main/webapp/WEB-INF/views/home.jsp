<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<%@ page import="com.lamtraining.utils.SecurityUtils"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet" href="<c:url value='/template/ace.min.css'/>"/>
<link rel="stylesheet" href="<c:url value='/template/bootstrap.min.css'/>"/>
<link rel="stylesheet" href="<c:url value='/template/font-awesome.min.css'/>"/>
</head>
<body class="no-skin">
	<div id="navbar" class="navbar navbar-default ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> <i
						class="fa fa-leaf"></i> Home
				</small>
				</a>
			</div>
			<div
				class="navbar-buttons navbar-header pull-right collapse navbar-collapse"
				role="navigation">
				<ul class="nav ace-nav">
					<li class="light-blue dropdown-modal"><a
						data-toggle="dropdown" href="#" class="dropdown-toggle"> <%--<span class="user-info">--%>
							Welcome, <%=SecurityUtils.getMyUserDetail().getFullName()%>
					</a>
					<li class="light-blue dropdown-modal"><a href='<c:url value="/logout"/>'><i
							class="ace-icon fa fa-power-off"></i>Thoát
					</a></li>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="main-container ace-save-state" id="main-container">

		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>
		<!-- menu -->
		
		<div id="sidebar"
			class="sidebar                  responsive                    ace-save-state">
			<script type="text/javascript">
				try {
					ace.settings.loadState('sidebar')
				} catch (e) {
				}
			</script>
			<div class="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<i class="ace-icon fa fa-signal"></i>
					</button>

					<button class="btn btn-info">
						<i class="ace-icon fa fa-pencil"></i>
					</button>

					<button class="btn btn-warning">
						<i class="ace-icon fa fa-users"></i>
					</button>

					<button class="btn btn-danger">
						<i class="ace-icon fa fa-cogs"></i>
					</button>
				</div>
				<div class="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span> <span class="btn btn-info"></span>

					<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
				</div>
			</div>
				<security:authorize ifAnyGranted="ADMIN, MANAGER">
					<ul class="nav nav-list">
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list"></i><span class="menu-text">Mục 1</span> <b
						class="arrow fa fa-angle-down"></b>
				</a>
				<b class="arrow"></b>
				</li>
				</ul>
				<ul class="nav nav-list">
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list"></i><span class="menu-text">Mục 2</span> <b
						class="arrow fa fa-angle-down"></b>
				</a>
				<b class="arrow"></b>
				</li>
				</ul>
				<ul class="nav nav-list">
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list"></i><span class="menu-text">Mục 3</span> <b
						class="arrow fa fa-angle-down"></b>
				</a>
				<b class="arrow"></b>
				</li>
				</ul>
				</security:authorize>
				<security:authorize ifAnyGranted="ADMIN,USER">
					<ul class="nav nav-list">
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list"></i><span class="menu-text">Mục 4</span> <b
						class="arrow fa fa-angle-down"></b>
				</a>
				<b class="arrow"></b>
				</li>
				</ul>
				<ul class="nav nav-list">
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list"></i><span class="menu-text">Mục 5</span> <b
						class="arrow fa fa-angle-down"></b>
				</a>
				<b class="arrow"></b>
				</li>
				</ul>
				<ul class="nav nav-list">
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list"></i><span class="menu-text">Mục 6</span> <b
						class="arrow fa fa-angle-down"></b>
				</a>
				<b class="arrow"></b>
				</li>
				</ul>
				</security:authorize>
			<div class="sidebar-toggle sidebar-collapse">
				<i class="ace-icon fa fa-angle-double-left ace-save-state"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>
		
		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
</body>
</html>