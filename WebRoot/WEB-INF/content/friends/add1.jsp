<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<!-- 引入基本库和js，css文件 -->
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
    <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="好友">
  <meta name="keywords" content="日志,blog,好友">
  <meta name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>查询校友</title>
  <meta property="qc:admins" content="17257406576415156651636" />
  <!-- Set render engine for 360 browser -->
  <meta name="renderer" content="webkit">  
  <link rel="icon" href="${base}/favicon.ico" type="image/x-icon" /> 
  <script src="${base}/baguetteBox/js/baguetteBox.min.js"></script>
  <link rel="stylesheet" href="${base}/baguetteBox/css/baguetteBox.css">
  <link rel="stylesheet" type="text/css" href="${base}/uploadify/uploadify.css">
  <!--引入JS-->
  <script type="text/javascript" src="${base}/uploadify/jquery.uploadify.js"></script>
   <link rel="stylesheet" href="${base}/kindeditor-4.1.10/plugins/code/prettify.css" />
	<script charset="utf-8" src="${base}/kindeditor-4.1.10/kindeditor.js"></script>
	<script charset="utf-8" src="${base}/kindeditor-4.1.10/lang/zh_CN.js"></script>
	<script charset="utf-8" src="${base}/kindeditor-4.1.10/plugins/code/prettify.js"></script>
  <style type="text/css">
  	.baguetteBox img{
  		box-sizing: border-box;
		max-width: 100%;
		height: auto;
		vertical-align: middle;
		border: 0;
  		padding-bottom: 20px;
  	}
  	textarea {
		border-color: black;
		border-width: 1px;
		border-style:solid;
		width: 100%;
		margin-bottom: 20px;
	}
  </style>


</head>
<body>
	<%@ include file="/WEB-INF/content/common/header.jsp"%>
	<div class="am-container " id="main">
				
	  <div class="am-g am-g-fixed" >
	    <div class="am-u-md-8">
		    <ol class="am-breadcrumb">
			  <li><a href="${base}/" class="am-icon-home">首页</a></li>
			  <li><a href="${base}/beauty/">校友</a></li>
			  <li class="am-active">查询</li>
			</ol>
			<div class="am-form-group">
		      <label for="frineds-search">查询条件</label>
			  <input type="text" id="frineds-search" class="am-form-field am-radius" require placeholder="请输入用户名/真实姓名/QQ/手机/邮箱" />
		      <p><button type="button" class="am-btn am-btn-default" onclick="dosearch();">查询</button></p>
		    </div>
            <!--展示查询结果 -->
            <div id="userList" style="display:none;">
                <table class="am-table am-table-bordered am-table-striped am-table-hover">
			    <thead>
			        <tr>
			            <th width="25%">用户名</th>
			            <th width="25%">昵称</th>
			            <th width="15%">类型</th>
			            <th width="20%">操作</th>
			        </tr>
			    </thead>
			    <tbody>
				    <c:forEach items="${friendsPage.list}" var="l">
				        <tr class="">
				            <td>${l.username}</td>
				            <td>${l.realname}</td>
				            <td>
				            	<c:if test="${l.type==0}">
				            		注册用户
				            	</c:if>
				            	<c:if test="${l.type==1 }">
				            		QQ互联用户
				            	</c:if>
				            </td>				         
				            <td>
				            	<div class="am-btn-toolbar">
				                  <div class="am-btn-group am-btn-group-xs">
				                    <a class="am-btn am-btn-default am-btn-xs am-text-primary" onclick="recoverUser(${l.id})"><span class="am-icon-hand-o-right"></span> 解封</a>
				                  </div>
				                </div>
				            </td>
				        </tr>
				    </c:forEach>
			    </tbody>
			</table>
			<c:set var="currentPage"  value="${friendsPage.pageNumber}" />
			<c:set var="totalPage"  value="${friendsPage.totalPage}" />
			<c:set var="actionUrl" value="${base}/admins/friends/add?title=${friends.title}&bozhu=${bozhu}&page=" />
			<c:set var="urlParas" value=""/>
			<center>
				<%@ include file="/common/_paginate.jsp"%>
			</center>
           </div>
	    </div>
	    
	    <div class="am-u-md-4" id="my-side">
		    <%@ include file="/WEB-INF/content/common/side.jsp"%>
		</div>
	  </div>
	  
	</div>
<c:set var="currentPage" value="${videoPage.pageNumber}" />
<c:set var="totalPage" value="${videoPage.totalPage}" />
<c:set var="actionUrl" value="${base}/video?page=" />
<c:set var="urlParas" value="" />	
<!-- 底部 -->	
	<%@ include file="/WEB-INF/content/common/footer.jsp"%>
     <script type="text/javascript">   
     function dosearch(){
    	 var frineds_search=$("#frineds-search").val();
    	 if(frineds_search==""){
    		 alert("查询信息不能为空");
    	 }else{
	    	 $.post("${base}/friends/search/", 
	    			 { 
	    		 		"friends_serach":frineds_search,//data
	    		 	 },function(data){
                         if(data.friendsPage.totalRow>=1){
                             $("#userList").css("display","block");  
                             $("#currentPage").val=data.currentPage; 
                             $("#totalPage").val=data.totalPage;                          
                         }else{
                            alert("没有查到相应用户");                           
                         }
	    			 });
    	 }
     } 
</script>
</body>
</html>