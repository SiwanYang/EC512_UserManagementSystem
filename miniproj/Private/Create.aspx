<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create.aspx.cs" Inherits="create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="background-color: #FAEBD7; position: absolute; right: 0px; top: 17px; left: 0px; height: 30px; text-align: center">Creat Your Profile</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        *Name:<asp:TextBox ID="name" runat="server" style="margin-left: 35px" Width="128px"></asp:TextBox>
    
        &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        *Age:&nbsp;&nbsp;
        <asp:TextBox ID="age" runat="server" style="margin-left: 35px" Width="128px"></asp:TextBox>
    
        &nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        *Gender:<asp:RadioButtonList ID="genderRadioButtonList" runat="server" style="margin-left: 155px">
        </asp:RadioButtonList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *Telephone:&nbsp;
        <asp:TextBox ID="telephone" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="address" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="email" runat="server" style="margin-left: 0px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="submmit" runat="server" Text="Submmit" OnClick="Button1_Click" />
    
        &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO Profile(Name, Age, Gender, Telephone, Address, Email, UserName) VALUES (@name,@age,@gender,@telephone,@address,@email,@username)" SelectCommand="SELECT * FROM [Profile] WHERE ([UserName] = @UserName)" DeleteCommand="DELETE FROM Profile WHERE (UserName=@username)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="HiddenField1" Name="username" PropertyName="Value" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="name" Name="name" PropertyName="Text" />
                <asp:ControlParameter ControlID="age" Name="age" PropertyName="Text" />
                <asp:ControlParameter ControlID="HiddenField1" Name="gender" PropertyName="Value" />
                <asp:ControlParameter ControlID="telephone" Name="telephone" PropertyName="Text" />
                <asp:ControlParameter ControlID="address" Name="address" PropertyName="Text" />
                <asp:ControlParameter ControlID="email" Name="email" PropertyName="Text" />
                <asp:ControlParameter ControlID="HiddenField2" Name="username" PropertyName="Value" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="HiddenField2" Name="UserName" PropertyName="Value" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:HiddenField ID="HiddenField2" runat="server" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="return" runat="server" Text="Return to main page" OnClick="return_Click" />
    </form>
</body>
</html>
