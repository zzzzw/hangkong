<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'p5.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
		<script src="<%=basePath%>/resource/jquery/jquery1.11.3.min.js"></script>
		<!--css框架--引入bootstrap-->
		<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
		<link href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css"
			rel="stylesheet">

		<!-- 引入自己的js/css -->
		<link href="<%=basePath%>/ticket/css/style.css" rel="stylesheet">
		<script src="<%=basePath%>/ticket/js/main.js"></script>

	</head>
<style type="text/css">
  body{
  background:url("image/001.jpg");
background-size:1400px 768px;
  }
  </style>

	<body>
	<div class="container">
			<h1 class="text-center  bg-success"">
				付款页
			</h1>
			<h3>
				应付金额为：
				<strong class="text-danger">${zonge}</strong>
			</h3>
			<form action="air!fukuan.action" method="post">
			<table
				class="table table-striped table-bordered table-condensed text-center">
				<tr>
					<td colspan="4">
						请选择付款方式：
					</td>
				</tr>
				<tr>
					<td>
					<input type="hidden" value="${zonge}" name="zonge"/>
						<input type="radio" value="CMBCHINA-NET" name="pd_FrpId" />
						招商银行
					</td>
					<td>
						<input type="radio" value="ICBC-NET" name="pd_FrpId" />
						工商银行
					</td>
					<td>
						<input type="radio" value="ABC-NET" name="pd-FrpId" />
						农业银行
					</td>
					<td>
						<input type="radio" value="CCB-NET" name="pd-FrpId" />
						建设银行
					</td>
				</tr>
				
				

				<tr>
					<td colspan="4">
						<%--<a onclick="tk();" class="bg-success"">点击付款</a>
						--%>
						<input type="submit" value="点击付款" class="btn btn-success"/>
					</td>
				</tr>
			</table>
		</form>	
		</div>
	</body>
</html>
