<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHistorialMedico.master" AutoEventWireup="true" CodeFile="pagehistoriales.aspx.cs" Inherits="pagehistoriales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; border: 1px solid #cccccc">
    <tr>
        <td>&nbsp;</td>
        <td rowspan="3" class="text-center">
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DBHistMedicEntities" DefaultContainerName="DBHistMedicEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="tbl_historialmedico">
            </asp:EntityDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="EntityDataSource1" ForeColor="Black" Width="995px" AllowSorting="True" Font-Bold="False" Font-Size="Large" Font-Strikeout="False" HorizontalAlign="Center" Font-Names="Berlin Sans FB">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                    <%--<asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />--%>
                    <asp:BoundField DataField="id_usuario" HeaderText="Nombre de Usuario" SortExpression="id_usuario" ConvertEmptyStringToNull="False" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre de Informe" SortExpression="nombre" ConvertEmptyStringToNull="False" />
                    <asp:BoundField DataField="doctor" HeaderText="Doctor" SortExpression="doctor" ConvertEmptyStringToNull="False" />
                    <asp:BoundField DataField="descripcion" HeaderText="Descripcion" SortExpression="descripcion" ConvertEmptyStringToNull="False" />
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" ApplyFormatInEditMode="True" ConvertEmptyStringToNull="False" DataFormatString="{0:d}" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

