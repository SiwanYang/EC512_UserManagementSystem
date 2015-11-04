<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Private_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="text-align: center">Admin Page</h1>
        <p style="text-align: center">
            &nbsp;</p>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Id, UserName, Password, Role FROM Users WHERE (UserName = @user )">
            <SelectParameters>
                <asp:ControlParameter ControlID="hiddenUserName" Name="user" PropertyName="Value" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="hiddenUserName" runat="server" />
    </form>
</body>
</html>
