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

		<title>Posts</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<jsp:include page="Admin_list.jsp"></jsp:include>
	<body onload="opener.location.reload()">
	<table width="90%" align="center" cellpadding="9" cellspacing="0"
			border="0" bordercolor="#ffffff">

			<tr bgcolor="#edebbe" bordercolor="#edebbe">
				<td width="15%">
					Plate
				</td>
				<td width="20%" align="left">
					Title
				</td>
				<td width="15%" align="left">
					Author
				</td>
				<td width="20%" align="center">
					Post time
				</td>
				<td width="10%">
					Scan number
				</td>
				<td width="10%" align="center">
					Reply number
				</td>
				<td width="10%" align="center"> 
					Operation
				</td>
			</tr>

			<s:iterator value="posts">
				<tr id="tr">
					<td>
						<font color="#ef255c"><s:property value="groud.title"/></font> 
					</td>
					<td>
						<a href="post/Post_listOne?postId=<s:property value="id"/>"><s:property value="title" /></a>
					</td>
					<td>
						<s:property value="user.username" />
					</td>
					<td>
						<s:property value="createTime" />
					</td>
					<td align="center">
						<s:property value="readTime" />
					</td>
					<td align="center">
						<s:property value="replyTime" />
					</td>
					<td align="center"><a href="admin/Admin_postDelete?postId=<s:property value="id" /> ">Delete</a></td>
				</tr>
			</s:iterator>
		</table>
		<table align="center" width="100%" >
			<tr height="50">
				<td width="5%">
				</td>
				<td></td>
			</tr>
			<tr>
				<td width="5%">
				</td>
				<td><a href="admin/Admin_postList?offiset=1">First</a>
					<s:bean name="org.apache.struts2.util.Counter" id="counter">
   <s:param name="first" value="2" />
   <s:param name="last" value="page" />
   <s:iterator>
   [<a href="admin/Admin_postList?offiset=<s:property/>"><s:property/></a>]
   </s:iterator>
</s:bean>
 <a href="admin/Admin_postList?offiset=<s:property value="page"/>">Last</a>
				</td>
			</tr>
		</table>
	</body>
</html>
