<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <style type="text/css">
        a:link {
            color: #000000;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div backgroundcolor: #E6E6FA; style="width: 700px; border-style: solid; border-width: thin; position: relative; top: -15px; left: -106px; height: 502px; margin-left: auto; margin-right: auto; margin-top: auto;">
    
        <div style="background-color: #FAEBD7; position: absolute; right: 0px; top: 17px; left: 0px; height: 30px;">
            <asp:Panel ID="Panel1" runat="server" style="position: absolute; width: 150px; left: 550px; height: 25px; text-align: center; padding-top: 5px;">
            <a href="Login.aspx">Login</a>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <a href="Register.aspx">Register</a>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" style="position: absolute; width: 300px; left: 400px; height: 25px; text-align: right; padding-top: 5px; top: 0px;">
                Hello
                <asp:Label ID="hello" runat="server" Text="user"></asp:Label>
                &nbsp; &nbsp;
                <asp:LinkButton ID="logout" runat="server" OnClick="logout_Click">Logout</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;
            </asp:Panel>
        </div>
       <div style="position: absolute; top: 30px; padding: 30px; width: 635px; left: 0px; height: 454px;">
        <h1 style="text-align: center">Main Page</h1>
           <p style="text-align: center">&nbsp;</p>

           <asp:Panel ID="Panel3" runat="server" style="position:absolute; left:270px; top: 90px; height: 411px; width: 299px;">
           <p><asp:Button ID="Button1" runat="server" Text="Create your profile" OnClick="Button1_Click" /></p>
           <p style="width: 204px"><asp:Button ID="Button2" runat="server" Text="Delete your profile" OnClick="Button2_Click" />&nbsp;
               <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
               </p>
           <p><asp:Button ID="Button3" runat="server" Text="Edit your profile" OnClick="Button3_Click" /></p>
           <p><asp:Button ID="Button4" runat="server" Text="View all profiles" OnClick="Button4_Click" /></p> 
               <p>
                   <asp:Button ID="Button5" runat="server" Text="Delete your account" OnClick="Button5_Click" />
               </p>
               <p>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Profile WHERE (UserName=@username)" SelectCommand="SELECT * FROM [Profile] WHERE ([UserName] = @UserName)">
                       <DeleteParameters>
                           <asp:ControlParameter ControlID="HiddenField1" Name="username" PropertyName="Value" />
                       </DeleteParameters>
                       <SelectParameters>
                           <asp:ControlParameter ControlID="HiddenField1" Name="UserName" PropertyName="Value" />
                       </SelectParameters>
                   </asp:SqlDataSource>
               </p>
               <p>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Users WHERE (UserName=@username)" SelectCommand="SELECT * FROM [Users]">
                       <DeleteParameters>
                           <asp:ControlParameter ControlID="HiddenField1" Name="username" PropertyName="Value" />
                       </DeleteParameters>
                   </asp:SqlDataSource>
               </p>
               <p>
                   <asp:HiddenField ID="HiddenField1" runat="server" />
                   <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
               </p>
           </asp:Panel>
           <br />
 </div>
    </div>
    </form>
</body>
</html>
