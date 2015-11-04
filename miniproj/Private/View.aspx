<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>view</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="background-color: #FAEBD7; position: absolute; right: 0px; top: 17px; left: 0px; height: 30px; text-align: center">View all Profiles</h1>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Table ID="Table1" runat="server" style="position:absolute; left:467px; top: 94px; width: 114px;"></asp:Table>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Profile]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Return To Main Page" OnClick="Button1_Click" style="position:absolute; left:600px; top: 300px;" />
        <br />
        <br />
    </form>
</body>
</html>
