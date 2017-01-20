<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
 
#sidebar-tab{margin-bottom:1.5em;overflow:hidden;} 
#org-Info{height: 300px;}
#h{margin-top:4px;color:rgb(81,152,214);}
#tab-title h3{color:#666;font-size:15px;font-weight:400;} 
#tab-title .selected{color:#356aa0;border-bottom:0px;} /*标题被选中时的样式*/ 
#tab-title span{padding:5px 9px 5px 10px;border:1px solid rgb(81,152,214);margin-left:3px;cursor:pointer;} 
#tab-content .hide{display:none;} /*默认让第一块内容显示，其余隐藏*/ 
#tab-content ul{padding:5px 10px;overflow:hidden;} 
#tab-content ul li{padding-top:5px;height:300px;} 
a{text-decoration: none;color:#000000;}
.active{color: blue;}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/2.1/layer.js"></script>
<script type="text/javascript">  
  
// $(document).ready(function() {  
  
//     Default Action  
//     $(".tab_content").hide(); //Hide all content  
//     $("ul.tabs li:first").addClass("active").show(); //Activate first tab  
//     $(".tab_content:first").show(); //Show first tab content  
      
//     On Click Event  
//     $("ul.tabs li").click(function() {  
//         $("ul.tabs li").removeClass("active"); //Remove any "active" class  
//         $(this).addClass("active"); //Add "active" class to selected tab  
//         $(".tab_content").hide(); //Hide all tab content  
//         var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content  
//         $(activeTab).fadeIn(); //Fade in the active content  
//         return false;  
//     });  
  
// });  
$(function(){
	$('#tab-title span').click(function(){ 
    	$(this).addClass("selected").siblings().removeClass();//removeClass就是删除当前其他类；只有当前对象有addClass("selected")；siblings()意思就是当前对象的同级元素，removeClass就是删除； 
    	$(this).addClass("active");
    	$("#tab-content > ul").hide().eq($('#tab-title span').index(this)).show(); 
    	}); 
});
function popUp() {
	layer.open({
		type:2,
		title:['弹出框','color:#4cace2'],
		move:false,
		area:['600px','250px'],
		content:'${pageContext.request.contextPath}/user/jilian.do',
		btn:['确定','取消'],
		yes:function(index){
			if (layer.getChildFrame("#province").val()=="请选择" || layer.getChildFrame("#province").val()=="") {
				layer.alert("未选择省");
				return false;
			} else if(layer.getChildFrame("#city").val()=="请选择" || layer.getChildFrame("#city").val()=="") {
				layer.alert("未选择市");
				return false;
			}
			$.post(
				"${pageContext.request.contextPath}/user/submitInfo.do",
				{
					pro:layer.getChildFrame("#province").val(),
					city:layer.getChildFrame("#city").val()
				},
				function(data) {
// 					layer.alert(data);
					layer.msg("修改了");
					$("#sp").triggerHandler("click");
					layer.closeAll('iframe'); 
// 					window.location.href = "${pageContext.request.contextPath}/index.jsp";
				}
			);
		}
	});
}
</script> 
</head>
<body>
<!-- <div class="container">   -->
      
<!--     <ul class="tabs">   -->
<!--         <li class="active"><a href="#tab1">导航菜单</a></li>   -->
<!--         <li><a href="#tab4">TAB标签</a></li>   -->
<!--     </ul>   -->
<!--     <div class="tab_container">   -->
<!--         <div id="tab1" class="tab_content" style="display: block; ">   -->
             
<!--           <h3><a href="http://www.freejs.net/article_daohangcaidan_13.html">jquery css多级下拉菜单</a></h3>   -->
<!--             <p id="">多级菜单，理论上支持无限多的层级，文件结构非常简单的，具体的请看下面的内容</p>   -->
<!--         </div>   -->
          
<!--         <div id="tab4" class="tab_content" style="display: none; ">   -->
<!--             <h2>各种tab标签选项卡</h2>   -->
<!--             <h3><a href="http://www.freejs.net/article_tabbiaoqian_17.html">tab标签页面,ajax载入</a></h3>   -->
              
<!--             <p> tab标签，jquery ajax载入数据库的内容</p>   -->
<!--         </div>   -->
<!--     </div>   -->
  
<!-- </div>   -->

 
<div id="sidebar-tab"> 
<div id="org-Info"></div>
<div id="tab-title"> 
<h3><span class="selected">最新评论</span><span>近期热评</span><span  id="sp">随机文章</span><span>随机内容</span><hr id="h"/></h3> 
</div> 
<div id="tab-content"> 
<ul><li>1234567890-1</li></ul> 
<ul class="hide"><li><a href="javascript:void(0);" onclick="window.location.href='${pageContext.request.contextPath}/user/test.do'">查询</a></li></ul> 
<ul class="hide"><li><a href="javascript:void(0);" onclick="window.location.href='${pageContext.request.contextPath}/user/jilian.do'">级联</a></li></ul> 
<ul class="hide"><li><a href="javascript:popUp();">级联--弹出框</a></li></ul> 
</div> 

</div> 

</body>
</html>