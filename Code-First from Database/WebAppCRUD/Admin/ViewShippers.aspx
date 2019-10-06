<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewShippers.aspx.cs" Inherits="WebAppCRUD.Admin.ViewShippers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListView ID="ShippersListView" runat="server" DataKeyNames="ShipperID" DataSourceID="ShippersDataSource" InsertItemPosition="LastItem">
     
        <EditItemTemplate>
            <tr style="background-color: #FFCC66; color: #000080;">
                <td>
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("ShipperID") %>' runat="server" ID="ShipperIDTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("CompanyName") %>' runat="server" ID="CompanyNameTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" /></td>
               
            </tr>
        </EditItemTemplate>
      
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("ShipperID") %>' runat="server" ID="ShipperIDTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("CompanyName") %>' runat="server" ID="CompanyNameTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" /></td>
              
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #FFFBD6; color: #333333;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("ShipperID") %>' runat="server" ID="ShipperIDLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("CompanyName") %>' runat="server" ID="CompanyNameLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Phone") %>' runat="server" ID="PhoneLabel" /></td>
               
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                            <tr runat="server" style="background-color: #FFFBD6; color: #333333;">
                                <th runat="server"></th>
                                <th runat="server">ShipperID</th>
                                <th runat="server">CompanyName</th>
                                <th runat="server">Phone</th>
                                
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                        <asp:DataPager runat="server" ID="DataPager1">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
       
    </asp:ListView>

    <asp:ObjectDataSource ID="ShippersDataSource" runat="server" DataObjectTypeName="WestWindSystem.Entities.Shipper" DeleteMethod="DeleteSupplier" InsertMethod="AddShipper" OldValuesParameterFormatString="original_{0}" SelectMethod="ListShippers" TypeName="WestWindSystem.BLL.ShippersController" UpdateMethod="UpdateShipper"></asp:ObjectDataSource>

</asp:Content>
