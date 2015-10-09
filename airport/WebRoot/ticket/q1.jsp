<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

		<title>My JSP 'p1.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<style>
* {
	margin: 0px;
	padding: 0px
}

body {
	padding: 20px;
}

h1 {
	text-align: center;
	margin: 10px 0px;
}

h3 {
	text-align: right;
	width: 90%;
	margin: 10px auto;
}

table {
	margin: 0px auto;
	width: 90%;
	border: 1px solid red;
	border-collapse: collapse;
	text-align: center;
}

table tr td {
	border: 1px solid red;
	height: 30px;
}

input[type="text"] {
	width: 90%;
}

input[type="submit"] {
	width: 50px;
	height: 30px;
	margin: 5px 0px;
}
</style>
		<!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
		<script src="<%=basePath%>/resource/jquery/jquery1.11.3.min.js"></script>
		<!--css框架--引入bootstrap-->
		<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
		<link href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css"
			rel="stylesheet">

		<!-- 引入自己的js/css -->
		<link href="<%=basePath%>/12306/css/style.css" rel="stylesheet">

	</head>
	<style type="text/css">
  body{
  background:url("image/001.jpg");
background-size:1400px 768px;
  }
  </style>

	<body>
	
		<div class="container">

			<h1 class="text-center bg-success">
				航班查询页面：
			</h1>
			<h3 class="text-right">
				客服热线：1576622859
			</h3>

			<form class="form-horizontal" role="form" action="air!cp.action"
				method="post">
				<div class="form-group">
					<label for="sfz" class="col-sm-2 control-label">
						始发站：
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sfz" name="sfz"
							placeholder="请输入始发站">
					</div>
				</div>
				<div class="form-group">
					<label for="zdz" class="col-sm-2 control-label">
						到达站：
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="ddz" name="zdz"
							placeholder="请输入到达站">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn   bg-success btn-lg">
							查询
						</button>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>
