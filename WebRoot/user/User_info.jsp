<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>


		<title>User Info</title>

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
	<body onload="opener.location.reload()">
		<font color="#804040">User info - <br>
			<br>
		</font>
		<s:property value="user.userName" />
		<hr>
		<br>
		<table width="560" border="0" height="185">
			<tbody>
				<tr>
					<td>
						&nbsp;
					</td>
					<td>
						User name:
					</td>
					<td>
						<s:property value="user.username" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						User type:
					</td>
					<td>
						<font color="#ff0080"><s:property value="user.type" /></font>
						<s:if test="'ordernary' == user.type">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;(<font
								color="#8000ff"><a href="../admin/Admin_addInput">Apply administrator</a>
							</font>)</font>
						</s:if>
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						Title:
					</td>
					<td>
						<s:if test="200>=user.score">
					Freshman
					</s:if>
						<s:elseif test="500>=user.score">
					Sophomore
					</s:elseif>
						<s:elseif test="1000>=user.score">
					Junior
					</s:elseif>
						<s:elseif test="2000>=user.score">
					Senior
					</s:elseif>
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						Score:
					</td>
					<td>
						<s:property value="user.score" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				
				<tr>
					<td>
						&nbsp;
					</td>
				</tr>
				
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						Real name:
					</td>
					<td>
						<s:property value="user.realname" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						Sex:
					</td>
					<td>
						<s:if test="1==user.sex">M</s:if>
						<s:else>F</s:else>
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						Birthday:
					</td>
					<td>
						<s:property value="user.birthday" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						Address:
					</td>
					<td>
						<s:property value="user.address" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						Cellphone:
					</td>
					<td>
						<s:property value="user.qq" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						Sign:
					</td>
					<td>
						<s:property value="user.idiograph" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
			</tbody>
		</table>
		<hr />
		<br>
		<br>
		<font color="#8080ff"><a href="user/User_updateInput">Update personal info</a>
		</font>
	</body>
</html>
