<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>picture-show</title>
		<script type="text/javascript" src="static/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="static/js/bootstrap.min.js"></script>
		<link href="static/css/bootstrap.min.css"  rel="stylesheet">
		
		<script src="static/js/jquery.min.js"></script>
		<script src="static/js/sinlar.js"></script>
		
<style type="text/css">
.biaoge{
	vertical-align: middle !important;
	text-align: center;
}
.shijian{
	width:
}
.tupian{
	width:240px;
	height:160px;
}

</style>
<title>pictures show</title>
</head>

<body>
	<!-- 搭建显示页面 -->
	
	<div class="container">
		<div class="row">
		  	<div class="col-md-12"><h1>SSM_CRUD</h1></div>		  
		</div>
		<div class="row">
			<div class="col-md-8 "></div>
		    <div class="col-md-3 ">
		    	<button type="button" class="btn btn-info">
		    	<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 
		    	添加</button>
		    	<button type="button" class="btn btn-danger">
		    	<span class="glyphicon glyphicon-minus" aria-hidden="true"></span> 
		    	删除</button>
		    </div>
		</div>
		<div class="row">
			<div class="col-md-12 ">
				<table class="table" id="photo_table">
					<thead>
						<tr>
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
					url:"newolder",
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
			 
			 
			function build_photo_table(result){
				$("#photo_table tbody").empty();
				var pic = result.extend.pageInfo.list;
				$.each(pic,function(index,item){
					var picId = $("<td></td>").addClass("biaoge").append(item.id);
					var picTime = $("<td></td>").addClass("biaoge").append(item.time);
					var imgShow = $("<img  style='width:240px;height:160px;' src='"+item.address+"'/>").addClass("data-img")
					var picAddress = $("<td></td>").addClass("biaoge").append(imgShow);
					var picType = $("<td></td>").addClass("biaoge").append(item.type);
					var editBtn = $("<button></button>").addClass("btn btn-success")
								  .append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
								  .append("编辑");
					var delBtn = $("<button></button>").addClass("btn btn-danger")
					  .append($("<span></span>").addClass("glyphicon glyphicon-trash"))
					  .append("删除");
					var btnTd = $("<td></td>").addClass("biaoge").append(editBtn).append(" ").append(delBtn);
								  
					$("<tr></tr>").append(picId)
					.append(picTime)
					.append(picAddress)
					.append(picType)
					.append(btnTd)
					.appendTo("#photo_table tbody");
				});
			}
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
		</script>
		
	</div>
	
</body>
</html>