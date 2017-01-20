<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">

$(function(){
	
	$("#province").change(function(){
		var url = "${pageContext.request.contextPath }/user/changeCity.do";
		$.ajax({url:url,
			type:"post",
			data:{pro:$("#province").val()},
			scriptCharset:"utf-8",
			dataType:"json",
			async:false,
			success:function(data){
				$("#city").empty();
// 				alert(data);
				$("#city").append("<option>请选择</option>");
				if(data != ""){
					for ( var s in data) {
						$("#city").append("<option>"+data[s]+"</option>");
					}
					
				}
			}
		});
		$("#city").focus();
	});
	
});
</script>
</head>
<body>
地址：
<select id="province">
	<option>请选择</option>
	<c:if test="${province != null}">
		<c:forEach items="${province}" var='pro'>
			<option>${pro }</option>
		</c:forEach>
	</c:if>
</select>
省
<select id="city">
	<option>请选择</option>
</select>市
</body>
</html>