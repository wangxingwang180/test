<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/multiselectSrc/multiselectSrc/jquery.multiselect.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/multiselectSrc/assets/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/multiselectSrc/assets/prettify.css" />
<link href="${pageContext.request.contextPath }/js/mutiselect/assets/jquery-ui.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath }/js/mutiselect/ui/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath }/js/mutiselect/ui/jquery.ui.core.js"></script>
<script src="${pageContext.request.contextPath }/js/mutiselect/ui/jquery.ui.widget.js"></script>

<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/js/mutiselect/assets/prettify.js"></script> --%>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/mutiselect/multiselectSrc/jquery.multiselect.js" charset=gb2312></script>
<script type="text/javascript">
$(function(){
    $("#info").submit(function(){
    	$.post("${pageContext.request.contextPath}/user/tijiao.do",
        		$("#info").serialize(),
      		function(data){
        		alert(data);
       		});
    });
});
</script>
</head>
<body>
<form id="info">
	<input type="text" name="name"><br/>
	<input type="text" name="age"><br/>
	<input type="text" name="address"><br/>
	<input type="text" name="hoppy"><br/>
	<input type="text" name="weight"><br/>
	<input type="submit">
</form>
</body>
</html>