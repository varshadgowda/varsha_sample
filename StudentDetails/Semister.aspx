<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Semister.aspx.cs" Inherits="Practises.Semister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Semister</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>
                SemisterName:
            </td>
            <td>
                <asp:TextBox ID="txtSemisterName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#003300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </td>
            <td>
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </td>
        </tr>
        <tr>
            <td>
               <a href="WebForm1.aspx">Webform1</a>           
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
