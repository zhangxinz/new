<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>picture-show</title>
		
		<script src="static/js/jquery.min.js"></script>
		<script type="text/javascript" src="static/js/jquery-3.3.1.min.js"></script>
		<link href="static/css/bootstrap.min.css"  rel="stylesheet">
		<script src="static/js/sinlar.js"></script>
		
<style type="text/css">
.biaoge{
	vertical-align: middle !important;
	text-align: center;
}
.shijian{
	
}
.tupian{
	width:240px;
	height:160px;
}

</style>
<title>pictures show</title>
</head>

<body>
	<!-- photo添加模态框 -->

	<div class="modal fade" id="picAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"  >图片添加</h4>
	      </div>
	      <div class="modal-body">
	      	<form class="form-horizontal">
			  <div class="form-group">
			    <label  class="col-sm-2 control-label">phototime</label>
			    <div class="col-sm-10">
			      <input type="text" name="time" class="form-control" id="picTime_add_input" placeholder="2018-11-21 16:51:6666">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">photoaddress</label>
			    
			    <div class="col-sm-10">
			      <input type="text" name="address" class="form-control" id="picAddress_add_input" placeholder="/image/Adress">
			    </div>
			  </div>
			  
			</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary" id="pic_update_btn">更新</button>
	      </div>
	    </div>
	  </div>
	</div> 
	<!-- photo修改模态框 -->
	
	<div class="modal fade" id="picUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"  >图片修改</h4>
	      </div>
	      <div class="modal-body">
	      	<form class="form-horizontal">
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">phototime</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="picTime_update_input" placeholder="Time">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">phototype</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="picType_update_input" placeholder="Type">
			    </div>
			  </div>
			  
			</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary" id="pic_update_btn">更新</button>
	      </div>
	    </div>
	  </div>
	</div> 

	<!-- 搭建显示页面 -->
	<form action="deleteall">
	<div class="container">
		<div class="row">
		  	<div class="col-md-12"><h1>SSM_CRUD</h1></div>		  
		</div>
		<div class="row">
			<div class="col-md-8 "></div>
		    <div class="col-md-3 ">
		    	<input type="hidden" name="lTime" value="${time}">
		    	<input type="text" name="time">
		    	<input id="picdeleat" type="submit" name="sub" class="btn btn-danger glyphicon-minus glyphicon" value="查询"/>
		    	<c:if test="${user.userRoot==1 }">
		    	<button type="button" class="btn btn-info" id="pic_add_model_btn">
		    	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 
		    	添加</button>
		    	
		    	<input id="picdeleat" type="submit" name="" class="btn btn-danger glyphicon-minus glyphicon" value="删除"/>
		    	</c:if>
		    </div>
		</div>
		
		<div class="row">
			<div class="col-md-12 ">
				<table class="table" id="photo_table">
					<thead>
						<tr>
							<th style="text-align:center;">选择</th>
							<th style="text-align:center;">#</th>
							<th style="text-align:center; width:220px;">时间</th>
							<th style="text-align:center; width:500px;">图片</th>
							<th style="text-align:center;">属性</th>
							<th style="text-align:center;">操作</th>
						</tr>
					</thead>
					
						<tbody>
						
						</tbody>
					
				</table>
			</div>
			<div class="pic_show" style="display-none: block;"> <p class="pic_close">
				<span class="gb" title="关闭">x</span></p> 
				<div class="pic_box"><img src="">
				</div> 
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6" id="page_info_area">
				
			</div>
			<div class="col-md-6" id="page_info_area2">
			</div>
		</div>
		<script type="text/javascript" src="static/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			 /* $(function(){
				$.ajax({
					url:"newshow",
					data:"pn=1",
					type:"get",
					success:function(result){
						console.log(result);
						build_photo_table(result);
						build_page_info(result);
						build_page_nav(result);
					}
				});
			}); */
			$(function(){
				to_page(1);
			});
			function to_page(pn){
				$.ajax({
					url:"newshow",
					data:"pn="+pn,
					type:"get",
					success:function(result){
						console.log(result);
						build_photo_table(result);
						build_page_info(result);
						build_page_nav(result);
						
					}
				});
			}
			</script>
			<c:if test="${user.userRoot==0 }">
			<script type="text/javascript">	 
			function build_photo_table(result){
				$("#photo_table tbody").empty();
				var pic = result.extend.pageInfo.list;
				$.each(pic,function(index,item){
					
					var checkBox = $("<input name='checkbox' type='checkbox' id='inlineCheckbox1' value='"+item.id+"'> ");
					var picId = $("<td></td>").addClass("biaoge").append(item.id);
					var picTime = $("<td></td>").addClass("biaoge").append(item.time);
					var imgShow = $("<img  style='width:240px;height:160px;' src='"+item.address+"'/>").addClass("data-img")
					var picAddress = $("<td></td>").addClass("biaoge").append(imgShow);
					var picType = $("<td></td>").addClass("biaoge").append(item.type);
					var editBtn = $("<button></button>").addClass("btn btn-success edit_btn")
								  .append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
								  .append("编辑");
								  
					$("<tr></tr>")
					.append(checkBox)
					.append(picId)
					.append(picTime)
					.append(picAddress)
					.append(picType)
					.appendTo("#photo_table tbody");
				});
			}
			</script>
			</c:if>
			
			<c:if test="${user.userRoot==1 }">
			<script type="text/javascript">	 
			function build_photo_table(result){
				$("#photo_table tbody").empty();
				var pic = result.extend.pageInfo.list;
				$.each(pic,function(index,item){
					
					var checkBox = $("<input name='checkbox' type='checkbox' id='inlineCheckbox1' value='"+item.id+"'> ");
					var picId = $("<td></td>").addClass("biaoge").append(item.id);
					var picTime = $("<td></td>").addClass("biaoge").append(item.time);
					var imgShow = $("<img  style='width:240px;height:160px;' src='"+item.address+"'/>").addClass("data-img")
					var picAddress = $("<td></td>").addClass("biaoge").append(imgShow);
					var picType = $("<td></td>").addClass("biaoge").append(item.type);
					var editBtn = $("<button></button>").addClass("btn btn-success edit_btn")
								  .append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
								  .append("编辑");
					
					var delBtn = $("<a href='deleteall?checkbox="+item.id+"'></a>").addClass("btn btn-danger delete_btn")
					  .append($("<span></span>").addClass("glyphicon glyphicon-trash"))
					  .append("删除");
					var btnTd = $("<td></td>").addClass("biaoge").append(editBtn).append(" ").append(delBtn);
								  
					$("<tr></tr>")
					.append(checkBox)
					.append(picId)
					.append(picTime)
					.append(picAddress)
					.append(picType)
					.append(btnTd)
					.appendTo("#photo_table tbody");
				});
			}
			</script>
			</c:if>
			<script type="text/javascript">	 
			function build_page_info(result){
				$("#page_info_area").empty();
				$("#page_info_area").append("当前"+result.extend.pageInfo.pageNum+"页,总"+result.extend.pageInfo.pages+"页，总共"+result.extend.pageInfo.total+"记录");
			}
			function build_page_nav(result){
				$("#page_info_area2").empty();
				var ul = $("<ul></ul>").addClass("pagination")
				var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
				var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
				if(result.extend.pageInfo.hasPreviousPage == false){
					/* firstPageLi.addClass("disabled");
					prePageLi.addClass("disable"); */
					firstPageLi.css("display","none");
					prePageLi.css("display","none");
				}
				firstPageLi.click(function(){
					to_page(1);
				});
				prePageLi.click(function(){
					to_page(result.extend.pageInfo.pageNum - 1);
				});
				
				
				var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
				var lastPageLi=$("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
				if(result.extend.pageInfo.hasNextPage == false){
					nextPageLi.css("display","none");
					/* lastPageLi.addClass("disable"); */
					lastPageLi.css("display","none");
				}
				nextPageLi.click(function(){
					to_page(result.extend.pageInfo.pageNum + 1)
				});
				lastPageLi.click(function(){
					to_page(result.extend.pageInfo.pages)
				});
				
				ul.append(firstPageLi).append(prePageLi);
				
				$.each(result.extend.pageInfo.navigatepageNums,function(index,item){
					var numLi = $("<li></li>").append($("<a></a>").append(item));
					if(result.extend.pageInfo.pageNum == item){
						numLi.addClass("active");
					}
					numLi.click(function(){
						to_page(item);
					});
					ul.append(numLi);
				});
				ul.append(nextPageLi).append(lastPageLi);
				var navEle = $("<nav></nav>").append(ul);
				navEle.appendTo("#page_info_area2")
				
			}
			/* $(".edit_btn").click(function(){
				$('#picUpdateModal').modal({
					  keyboard: false
					})
			}); */
			$(document).on("click",".edit_btn",function(){
				$('#picUpdateModal').modal({
					  keyboard: false
					})
			});
			
			$(document).on(
					"click",".edit_btn",function(){
				$('#picUpdateModal').modal({
					  keyboard: false
					})
			});
			$("#pic_add_model_btn").click(function(){
				$('#picAddModal').modal({
					backdrop:"static"
				});
				function getPics(){
					$.ajax({
						
					})
				}
				
			});
		</script>
		
	</div>
	</form>
</body>
</html>