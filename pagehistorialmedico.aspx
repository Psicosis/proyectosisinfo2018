<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHistorialMedico.master" AutoEventWireup="true" CodeFile="pagehistorialmedico.aspx.cs" Inherits="pagehistorialmedico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 752px; border: 4px solid #000000; height: 409px;" align="center">
        <tr>
            <td style="width: 352px; height: 54px;">
                <br />
                <%--<asp:TextBox ID="txtbuscar" runat="server"></asp:TextBox>--%>
                <br />
                <%--                <asp:TextBox ID="txtbuscar" runat="server" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>--%>
                <%--<asp:Button ID="btnbuscar" runat="server" OnClick="btnbuscar_Click" Text="Buscar" />--%>
            </td>
            <td colspan="2" style="height: 54px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnnuevo" runat="server" OnClick="btnnuevo_Click" Text="Nuevo" Font-Bold="True" Font-Size="XX-Large" BackColor="#0099FF" Font-Names="Forte" />
                <%--<asp:Button ID="btnmodificar" runat="server" OnClick="btnmodificar_Click" Text="Modificar" />--%>
                <%--<asp:Button ID="btneliminar" runat="server" OnClick="btneliminar_Click" Text="Eliminar" />--%>
                <asp:Button ID="btncancelar" runat="server" Text="Cancelar" OnClick="btncancelar_Click" Font-Bold="True" Font-Size="XX-Large" BackColor="#0099FF" Font-Names="Forte" />
            </td>
        </tr>
        <tr>
            <td rowspan="8" style="width: 352px; height: 383px;">
                <img alt="informe" src="images/informemedico.jpg" style="width: 352px; height: 307px" /></td>
            <td colspan="2" style="height: 54px">
                <h1 style="width: 317px">
                    <asp:Label ID="lblestado" runat="server"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <%--<td style="height: 34px; width: 125px">Id</td>
            <td style="height: 34px; width: 268435136px">
                <asp:TextBox ID="txtid" runat="server" Enabled="False" Width="148px"></asp:TextBox>
            </td>--%>
        </tr>
        <tr>
            <td style="font-size: xx-large; font-family: forte; " class="text-center"><strong style="text-decoration: blink">Nombre de Usuario</strong></td>
            <td style="font-family: 'Book Antiqua';" class="text-left">
                <asp:DropDownList ID="drpnombreusuario" runat="server" DataSourceID="SqlDataSourceNombreUsuario" DataTextField="nombre" DataValueField="ci">
                    <asp:ListItem Value="0">Ninguno</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceNombreUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:HistorialesConnectionString %>" SelectCommand="SELECT [ci], [nombre] FROM [tbl_usuario]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="font-size: xx-large; font-family: forte; " class="text-center"><strong>Nombre de informe</strong></td>
            <td style="height: 54px; font-family: 'Book Antiqua';" class="text-left">
                <asp:TextBox ID="txtnombreinforme" runat="server" Enabled="False" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: xx-large; font-family: forte; " class="text-center"><strong>Doctor</strong></td>
            <td style="font-family: 'Book Antiqua';" class="text-left">
                <asp:TextBox ID="txtdoctor" runat="server" Enabled="False" Width="152px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: xx-large; font-family: forte; " class="text-center"><strong>Descripcion</strong></td>
            <td style="font-family: 'Book Antiqua';" class="text-left">
                <asp:TextBox ID="txtdescripcion" runat="server" Enabled="False" Height="43px" Width="156px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: xx-large; font-family: forte; " class="text-center">Fecha</td>
            <td style="font-family: 'Book Antiqua';" class="text-left">
                <asp:TextBox ID="txtfecha" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/images/calendario.png" OnClick="ImageButton1_Click" Width="60px" />
                <br />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td style="font-size: xx-large; font-family: forte;" class="text-center">
                <strong>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/pagehistoriales.aspx" Font-Bold="True" Font-Size="XX-Large">Regresar</asp:HyperLink>
                </strong>
            </td>
            <td style="height: 54px; width: 199px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

