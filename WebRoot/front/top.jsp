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
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>top</title>
		<link rel="stylesheet" href="../skin/css/base.css" type="text/css" />
		<link rel="stylesheet" href="../skin/css/top.css" type="text/css" />
		<script language='javascript' type="text/javascript"
			src="../skin/js/frame/top.js"></script>
	</head>

	<body bgColor='#ffffff' onload="opener.location.reload()">
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			>
			<tr>
				<td width='20%' height="60" align="left" >
					<img height="60" src="../skin/images/frame/logoo.jpg" />
				</td>
				<td width='80%' height="60" align="right" valign="bottom">
					<table width="750" border="0" cellspacing="0" cellpadding="0">
						<tr>
							
							<td align="right" height="26" style="padding-right: 10px; line-height: 26px;">
							<s:if test="null!=#session.username">
								Hello:
								<a href="../user/User_info" target="main"><font
									color="#ff0000"><s:property value="#session.username" />
								</font>
								</a>,Welcome back！
								[<a href="../user/User_registerInput" target="main">Register</a>] 
								[<a href="../user/User_loginInput" target="main">Relogin</a>] 
								[<a href="../user/User_exit">Logout</a>]&nbsp;
								</s:if>
								<s:else> 
								<font color="#ff0000">You haven't login!</font>  
								[<a href="../user/User_registerInput" target="main">Reisgre</a>] 
								[<a href="../user/User_loginInput" target="main">Login</a>] &nbsp;&nbsp;
								</s:else>
								
							</td>
						</tr>
						<tr>
							<td align="right" height="34"
								style="padding-right: 50px; line-height: 26px;">
								<a href="../user/User_info?userId=<s:property value="#session.userId" />" target="main">User panel</a>&nbsp;
								<a href="../admin/Admin_list" target="main">Backend manage</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
