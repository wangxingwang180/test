<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

String path = request.getContextPath();

String basePath = request.getScheme() + "://"

+ request.getServerName() + ":" + request.getServerPort()

+ path + "/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<head>

<base href="<%=basePath%>">



<title>My JSP 'index.jsp' starting page</title>



<meta http-equiv="pragma" content="no-cache">

<meta http-equiv="cache-control" content="no-cache">

<meta http-equiv="expires" content="0">

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

<meta http-equiv="description" content="This is my page">



<link rel="stylesheet" type="text/css" href="css/layout.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/kindeditor/themes/default/default.css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/kindeditor/plugins/code/prettify.css" />

<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/kindeditor-all.js">

</script>

<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/lang/zh_CN.js">

</script>

<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/plugins/code/prettify.js">

</script>

<script>
	KindEditor.ready(function(K) {
	
		var editor1 = K.create('textarea[name="article.content1"]', {

			cssPath : 'kindeditor/plugins/code/prettify.css',

			uploadJson : 'kindeditor/jsp/upload_json.jsp',

			fileManagerJson : 'kindeditor/jsp/file_manager_json.jsp',

			allowFileManager : true,

			afterCreate : function() {

				var self = this;

				K.ctrl(document, 13, function() {

					self.sync();

					document.forms['example'].submit();

				});

				K.ctrl(self.edit.doc, 13, function() {

					self.sync();

					document.forms['example'].submit();

				});

			}

		});

		prettyPrint();

	});
</script>

</head>



<body>

	<div id="container">

		<div id="header"></div>

		<div id="menu">

		

		</div>

		<div id="mainContent">



			<form name="example" method="post" action="">

				题目： <input type="text" name="article.title"> <br /> 内容：

				<textarea name="article.content1" cols="100" rows="8"></textarea>

				<br /> <input type="submit" name="button" value="提交" /> (提交快捷键:
				Ctrl + Enter)

			</form>

		</div>


	</div>

</body>

</html>