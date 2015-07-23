<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Home</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 98px;
        }
        .style3
        {
            width: 620px;
        }
        .style4
        {
            width: 98px;
            height: 26px;
        }
        .style5
        {
            width: 620px;
            height: 26px;
        }
        .style6
        {
            width: 149px;
        }
    </style>
</head>
<body style="background-color:lightgrey">


    <form id="form1" runat="server">
    <div style="border: medium inset #FFFFFF; background-color: #FFFFFF; color: #000000;">
    
   <div>
			<ul>
				<a href="Home.aspx" accesskey="3" title="About Us">Home</a> |
				<a href="default.aspx" accesskey="6" title="Contact Us">Logout</a>
				
			</ul>
				 
			  
		</div>
  
    </div>
      
    <div>
    
    <div id="left" style="border-style: dotted; border-width: 2px; width: 199px;">
    
    <h2>Hello | <asp:Label ID="desLabel" Text="" runat=server /> </h2>
    
    

    
    
    <h1> 
    <asp:Label ID="userLabel" Text="" runat=server> </asp:Label>
    
    </h1>
    </div>
    
    </div>
    <h1> Add Prescription Here </h1> 
    <table align="right" class="style1">
        <tr>
            <td class="style4">
                Prescription ID</td>
            <td class="style5">
                <asp:TextBox ID="pr_id" runat="server" Width="178px" placeholder="Prescription ID"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Patient ID</td>
            <td class="style3">
                <asp:TextBox ID="pa_id" runat="server" Width="178px" placeholder="Patient ID"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Patient Name
            </td>
            <td class="style3">
                <asp:TextBox ID="pa_name" runat="server" Width="178px" placeholder="Patient Name"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Medicine Name</td>
            <td class="style3">
                <asp:TextBox ID="med_name" runat="server" Width="178px" placeholder="Medicine Name"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Quantity</td>
            <td class="style3">
                <asp:TextBox ID="quantity" runat="server" Width="178px" placeholder="Quantity"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="prSendBt" runat="server" Text="Send Prescription" Width="141px" 
                    OnClick="sendPrescriptionMethod" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <asp:Label ID="acknowLabel" runat=server ForeColor="#00CC00"></asp:Label>
    
     <br />
      <br />
    <br />
      <br />
       <br />
      <br />
       <table class="style1">
           <tr>
               <td class="style6">
                   <h1> Select Disease </h1></td>
                <td>
                                       
                    
                    
                    &nbsp;</td>
            </tr>
           <tr>
               <td class="style6">
                   <asp:DropDownList ID="ddluser" runat="server" AutoPostBack="True" 
                       onselectedindexchanged="ddluser_SelectedIndexChanged">
                   </asp:DropDownList>
                   <br />
                   
               </td>
                <td>
                                       
                    
                    
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                        ForeColor="Black" GridLines="Vertical">
                        <FooterStyle BackColor="#CCCCCC" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                                       
                    
                    
                </td>
            </tr>
           <tr>
               <td class="style6">
                   &nbsp;</td>
                <td>
                                       
                    
                    
                    &nbsp;</td>
            </tr>
        </table>
    
       
       <br />
       
       
       
      
    </form>
   
    <br />
    
 
    
    
        
</body>
</html>
