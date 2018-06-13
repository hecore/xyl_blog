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
  <meta name="keywords" content="日志,blog,校友">
  <meta name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>美图</title>
  <meta property="qc:admins" content="17257406576415156651636" />
  <!-- Set render engine for 360 browser -->
  <meta name="renderer" content="webkit">  
  <link rel="icon" href="${base}/favicon.ico" type="image/x-icon" /> 
  <script src="${base}/baguetteBox/js/baguetteBox.min.js"></script>
  <link rel="stylesheet" href="${base}/baguetteBox/css/baguetteBox.css">
	<style type="text/css">
		.am-badge{
		margin-right: 2px;
		border-radius: 3px;
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
			  <li><a href="${base}/friends/">校友</a></li>
			  <li class="am-active">列表</li>
			</ol>
                <table class="am-table am-table-bordered am-table-striped am-table-hover">
			    <thead>
			        <tr>
			            <th width="25%">用户名</th>
			            <th width="25%">昵称</th>
			            <th width="15%">类型</th>
			            <th width="15%">性别</th>
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
				            	<c:if test="${l.sex==0}">
				            		男
				            	</c:if>
				            	<c:if test="${l.sex==1 }">
				            		女
				            	</c:if>		         
						     </td>				         
				            <td>
				            	<div class="am-btn-toolbar">
				                  <div class="am-btn-group am-btn-group-xs">
				                    <a class="am-btn am-btn-default am-btn-xs am-text-primary" onclick="deletefriends(${l.id})"><span class="am-icon-hand-o-right"></span>删除</a>
				                  </div>
				                </div>
				            </td>
				        </tr>
				    </c:forEach>
			    </tbody>
			</table>
			<c:set var="currentPage" value="${friendsPage.pageNumber}" />
			<c:set var="totalPage" value="${friendsPage.totalPage}" />
			<c:set var="actionUrl" value="${base}/admins/friends/add?title=${friends.title}&bozhu=${bozhu}&page=" />
			<c:set var="urlParas" value=""/>
			<center>
				<%@ include file="/common/_paginate.jsp"%>
			</center>
         </div>
	    <div class="am-u-md-4" id="my-side">
	    	 <c:if test="${not empty sessionScope.loginUser}">
	    	 	<c:if test="${systemEditOpen==1}">
			     <div class="side-box">
			    	<div class="my-side-title">
						<span class="am-icon-pencil"> 功能区</span> 
			    	</div>
		    		<button type="button" class="am-btn am-btn-primary am-btn-block" onclick="location.href='${base}/friends/add'">
			    		<i class="am-icon-pencil"></i>
			    		添加校友
					</button> 
					<button type="button" class="am-btn am-btn-primary am-btn-block" onclick="location.href='${base}/friends/manager/'">
			    		<i class="am-icon-photo"></i>
			    		管理校友
					</button>
				</div>
				</c:if>
	    	 </c:if>
		    <%@ include file="/WEB-INF/content/common/side.jsp"%>
		</div>
	  </div>
	  
	</div>
		
	<!-- 底部 -->	
	<%@ include file="/WEB-INF/content/common/footer.jsp"%>
	<script type="text/javascript">
	  function deletefriends(id){
          layer.confirm('您确定要删除该校友吗？', {
		      btn: ['确定删除','取消'],
		      title:'删除校友确认对话框'//按钮
		  }, function(){
		        $.post("${base}/friends/deletefriends/", 
	    			 { 
	    		 		"fid":id,//data
	    		 	 },function(data){
                          if(data.delresult){
                            alert("删除成功");                          
                         }
                         else{
                            alert("删除失败");                           
                         }
                         location.href="${base}/friends/manager";
	    	   });
		  }, function(){
		  });
     }
	
	$(function(){
	    baguetteBox.run('.baguetteBox', {
	        animation: 'fadeIn'
	    });
	});
	$(function(){
		 $(".beauty-keyword-show").each(function(){
			 var ht=$(this).html();
			 $(this).html('');
			 if(ht!=''&&ht!=undefined&&ht!=' '){
				 var arr = ht.split(" ");
				 for (var i = 0; i < arr.length; i++) {
					 if(arr[i].trim()!=""){
						 $(this).append("<a class='am-badge am-badge-success' href='${base}/index/search?keyword="+arr[i]+"'>"+arr[i]+"</a>");
					 }
			 		}
			}
		 })
	 });
		$("img").lazyload({ effect : 'fadeIn'});
</script>
</body>
</html>