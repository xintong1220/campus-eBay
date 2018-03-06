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

		<title>register</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
<!--
.STYLE1 {
	font-size: 16px
}

.STYLE2 {
	color: #FF0033;
	font-style: italic;
}
-->
</style>
	</head>
	<script type="text/javascript" language="javascrip">
	  function checkup(){
   var name = document.user.username.value;
   var password1 = document.user.password1.value;
   var password2 = document.user.password2.value;
   var email = document.user.email.value;
   var question = document.user.question.value;
   var answer = document.user.answer.value;
    if(name==""){
          window.alert("username cannot be empty！");
          return false;
    } else if(password1==""){
          window.alert("password cannot be empty！");
          return false;         
    }else if(email==""){
          window.alert("Email cannot be empty!");
          return false;         
    }else if(question==""){
          window.alert("Secure question cannot be empty!");
          return false;         
    }else if(answer==""){
          window.alert("Secure answer cannot be empty!");
          return false;         
    }else {
             
		       if( password1.length<6){
		           window.alert("The length of password must be bigger than 6!");
	               return false;
	          }else if(password1!=password2){
	           window.alert("The two passwords are not the same!");
	           document.user.password2.value=null;
	               return false;
	          }else if(question.length<3){
	          	window.alert("The secure question must be longger than 3 char!")
	          	return false;
	          	}else if(answer.length<3){
	          	 window.alert("The secure answer must be longger than 3 char!")
	          	return false;
	          	} else  {	
	          var ch =name.charAt(0);
	          if(ch<9&&ch>0){
	            alert("User name cannot start with number!")
	            return  false;
	          }		    
			      }
    }
			       return true;     
  }
  </script>
	<body>
		<%
			String returnInfo = (String) request.getAttribute("returnInfo");
		%>
		<center>
						<form method="post" action="user/User_register" name="user"
			onSubmit="return checkup()">
				<p>
					&nbsp;
				</p>
				<p class="STYLE1">
					<b>register</b>
				</p>
				<table border="1" cellspacing="0" bordercolor="#333333">
					<tr>
						<td width="847">
							<table width="800" height="728" border="0" cellspacing="1">
								<tr>
									<td colspan="3" align="center">
										Causion: feild with
										<span class="STYLE2">*</span>must be filled.
									</td>
								</tr>
								<tr>
									<td width="190" height="55" align="right">
										username:
										<span class="STYLE2">*</span>
									</td>
									<td width="245">
										<label>
											<%
												if (returnInfo != null) {
											%>
											<span class="STYLE2"><%=returnInfo%></span>
											<%
												}
											%>
											<br>
											<input name="username" type="text" id="username" />
										</label>
									</td>
									<td width="342" bgcolor="#EFEFEF">
										Only character, number, ., _, - allowed.
									</td>
								</tr>
								<tr>
									<td align="right">
										password:
										<span class="STYLE2">*</span>
									</td>
									<td>
										<input name="password1" type="password" id="password1" />
									</td>
									<td rowspan="2" bgcolor="#F2F2F2">
										Length must between 6~16.
									</td>
								</tr>
								<tr>
									<td align="right">
										confirm:
										<span class="STYLE2">*</span>
									</td>
									<td>
										<input name="password2" type="password" id="password2" />
									</td>
								</tr>
								<tr>
									<td align="right">
										E-mail:
										<span class="STYLE2">*</span>
									</td>
									<td>
										<input name="email" type="text" id="email" />
									</td>
									<td bgcolor="#EFEFEF">
										Used when forget password.
									</td>
								</tr>
								<tr>
									<td align="right">
										problem：
										<span class="STYLE2">* </span>
									</td>
									<td>
										<input name="question" type="text" id="question" />
									</td>
									<td rowspan="2" bgcolor="#EEEEEE">
										Used when get back password.
									</td>
								</tr>
								<tr>
									<td align="right">
										answer：
										<span class="STYLE2">* </span>
									</td>
									<td>
										<input name="answer" type="text" id="answer" />
									</td>
								</tr>
								<tr>
									<td colspan="3" align="right">
										<hr>
									</td>
								</tr>
								<tr>
									<td align="right">
										public info：
									</td>
									<td>
										<label>
											<input type="radio" name="isopen" value="1" />
											yes
											<input name="isopen" type="radio" value="0" checked="checked" />
											no
										</label>
									</td>
									<td bgcolor="#EFEFEF">
										&nbsp;
									</td>
								</tr>
								<tr>
									<td align="right">
										real name：
									</td>
									<td>
										<input name="realname" type="text" id="realname"
											maxlength="16" />
									</td>
									<td rowspan="6" bgcolor="#EFEFEF">
										
									</td>
								</tr>
								<tr>
									<td align="right">
										sex：
									</td>
									<td>
										<label>
											<input type="radio" name="sex" value="1" />
											male
											<input name="sex" type="radio" value="0" checked="checked" />
											female
										</label>
									</td>
								</tr>
								<tr>
									<td align="right">
										birthday：
									</td>
									<td>
										<label>
											<select name="year" id="year">
												<%
													for (int i = 1900; i < 2013; i++) {
												%>
												<option>
													<%=i%>
												</option>
												<%
													}
												%>
											</select>
											year
											<select name="month" id="month">
												<%
													for (int i = 1; i < 13; i++) {
												%>
												<option>
													<%=i%>
												</option>
												<%
													}
												%>
											</select>
											month
											<select name="day" id="day">
												<%
													for (int i = 1; i < 32; i++) {
												%>
												<option>
													<%=i%>
												</option>
												<%
													}
												%>
											</select>
											day
										</label>
									</td>
								</tr>
								
								<tr>
									<td align="right">
										address：
									</td>
									<td>
										<input name="address" type="text" id="address" />
									</td>
								</tr>
								
								<tr>
									<td height="29" align="right">
										telphone：
									</td>
									<td>
										<input name="qq" type="text" id="qq" />
									</td>
									
								</tr>

								<tr>
									<td align="right">
										status：
									</td>
									<td>
										<label>
											<textarea name="idiograph" id="idiograph"></textarea>
										</label>
									</td>
								</tr>
								<tr>
									<td colspan="3" align="center">
										<label>
											<input type="submit" name="Submit" value="submit" />
										</label>
										<label>		&nbsp; &nbsp;
				<input type="reset" value="reset" name="reset"></label>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<p>
					&nbsp;
				</p>
			</form>
		</center>
	</body>
</html>
