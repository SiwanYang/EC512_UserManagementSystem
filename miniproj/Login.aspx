<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
   
        <h1 style="text-align: center; background-color: #FAEBD7; position: absolute; right: 0px; top: 17px; left: 0px; height: 40px;">Please Login</h1>
    
        <br />
        <br />
    
        <h3 style="text-align:center">User name:</h3><br />
        <asp:TextBox ID="UserName" runat="server" style="position:absolute; left:625px"></asp:TextBox>
        <br />
        <h3 style="text-align:center">Password:</h3><br />
        
        <asp:TextBox ID="Password" runat="server" TextMode="Password" style="position:absolute; left:625px"></asp:TextBox>
        <br />
        <br />
      
        <asp:Button ID="loginButton" runat="server" OnClick="loginButton_Click" Text="Login" style="position:absolute; left:660px" />
        <br />
        <br />
        <asp:Label ID="status" runat="server" style="position:absolute; left:650px"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="UserName" Name="UserName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
