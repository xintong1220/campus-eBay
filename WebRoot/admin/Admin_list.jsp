<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>Administrator</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<jsp:include page="../validate/User_validate.jsp"></jsp:include>
	<jsp:include page="../validate/Admin_validate.jsp"></jsp:include>
	<body onload="opener.location.reload()">
		<table align="center" width="90%">
			<tr align="center">
				<td>
					<font color="#a07749" size="5"><strong><s:property value="admin.plate.id"/>Plate manage</strong>
					</font>
				</td>
			</tr>
		</table>
		<hr color="#e9dbcf" size="10" />
		<table>
			<tr>
				<td width="10%"></td>
				<td><a href="admin/Admin_userList">User</a> | <a href="admin/Admin_postList">Post</a></td>
			</tr>
		</table>
	</body>
</html>
