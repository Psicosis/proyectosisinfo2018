<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHistorialMedico.master" AutoEventWireup="true" CodeFile="pagebuscarpornombredoc.aspx.cs" Inherits="pagebuscarpornombredoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<p>
    <table align="center" style="width: 100%; border: 1px solid #cccccc">
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="X-Large" Text="BUSQUEDA DE HISTORIALES"></asp:Label>
            </td>
            <td style="width: 275px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
            <td style="width: 275px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" Text="BUSCAR POR NOMBRE DE DOCTOR"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="lblbusqtitulo" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" Text="BUSCAR POR TITULO"></asp:Label>
            </td>
            <td style="width: 275px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" Text="BUSCAR POR FECHA"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 17px"></td>
            <td style="height: 17px" colspan="3">
            </td>
            <td style="height: 17px; font-family: 'Berlin Sans FB'; font-size: large; width: 275px"><span style="font-weight: normal">Formato de busqueda:<br />
                Ejem: año-mes-dia</span></td>
            <td style="height: 17px"></td>
        </tr>
        <tr>
            <td>
<asp:TextBox ID="txtbuscar" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:TextBox>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" BackColor="#99CCFF" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" />
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtbusqtitulo" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:TextBox>
                <asp:Button ID="btnbusqtitulo" runat="server" BackColor="#99CCFF" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" OnClick="btnbusqtitulo_Click" Text="Buscar" />
            </td>
            <td style="width: 275px">
                <asp:TextBox ID="txtfecha" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:TextBox>
                <asp:Button ID="btnbuscarfecha" runat="server" OnClick="btnbuscarfecha_Click" Text="Buscar" BackColor="#99CCFF" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
            <td style="width: 275px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
            <td style="width: 275px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">
<asp:GridView ID="GridViewBuscar" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" Font-Names="Berlin Sans FB" Font-Size="Large" Width="506px">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
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
            <td style="width: 275px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
            <td style="width: 275px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
            <td style="width: 275px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">
                <asp:Label ID="lblestado" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
            </td>
            <td style="width: 275px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="left: 5cm">
                <img alt="regresar" src="images/regresar.png" style="width: 98px; height: 65px; position: relative; z-index: auto; left: 0px; top: 0px;" /><asp:Button ID="regresar" runat="server" BackColor="#FF9900" Font-Names="Berlin Sans FB" Font-Size="Large" OnClick="Button2_Click" Text="REGRESAR" Font-Bold="True" />
            </td>
            <td style="width: 6px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 275px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>

