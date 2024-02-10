<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Crud_Form_Operation.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1" style="text-align:center">
        
        <tr>
            <td class="auto-style2">Student ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Student Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" Width="165px">
                    <asp:ListItem>Nashik</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Age</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Contact</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button  ID="Button1" runat="server" Height="27px" OnClick="Button1_Click" Text="Insert" />
                <br />
                <br />
            
            </td>
        </tr>
    </table>
                <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

        <div>

            <br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>
