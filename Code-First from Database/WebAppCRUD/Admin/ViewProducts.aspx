<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="WebAppCRUD.Admin.ViewProducts" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="my" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>View Products</h1>
    <asp:ListView ID="ProductListView" runat="server" DataSourceID="ProductsDataSource" DataKeyNames="ProductID" ItemType="WestWindSystem.Entities.Product">
        <LayoutTemplate>
            <table class="table table-hover table-condensed">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Product Name</th>
                        <th>SupplierID</th>
                        <th>CategoryID</th>
                        <th>QuantityPerUnit</th>
                        <th>Minimum Order Quantity</th>
                        <th>UnitPrice</th>
                        <th>Discontinued</th>
                    </tr>
                </thead>
                <tbody>
                    <tr runat="server" id="itemPlaceholder"></tr>
                </tbody>
            </table><%--// Table end--%>
        
        </LayoutTemplate>

        <%--//Item Template--%>

        <ItemTemplate>

        <tr>
           <%-- <td>
                <%-- Here will be the link that will add delete update the Product Information --%>
            <%--</td>--%>
            <td><%#  Item.ProductID %></td>
            <td><%#  Item.ProductName %></td>
            <td>
                <asp:DropDownList ID="SuppliersDropDown" runat="server" AppendDataBoundItems="true" DataSourceID="SuppliersDataSource" DataTextField="CompanyName" DataValueField="SupplierID"
                    SelectedValue="<%# Item.SupplierID %>"></asp:DropDownList></td>
            <td>
                <asp:DropDownList ID="CategoriesDropDown" runat="server" AppendDataBoundItems="true" SelectedValue="<%# Item.CategoryID %>" DataSourceID="CategoriesDataSource" DataTextField="CategoryName" DataValueField="CategoryID"> 

                </asp:DropDownList>

            </td>
            <td><%#  Item.QuantityPerUnit %></td>
            <td><%#  Item.MinimumOrderQuantity %></td>
            <td><%#  Item.UnitPrice %></td>
            <td><asp:CheckBox ID="Discontinued" runat="server" SelectedValue="<%# Item.Discontinued %>" enabled="false"></asp:CheckBox></td>
        </tr>
        </ItemTemplate>
        


    

    </asp:ListView>

    <asp:ObjectDataSource ID="ProductsDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListProducts" TypeName="WestWindSystem.BLL.CRUDController"></asp:ObjectDataSource>
<asp:ObjectDataSource ID="CategoriesDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListCategories" TypeName="WestWindSystem.BLL.CRUDController"></asp:ObjectDataSource>
<asp:ObjectDataSource ID="SuppliersDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListSuppliers" TypeName="WestWindSystem.BLL.CRUDController"></asp:ObjectDataSource>


</asp:Content>
