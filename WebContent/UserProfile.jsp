<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>User Profile Page</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color:#FF3300}
.style4 {color: #660000}
-->
</style>
</head>
<body>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li class="current_page_item"><span><a href="index.html">Home</a></span></li>
			<li><a href="AdminLogin.jsp">Bank Admin</a></li>
			<li><a href="CompanyLogin.jsp">Transport Company</a></li>
			<li><a href="UserLogin.jsp">User</a></li>
			<li><a href="#"></a></li>
			<li><a href="#"></a></li>
		</ul>
	</div>
	<!-- end #menu -->
	<div id="header">
		<div id="logo">
			<h1><a href="#" class="style1">Anomaly Feature Detection In Financial Frauding</a></h1>
	  </div>
		<div id="search">
			<form method="get" action="">
				<fieldset>
					<input type="text" name="s" id="search-text" size="15" value="enter keywords here..." />
					<input type="submit" id="search-submit" value="GO" />
				</fieldset>
			</form>
		</div>
	</div>
	<div id="splash">&nbsp;</div>
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
				  <div class="post">
						<h2 class="title"><a href="#">User <span class="style3"><%=(String)application.getAttribute("uname")%></span>'s Details..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
          <table width="519" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
           
            <%
						
						String user=(String )application.getAttribute("uname");
						String bank=(String )application.getAttribute("ubank");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"' and bank='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(7);
								s5=rs.getString(8);
								s6=rs.getString(10);
								
								
								
					%>
            <tr>
              <td width="226" rowspan="6" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" >
                <p><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?picture=<%="userimage"%>&id=<%=i%>" style="width:180px; height:140px;" />
                </a></p>
                </div></td>
            </tr>
            <tr>
              <td valign="middle" height="65" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank Name </strong></div></td>
              <td valign="middle" height="65" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;">
                  <%out.println(s1);%>
              </div></td>
            </tr>
            <tr>
              <td  width="122" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
              <td  width="163" valign="middle" height="51" style="color:#006666;"><div align="left" class="style42 style41 style10" style="margin-left:20px;">
                  <%out.println(s2);%>
              </div></td>
            </tr>
            <tr>
              <td  width="122" valign="middle" height="68" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Mobile</strong></div></td>
              <td  width="163" valign="middle" height="68" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;">
                  <%out.println(s3);%>
              </div></td>
            </tr>
            <tr>
              <td  width="122" align="left" valign="middle" height="69" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Address</strong></div></td>
              <td  width="163" align="left" valign="middle" height="69" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;">
                  <%out.println(s4);%>
              </div></td>
            </tr>
            <tr>
              <td  width="122" align="left" valign="middle" height="81" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Date of Birth</strong></div></td>
              <td  width="163" align="left" valign="middle" height="81" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;">
                  <%out.println(s5);%>
              </div></td>
            </tr>
            
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right">&nbsp;</p>
          <p align="left"><a href="UserMain.jsp" class="style11">Back</a></p>
          
          
         
        </div>
					  </div>
				  <div class="post"></div>
					<div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
				  <ul><li><h2>Menu</h2>
					  <ul>
						  <li><a href="UserMain.jsp">Home</a></li>						  
          				  <li><a href="UserLogin.jsp">Logout </a></li>
					  </ul>
						</li>
					  
					  <li>
						  <h2>&nbsp;</h2>
				    </li>
				  </ul>
			  </div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
