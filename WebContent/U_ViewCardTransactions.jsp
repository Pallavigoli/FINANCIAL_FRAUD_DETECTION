<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Card Transactions </title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
.style4 {
	color: #660000;
	font-size: 24px;
}
.style5 {color: #FF3300;
		font-size: 24px;
		}
.style7 {color: #660000}
.style9 {color:#000000}

.style12 {color: #009999}
.style44 {color:#FF3300;
		font-size: 14px;}
.style45 {color: #2C83B0;
		font-size: 14px;}
.style55{
	color:#CC0033;
	font-size:14px;
	font-weight: bold;
}
.style67{ color:#CC6600;
	font-size:14px;
	font-weight: bold;
}
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
						<h2 class="title"><a href="#">User <span class="style6" style="color:#FF3300"><%=(String)application.getAttribute("uname")%></span>'s Card Transactions..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
          <table width="570" border="1" align="center" cellpadding="0" cellspacing="0"  ">
            <tr>
              
			  <td  width="171" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Credit Card Number </strong></div></td>
              <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Transaction Purpose</strong></div></td>
			  <td  width="250" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Transaction Amount</strong></div></td>
			  <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Transaction Date & Time</strong></div></td>
			  <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Status</strong></div></td>             
			  
            </tr>
            <%
					  String user=(String)application.getAttribute("uname");
					  String bank=(String)application.getAttribute("ubank");

					  String s1,s2,s3,s4,s5,s6,s7="";
						int i=0,j=1;
						try 
						{
						
							String ref="select a_no from creditcard where a_name='"+user+"' and b_name='"+bank+"'"; 
						   	Statement refst=connection.createStatement();
						   	ResultSet refrs=refst.executeQuery(ref);
					   		if ( refrs.next()==true )
					   		{
										s7=refrs.getString(1);
							}					
												
						   	String query="select * from transactions where a_no='"+s7+"' and bank='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								i=rs.getInt(1);
								s1=rs.getString(5);
								s2=rs.getString(9);
								s3=rs.getString(4);
								s4=rs.getString(7);
								s5=rs.getString(8);
								
								
								
								
					%>
            <tr>
			
              <td align="center"  valign="middle"><div align="center" class="style12">		
				<strong><%out.println(s1);%></strong>
			  </div></td>
			  <td height="57" align="center" title="Click to View Details"  valign="middle"><div align="center" class="style45">
			  <%
			  if(s2.equalsIgnoreCase("transfer"))
			  	{
				%>
					
					<p><a href="U_MoneyTransferDetails.jsp?id=<%=i%>&ccno=<%=s1%>" class="style67">Transfer</a></p>
					
				<%
				}
				else
				{%>
					
					<p><a href="U_BookingDetails.jsp?user=<%=user%>&date=<%=s4%>" class="style55">Ticket Booking</a></p>
					
				
					 
					
					  
			   <%}%>
                
              </div></td>
			  <td height="57" align="center"  valign="middle"><div align="center" class="style44">
                <strong><%out.println(s3);%></strong>
              </div></td>
			  <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s4);%>
              </div></td>
              <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <strong><%out.println(s5);%></strong>
              </div></td>
              
            			 
						  
            </tr>
            <%
						j+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p>&nbsp;</p>
          <p align="right"><a href="UserMain.jsp" class="style11"></a></p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="UserMain.jsp" class="style95">Back</a></div></td>
            </tr>
          </table>
		  
		  
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