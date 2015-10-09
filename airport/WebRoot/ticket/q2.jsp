<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!--引入struts标签 -->
<%@ taglib prefix="s" uri="/struts-tags"%>
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

		<title>My JSP 'p2.jsp' starting page</title>

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
		<link href="<%=basePath%>/12306/css/style.css" rel="stylesheet">

	</head>
	<style type="text/css">
  body{
  background:url("image/001.jpg");
background-size:1400px 768px;
  }
  </style>

	<body >
		<div class="container">
			<h1 class="text-center    bg-success""  >
				符合查询条件的所有车次
			</h1>
			<h3 class="text-right">
				<a href="ticket/q1.jsp" class="btn  bg-success">重新查询</a>
			</h3>



			<h3>
				你当前选择的始发站是：
				<strong class="text-danger">${sfz}</strong> ,到达站是：
				<strong class="text-danger">${zdz}</strong>
			</h3>
			<table
				class="table table-striped table-bordered table-condensed text-center">
				<tr>
					<td width="15%">
						车次
					</td>
					<td width="20%">
						始发站
					</td>
					<td width="20%">
						到达站
					</td>
					<td width="15%">
						历时
					</td>
					<td width="15%">
						硬卧
					</td>

					<td width="15%">
						预定
					</td>
				</tr>




				<tr>
					<td colspan="6" class="text-danger text-center">
						以下是传统遍历
					</td>
				</tr>

				<!-- 遍历结果，显示在这里 -->
				<%
				    List<String[]> result = (List<String[]>) request.getAttribute("cpjg");

				    for (String[] s : result) {
				%>
				<!-- 重复的到中间 -->

				<tr>
					<td>
						<%=s[0]%>
					</td>
					<td>
						<%=s[1]%>
					</td>
					<td>
						<%=s[2]%>
					</td>
					<td>
						<%=s[3]%>
					</td>
					<td>
						<%=s[4]%>
					</td>
					<td>
						<!--form-post,?-get -->
						<a href="air!yd.action?checi=<%=s[0]%>" class="btn btn-success">预定</a>
					</td>
				</tr>

				<%
				    }
				%>
				<tr>
					<td colspan="6" class="text-danger text-center">
						以下是Struts标签遍历
					</td>
				</tr>

				<!--  -->
				<s:iterator value="cpjg" var="u">
					<!-- 这里放循环的东西 -->
					<tr>
						<td>
							<s:property value="#u[0]" />
						</td>
						<td>
							<s:property value="#u[1]" />
						</td>
						<td>
							<s:property value="#u[2]" />
						</td>
						<td>0
							<s:property value="#u[3]" />
						</td>
						<td>0
							<s:property value="#u[4]" />
						</td>
						<td>
							<a href="air!yd.action?checi=<s:property value="#u[0]" />"
								class="btn btn-success">预定</a>
						</td>

					</tr>
				</s:iterator>







			</table>
		</div>

	</body>
</html>
