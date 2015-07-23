<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Log in</title>



</head>
<body style="background-color:lightgrey">



<h1>E-Prescription System Login</h1>

    <form id="form1" runat="server">
    <div style="border: medium inset #FFFFFF; background-color: #FFFFFF; color: #000000;">
    
   <div>
			<ul>
				<a href="Default.aspx" accesskey="3" title="About Us">Login</a> |
				<a href="Registration.aspx" accesskey="4" title="Careers">New User Register Here</a>
				
				
			</ul>
		</div>
  
    </div>
    
    

		<div>
	
		
	<br />
    <br />
    <br />
    <br />
    <br />
    
	<h2 style="width: 84px; margin-left: 291px; margin-right: 265px">Login</h2>
        
   		
		<div class="login">
				<br />
				<asp:TextBox ID="TextBox1" runat="server" 
                    style="margin-left: 280px; margin-top: 7px" Width="125px" placeholder="Username"></asp:TextBox>
                    <br />
                <asp:TextBox ID="TextBox2" runat="server" 
                    style="margin-left: 280px; margin-top: 7px" Width="125px" 
                    TextMode="Password" placeholder="Password"></asp:TextBox>
                <br />
				
				<asp:Button ID="Button1" runat="server" OnClick="submitEventMethod"
                    style="margin-left: 279px; margin-top: 13px; margin-bottom: 0px" Text="Login" />
&nbsp;</input> </input>
		        <asp:Button ID="Button2" runat="server" OnClick="registerEventMethod" Text="Register" Width="99px" />
		</div>
		<!--	<img src="images/pic02.jpg" width="282" height="150" alt="" />-->
			
		
		
		
		
		</div>
		

           <div class="column2">
			<div class="title">
				<h2>second</h2>
			</div>
			<p>Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; </p>
		</div>
		<div class="column3">
			<div class="title">
				<h2>third</h2>
			</div>
			<p><span class="style1">Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here </span></p>
		</div>
		<div class="column4">
			<div class="title">
				<h2>forth</h2>
			</div>
			<p>Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; 
                Text Here&nbsp; Text Here&nbsp; Text Here&nbsp; Text Here </p>
		</div>
	
				
			
			
			
			
		

   </form>
    
    

    
    
</body>
</html>

