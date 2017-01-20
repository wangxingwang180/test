<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
    $("select").multiselect({

        noneSelectedText: "==请选择==",
        checkAllText: "全选",
        uncheckAllText: '全不选',
        selectedList:3
    });
});
function showValues() {

    var valuestr = $("#sela").multiselect("MyValues");

    alert(valuestr);

}
</script>
</head>
<body id="test" >

<button onclick="showValues()">显示选取的值</button>
<h3>Basic</h3>
<p>
	<select id ="sela" title="Basic example" multiple="multiple" name="example-basic" size="3">
	<option value="云总机">云总机</option>
	<option value="短信实名认证">短信实名认证</option>
	<option value="身份实名认证">身份实名认证 </option>

	</select>
</p>


</body>
</html>