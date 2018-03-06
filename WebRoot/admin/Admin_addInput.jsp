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

		<title>Add administrator</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<body>
		<form action="admin/Admin_add" method="post">
			<table cellpadding="5" cellspacing="5">
				<tr>
					<td width="20%"></td>
					<td>
						<font color="#ff0000">Current score: <s:property value='user.score' />
						(only those with more than 500 can be an administrator)</font>
					</td>
				</tr>
				<tr height="30"></tr>
				
				<s:if test="500<=user.score">
				<tr>
					<td width="20%"></td>
					<td>
						<font color="#0000a0">Choose the plate you want to manage:</font>
					</td>
				</tr>
				<s:iterator value="plates">
					<tr>
						<td width="20%"></td>
						<td>

							<input type="radio" name="plateId"
								value="<s:property value='id' />" />
							<s:property value='name' />
							<br>
						</td>
					</tr>
				</s:iterator>
				
				<tr>
					<td width="20%"></td>
					<td><font color="#0000a0">Apply reason:</font></td>
				</tr>
				
				<tr>
					<td width="20%"></td>
					<td><textarea name="context" id="context" cols="30" rows="5"></textarea></td>
				</tr>
				
				<tr>
					<td width="20%"></td>
					<td><input type="submit" value="Submit"/></td>
				</tr>
				</s:if>
			</table>
		</form>
	</body>
</html>
