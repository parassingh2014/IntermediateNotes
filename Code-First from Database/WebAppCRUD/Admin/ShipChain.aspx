<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShipChain.aspx.cs" Inherits="WebAppCRUD.Admin.ShipChain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Repeater ID="ShipChainRepeater" runat="server" DataSourceID="ShipChainDataSource" ItemType="WestWindSystem.ReadModels.ShipperSummary">

        <ItemTemplate>
            <div>
                <%# Item.Company %>

                <asp:Repeater ID="ShipmentRepeater" runat="server" DataSource="<%# Item.Shipments %>" ItemType="WestWindSystem.ReadModels.ShipperShipment">
                    <ItemTemplate>
                        <blockquote>
                            <%# Item.Date %>
                            <%# Item.Via %>
                            <%# Item.Charge %>
                        </blockquote>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:ObjectDataSource ID="ShipChainDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListShippers" TypeName="WestWindSystem.BLL.ShipChainManagement"></asp:ObjectDataSource>
</asp:Content>
