<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Secondhand Sales</title>
<style>
body
{
  scrollbar-base-color:#C0D586;
  scrollbar-arrow-color:#FFFFFF;
  scrollbar-shadow-color:DEEFC6;
}
</style>
</head>
<frameset rows="60,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="front/top.jsp" name="topFrame" scrolling="no" id="topId">
 
  <frameset cols="180,*"  frameborder="NO" border="0" framespacing="0">
    <frame src="front/left.jsp" noresize name="left" scrolling="auto">
    <frame src="front/main.jsp" noresize name="main" scrolling="auto">
  </frameset>
</frameset>
<noframes>
	<body>Your broswer doesn't support frameset!</body>
</noframes>
</html>