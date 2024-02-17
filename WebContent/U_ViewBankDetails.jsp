<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Bank Details Page</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
.style4 {color: #660000}
.style5 {color:#2C83B0}
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
						<h2 class="title"><a href="#"><span class="style5"> <%=request.getParameter("bname")%></span> Details..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
          <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
           
            <%
			
						
						
						String bank=request.getParameter("bname");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from bank where b_name='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								
								
								
					%>
            <tr>
              <td width="186" rowspan="7" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" >
                <p><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?picture=<%="bankimage"%>&id=<%=i%>" style="width:160px; height:120px;" />
                </a></p>
              </div></td>
            </tr>
            <tr>
              <td valign="middle" height="47" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank Name </strong></div></td>
              <td valign="middle" height="47" style="color:#2c83b0;"><div align="left" class="style42 style41 style10" style="margin-left:20px;">
                  <strong><%out.println(s1);%></strong>
              </div></td>
            </tr>
			<td  width="165" align="left" valign="middle" height="49" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank Address</strong></div></td>
              <td  width="141" align="left" valign="middle" height="49" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;">
                  <%out.println(s2);%>
              </div></td>
            </tr>
			<tr>
              <td valign="middle" height="49" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank location </strong></div></td>
              <td valign="middle" height="49" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;">
                  <%out.println(s3);%>
              </div></td>
            </tr>
			<tr>
              <td valign="middle" height="46" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank Pincode </strong></div></td>
              <td valign="middle" height="46" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;">
                  <%out.println(s4);%>
              </div></td>
            </tr>
			<tr>
              <td valign="middle" height="49" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank Contact No </strong></div></td>
              <td valign="middle" height="49" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;">
                  <%out.println(s5);%>
              	</div></td>
            </tr>
            <tr>
              <td  width="165" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank E-Mail Id</strong></div></td>
              <td  width="141" valign="middle" height="45" style="color:#FF0066;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s6);%>
              </strong></div></td>
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
          <p align="left"><a href="U_MyAccountDetails.jsp" class="style11">Back</a></p>
						
						
							
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
           				 <li><a href="UserMain.jsp">Logout </a></li>
						  
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
