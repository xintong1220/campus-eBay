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

		<title>Update User Info</title>

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
          window.alert("Username cannot be empty!");
          return false;
    } else if(password1==""){
          window.alert("Password cannot be empty!");
          return false;         
    }else if(email==""){
          window.alert("Email cannot be empty!");
          return false;         
    }else if(question==""){
          window.alert("Secure question cannnot be empty!");
          return false;         
    }else if(answer==""){
          window.alert("Secure answer cannot be empty!");
          return false;         
    }else {
             
		       if( password1.length<6){
		           window.alert("The length of password cannot be smaller than 6!");
	               return false;
	          }else if(password1!=password2){
	           window.alert("Two password must be same!");
	           document.user.password2.value=null;
	               return false;
	          }else if(question.length<3){
	          	window.alert("Secure question cannot be smaller than 3 char!")
	          	return false;
	          	}else if(answer.length<3){
	          	 window.alert("Secure answer cannot be smaller than 3 char!")
	          	return false;
	          	} else  {	
	          var ch =name.charAt(0);
	          if(ch<9&&ch>0){
	            alert("Username cannot start with number!")
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
						<form method="post" action="user/User_update" name="user"
			onSubmit="return checkup()">
				<p>
					&nbsp;
				</p>
				<p class="STYLE1">
					<b>Update user info</b>
				</p>
				<table border="1" cellspacing="0" bordercolor="#333333">
					<tr>
						<td width="847">
							<table width="800" height="728" border="0" cellspacing="1">
								<tr>
									<td colspan="3" align="center">
										Causion: feils with
										<span class="STYLE2">*</span> must be filled.
									</td>
								</tr>
								<tr>
									<td width="190" height="55" align="right">
										Username:
										<span class="STYLE2">*</span>
									</td>
									<td width="245">
										<label>
											
											<br>
											
											<input name="username" type="text" id="username" value="<s:property value="user.username"/>"/>
										</label>
										
									</td>
									<td rowspan="2" bgcolor="#F2F2F2">
										Only character, number, ., -, _ allowed.
									</td>
									
								</tr>
								<tr>
									<td align="right">
										Password:
										<span class="STYLE2">*</span>
									</td>
									<td>
										<input name="password1" type="password" id="password1" value="<s:property value="user.password"/>"/>
									</td>
									<td rowspan="2" bgcolor="#F2F2F2">
										Length must be 6~16.
									</td>
								</tr>
								<tr>
									<td align="right">
										Confirm:
										<span class="STYLE2">*</span>
									</td>
									<td>
										<input name="password2" type="password" id="password2" value="<s:property value="user.password"/>"/>
									</td>
								</tr>
								<tr>
									<td align="right">
										Email:
										<span class="STYLE2">*</span>
									</td>
									<td>
										<input name="email" type="text" id="email" value="<s:property value="user.email"/>"/>
									</td>
									<td bgcolor="#EFEFEF">
										Used when forget password.
									</td>
								</tr>
								<tr>
									<td align="right">
										Secure question:
										<span class="STYLE2">* </span>
									</td>
									<td>
										<input name="question" type="text" id="question" value="<s:property value="user.question"/>"/>
									</td>
									<td rowspan="2" bgcolor="#EEEEEE">
										Must longer than 3 character. Used when get password back.
									</td>
								</tr>
								<tr>
									<td align="right">
										Secure answer:
										<span class="STYLE2">* </span>
									</td>
									<td>
										<input name="answer" type="text" id="answer" value="<s:property value="user.answer"/>"/>
									</td>
								</tr>
								<tr>
									<td colspan="3" align="right">
										<hr>
									</td>
								</tr>
								<tr>
									<td align="right">
										Whether public info:
									</td>
									<td>
										<label>
										<s:property value="user.isopen"/>
											<input type="radio" name="isopen" value="1" <s:if test="1==user.isOpen"> checked="checked" </s:if>/>
											Y
											<input name="isopen" type="radio" value="0" <s:if test="0==user.isOpen"> checked="checked" </s:if>/>
											N
										</label>
									</td>
									<td bgcolor="#EFEFEF">
										&nbsp;
									</td>
								</tr>
								<tr>
									<td align="right">
										Real name:
									</td>
									<td>
										<input name="realname" type="text" id="realname"
											maxlength="16" value="<s:property value="user.realname"/>"/>
									</td>
									<td rowspan="6" bgcolor="#EFEFEF">
										Personal info
									</td>
								</tr>
								<tr>
									<td align="right">
										Sex:
									</td>
									<td>
										<label>
											<input type="radio" name="sex" value="1" <s:if test="1==user.isOpen"> checked="checked" </s:if>/>
											M
											<input name="sex" type="radio" value="0" <s:if test="0==user.isOpen"> checked="checked" </s:if> />
											F
										</label>
									</td>
								</tr>
								<tr>
									<td align="right">
										Birthday:
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
											Year
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
											Month
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
											Day
										</label>
									</td>
								</tr>
								
								<tr>
									<td align="right">
										Address:
									</td>
									<td>
										<input name="address" type="text" id="address" value="<s:property value="user.address"/>"/>
									</td>
								</tr>
								
								<tr>
									<td height="29" align="right">
										Cellphone:
									</td>
									<td>
										<input name="qq" type="text" id="qq" value="<s:property value="user.qq"/>"/>
									</td>
									
								</tr>

								<tr>
									<td align="right">
										Sign:
									</td>
									<td>
										<label>
											<textarea name="idiograph" id="idiograph" ><s:property value="user.idiograph"/></textarea>
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
