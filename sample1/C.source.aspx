<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="C.source.aspx.cs" EnableEventValidation="false" Inherits="Sample1.Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Category</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>
                  CategoryName:                       
            </td>
            <td>
                <asp:TextBox ID="txtCategoryName" runat="server" OnTextChanged="txtCategoryName_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSave" runat="server" Text="Save" />
            </td>
            <td>
                <asp:Button ID="btnClear" runat="server" Text="Clear" />
            </td>
        </tr>
    </table>
        <asp:GridView ID="grdCaategory" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Sl. no.">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                                    </asp:TemplateField> 
                <asp:TemplateField HeaderText="Categoty Name">
                    <ItemTemplate>
                        <asp:Label ID="lblCategory" runat="server" Text='<%#Eval("Categoryname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="imgDelete" CommandName='<%#Eval("CategoryId")%>' OnClick="imgDelete_OnClick" ImageUrl="~/Images/Delete.png" style="width:50px;height:50px;" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:ImageButton ID="imgEdit" ImageUrl="~/Images/Edit.jpg" style="width:50px;height:50px;" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
