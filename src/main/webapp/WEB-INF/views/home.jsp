<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="uploadURL" value="/api/home"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Admin page</title>

	<!-- jquery -->
	<script type='text/javascript' src='<c:url value="/template/admin/js/2.1.4/jquery.min.js" />'></script>

	<link rel="stylesheet" href="<c:url value='/template/admin/assets/css/bootstrap.min.css' />" />
	<link rel="stylesheet" href="<c:url value='/template/admin/font-awesome/4.5.0/css/font-awesome.min.css' />" />
	<link rel="stylesheet" href="<c:url value='/template/admin/assets/css/ace.min.css' />" class="ace-main-stylesheet" id="main-ace-style" />
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body class="no-skin">

<!-- Header -->
<%@ include file="/WEB-INF/views/component/header.jsp" %>
<!-- End Header -->

<div class="main-container ace-save-state" id="main-container">

	<script type="text/javascript">
        try{ace.settings.loadState('main-container')}catch(e){}
	</script>

	<!-- Begin menu -->
	<%@ include file="/WEB-INF/views/component/menu.jsp" %>
	<!-- End menu -->


	<!-- Begin body -->
	<%@ include file="/WEB-INF/views/component/body.jsp" %>
	<!-- End body -->

	<!-- Begin footer -->
	<%@ include file="/WEB-INF/views/component/footer.jsp" %>
	<!-- end footer -->

	<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
		<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
	</a>

</div>
<script>
	$(document).ready(function () {

    })
	$('#uploadImage').change(function () {
	    var dataArray = {};
	    var files = $(this)[0].files[0];
	    if (files != undefined) {
            var reader = new FileReader();
            reader.onload = function(e) {
                dataArray["base64"] = e.target.result;
                dataArray["name"] = files.name;
                uploadFile(dataArray);
            };
            reader.readAsDataURL(files);
		}
    });
	function uploadFile(data) {
	    $.ajax({
	        url: '${uploadURL}',
			type: 'POST',
			data: JSON.stringify(data),
			contentType: 'application/json',
			success: function (res) {
                console.log(res);
            },
			error: function (res) {
	            console.log(res);
            }
		});
    }
</script>

<script src="<c:url value='/template/admin/assets/js/ace-extra.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/js/jquery-ui.custom.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/js/jquery.ui.touch-punch.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/js/jquery.easypiechart.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/js/jquery.sparkline.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/js/jquery.flot.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/js/jquery.flot.pie.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/js/jquery.flot.resize.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/js/bootstrap.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/js/ace-elements.min.js' />"></script>
<script src="<c:url value='/template/admin/assets/js/ace.min.js' />"></script>
</body>
</html>
