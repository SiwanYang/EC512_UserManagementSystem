<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">    
        <h1 style="text-align: center; background-color: #FAEBD7; position: absolute; right: 0px; top: 17px; left: 0px; height: 50px;">Register Here</h1>
    
       
        <h3 style="text-align:center">&nbsp;</h3>
        <h3 style="text-align:center">&nbsp;</h3>
        <h3 style="text-align:center">User name:</h3>
            <asp:TextBox ID="UserName" runat="server" Width="146px" style="position:absolute; left:625px"></asp:TextBox>
           <h3 style="text-align:center">&nbsp;</h3>
        <h3 style="text-align:center">Password:</h3>         
          <asp:TextBox ID="Password" runat="server" TextMode="Password" style="position:absolute; left:625px" Width="146px"></asp:TextBox>
            <br />
            <h3 style="text-align:center">Re-enter Password:</h3>
            <asp:TextBox ID="RPassword" runat="server" TextMode="Password" style="position:absolute; left:625px" Width="146px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="RegisterButton" runat="server" OnClick="RegisterButton_Click" Text="Register" style="position:absolute; left:660px; top: 342px;" />
            <br />
            <br />
            <asp:Label ID="status" runat="server" style="position:absolute; left:700px"></asp:Label>
            <br />
            <br />
            <asp:HiddenField ID="hashpass" runat="server" />
            <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([UserName] = @UserName)" InsertCommand="INSERT INTO Users(UserName, Password) VALUES ( @user , @pass)">
            <SelectParameters>
                <asp:ControlParameter ControlID="UserName" Name="UserName" PropertyName="Text" Type="String" />
            </SelectParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="UserName" Name="user" PropertyName="Text" />
                <asp:ControlParameter ControlID="hashpass" Name="pass" PropertyName="Value" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
