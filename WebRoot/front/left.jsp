<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>left</title>
<link rel="stylesheet" href="../skin/css/base.css" type="text/css" />
<link rel="stylesheet" href="../skin/css/menu.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script language='javascript'>var curopenItem = '1';</script>
<script language="javascript" type="text/javascript" src="../skin/js/frame/menu.js"></script>
<base target="main" />
</head>
<body>
<table width='99%' height="100%" border='0' cellspacing='0' cellpadding='0' align="center">
  <tr>
    <td style='padding-left:3px;padding-top:8px' valign="top">
	<!-- Item 1 Strat -->
      <dl class='bitem'>
        <dt onClick='showHide("items1_1")'><b>Electronics</b></dt>
        <dd style='display:block' class='sitem' id='items1_1'>
          <ul class='sitemu'>
            <li>
              <div class='items'>
                <div class='fllct'><a href='../post/Post_list?groudId=1' target='main'>Laptop</a></div>
              </div>
            </li>
            <li><a href='../post/Post_list?groudId=2' target='main'>Phone</a> </li>
            <li>
              <div class='items'>
                <div class='fllct'><a href='../post/Post_list?groudId=3' target='main'>Accessories</a></div>
              </div>
            </li>
            <li><a href='../post/Post_list?groudId=4' target='main'>Others</a> </li>
          </ul>
        </dd>
      </dl>
      <!-- Item 1 End -->
      
      <!-- Item 2 Strat -->
      <dl class='bitem'>
        <dt onClick='showHide("items3_1")'><b>Home & Furniture</b></dt>
        <dd style='display:block' class='sitem' id='items3_1'>
          <ul class='sitemu'>
            <li>
              <div class='items'>
                <div class='fllct'><a href='../post/Post_list?groudId=5' target='main'>Kitchen</a></div>
              </div>
            </li>
            <li><a href='../post/Post_list?groudId=6' target='main'>Bedding & Bath</a> </li>
            <li>
              <div class='items'>
                <div class='fllct'><a href='../post/Post_list?groudId=7' target='main'>Furniture</a></div>
              </div>
            </li>
            <li><a href='../post/Post_list?groudId=8' target='main'>Others</a> </li>
          </ul>
        </dd>
      </dl>
      <!-- Item2 End -->
      
      
      <!-- Item 3 Strat -->
      <dl class='bitem'>
        <dt onClick='showHide("items4_1")'><b>Cars&Books</b></dt>
        <dd style='display:block' class='sitem' id='items4_1'>
          <ul class='sitemu'>
            <li>
              <div class='items'>
                <div class='fllct'><a href='../post/Post_list?groudId=10' target='main'>Textbook</a></div>
              </div>
            </li>
            <li><a href='../post/Post_list?groudId=9' target='main'>Magazines</a> </li>
            <li>
              <div class='items'>
                <div class='fllct'><a href='../post/Post_list?groudId=11' target='main'>Cars & GPS</a></div>
              </div>
            </li>
            <li><a href='../post/Post_list?groudId=12' target='main'>Others</a> </li>
          </ul>
        </dd>
      </dl>
      <!-- Item3 End -->
    
	  </td>
  </tr>
</table>
</body>
</html>
