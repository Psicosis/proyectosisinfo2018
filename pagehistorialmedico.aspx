<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHistorialMedico.master" AutoEventWireup="true" CodeFile="pagehistorialmedico.aspx.cs" Inherits="pagehistorialmedico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 752px; border: 4px solid #000000; height: 409px;" align="center">
        <tr>
            <td style="width: 352px; height: 14px;">
                <br />
                <%--<asp:DropDownList ID="drpnombreusuario" runat="server" DataSourceID="SqlDataSourceNombreUsuario" DataTextField="nombre" DataValueField="ci" OnSelectedIndexChanged="drpnombreusuario_SelectedIndexChanged">
                    <asp:ListItem Value="0">Ninguno</asp:ListItem>
                </asp:DropDownList>--%>
                <img alt="regresar8" src="images/regresar.png" style="width: 57px; height: 50px" /><asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="REGRESAR" BackColor="#FF9900" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" />
                <br />
                <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/pagehistoriales.aspx"  Font-Bold="True" Font-Size="XX-Large">Regresar</asp:HyperLink>--%>                <%--<asp:Button ID="btneliminar" runat="server" OnClick="btneliminar_Click" Text="Eliminar" />--%>
            </td>
            <td colspan="4" style="height: 14px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnnuevo" runat="server" OnClick="btnnuevo_Click" Text="Nuevo" Font-Bold="True" Font-Size="Large" BackColor="#99CCFF" Font-Names="Berlin Sans FB" />
                <%--<td style="height: 34px; width: 125px">Id</td>
            <td style="height: 34px; width: 268435136px">
                <asp:TextBox ID="txtid" runat="server" Enabled="False" Width="148px"></asp:TextBox>
            </td>--%>                <%--<asp:DropDownList ID="drpnombreusuario" runat="server" DataSourceID="SqlDataSourceNombreUsuario" DataTextField="nombre" DataValueField="ci" OnSelectedIndexChanged="drpnombreusuario_SelectedIndexChanged">
                    <asp:ListItem Value="0">Ninguno</asp:ListItem>
                </asp:DropDownList>--%>
                <asp:Button ID="btncancelar" runat="server" Text="Nuevo" OnClick="btncancelar_Click" Font-Bold="True" Font-Size="Large" BackColor="#99CCFF" Font-Names="Berlin Sans FB" />
            </td>
            <td style="height: 14px">
                </td>
            <td style="height: 14px; width: 265px;">
                </td>
        </tr>
        <tr>
            <td rowspan="13" style="width: 352px; height: 383px;">
                <img alt="informe" src="images/informemedico.jpg" style="width: 306px; height: 267px" /><asp:Label ID="lbltamanio" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lblnuevotamaño" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lblerror" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td colspan="4" style="height: 54px">
                <h1 style="width: 317px">
                    <asp:Label ID="lblestado" runat="server"></asp:Label>
                </h1>
            </td>
            <td style="height: 54px">
                &nbsp;</td>
            <td style="height: 54px; width: 265px;">
                &nbsp;</td>
        </tr>
        <tr>
            <%--<td style="height: 34px; width: 125px">Id</td>
            <td style="height: 34px; width: 268435136px">
                <asp:TextBox ID="txtid" runat="server" Enabled="False" Width="148px"></asp:TextBox>
            </td>--%>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Bernard MT Condensed'; width: 285px;" class="text-center">
                <asp:Label ID="lblusuario" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium" Text="USUARIO"></asp:Label>
            </td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                <%--<asp:DropDownList ID="drpnombreusuario" runat="server" DataSourceID="SqlDataSourceNombreUsuario" DataTextField="nombre" DataValueField="ci" OnSelectedIndexChanged="drpnombreusuario_SelectedIndexChanged">
                    <asp:ListItem Value="0">Ninguno</asp:ListItem>
                </asp:DropDownList>--%>
                <asp:Label ID="lblnombreusuario" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
            </td>
            <td style="font-family: 'Book Antiqua';" class="text-left">
                <asp:SqlDataSource ID="SqlDataSourceNombreUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:HistorialesConnectionString %>" SelectCommand="SELECT [ci], [nombre] FROM [tbl_usuario]"></asp:SqlDataSource>
            </td>
            <td style="font-family: 'Book Antiqua'; width: 265px;" class="text-left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Bernard MT Condensed'; width: 285px;" class="text-center">
                <asp:Label ID="lbltitulo" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium" Text="TITULO"></asp:Label>
            </td>
            <td style="height: 54px; font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="height: 54px; font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="height: 54px; font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                <asp:TextBox ID="txtnombreinforme" runat="server" Enabled="False" Width="150px"></asp:TextBox>
                <asp:Label ID="lblestadotitulo" runat="server" ForeColor="#FF3300" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 54px; font-family: 'Book Antiqua';" class="text-left">
                &nbsp;</td>
            <td style="height: 54px; font-family: 'Book Antiqua'; width: 265px;" class="text-left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Bernard MT Condensed'; width: 285px;" class="text-center">
                <asp:Label ID="lbldoctor" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium" Text="DOCTOR"></asp:Label>
            </td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                <asp:TextBox ID="txtdoctor" runat="server" Enabled="False" Width="152px"></asp:TextBox>
                <asp:Label ID="lblestadodoctor" runat="server" ForeColor="Red" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:Label>
            </td>
            <td style="font-family: 'Book Antiqua';" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 265px;" class="text-left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Bernard MT Condensed'; width: 285px;" class="text-center">&nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua';" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 265px;" class="text-left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Bernard MT Condensed'; width: 285px;" class="text-center">
                <asp:Label ID="lbldescripcion" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium" Text="DESCRIPCION"></asp:Label>
            </td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                <asp:TextBox ID="txtdescripcion" runat="server" Enabled="False" Height="43px" Width="156px"></asp:TextBox>
                <asp:Label ID="lblestadodescripcion" runat="server" Text="Label" Enabled="False" Visible="False"></asp:Label>
            </td>
            <td style="font-family: 'Book Antiqua';" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 265px;" class="text-left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Bernard MT Condensed'; width: 285px;" class="text-center">&nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua';" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; width: 265px;" class="text-left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Bernard MT Condensed'; font-weight: bold; height: 24px; width: 285px;" class="text-center">
                <asp:Label ID="lbltipo" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium" Text="TIPO"></asp:Label>
            </td>
            <td style="font-family: 'Book Antiqua'; height: 24px; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; height: 24px; width: 286px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; height: 24px; width: 286px;" class="text-left">
                <asp:DropDownList ID="drbtipo" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="1">Consulta</asp:ListItem>
                    <asp:ListItem Value="2">Analisis</asp:ListItem>
                    <asp:ListItem Value="3">Mis notas</asp:ListItem>
                    <asp:ListItem Value="4">Recordatorios</asp:ListItem>
                    <asp:ListItem Value="5">Radiografias</asp:ListItem>
                    <asp:ListItem Value="6">Recetas Medicas</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label4" runat="server" Text="Label" Enabled="False" Visible="False"></asp:Label>
                <br />
            </td>
            <td style="font-family: 'Book Antiqua'; height: 24px;" class="text-left">
                &nbsp;</td>
            <td style="font-family: 'Book Antiqua'; height: 24px; width: 265px;" class="text-left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Bernard MT Condensed'; width: 285px;" class="text-center">
                <asp:Label ID="lblfecha" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium" Text="FECHA"></asp:Label>
            </td>
            <td style="height: 54px; width: 286px">
                &nbsp;</td>
            <td style="height: 54px; width: 286px">
                &nbsp;</td>
            <td style="height: 54px; width: 286px">
                <asp:TextBox ID="txtfecha" runat="server" Font-Names="Berlin Sans FB"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="51px" ImageUrl="~/images/calendario.png" OnClick="ImageButton1_Click" Width="66px" />
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
                <asp:Label ID="lblestadofecha" runat="server" ForeColor="Red" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 54px; width: 199px">
                &nbsp;</td>
            <td style="height: 54px; width: 265px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Bernard MT Condensed'; width: 285px;" class="text-center">
                &nbsp;</td>
            <td style="height: 54px; width: 286px">
                &nbsp;</td>
            <td style="height: 54px; width: 286px">
                &nbsp;</td>
            <td style="height: 54px; width: 286px">
                <asp:Label ID="lblformatofecha" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Text="dia-mes-año"></asp:Label>
            </td>
            <td style="height: 54px; width: 199px">
                &nbsp;</td>
            <td style="height: 54px; width: 265px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Bernard MT Condensed'; width: 285px;" class="text-center">
                <asp:Label ID="lbladjuntar" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium" Text="ADJUNTAR IMAGEN"></asp:Label>
            </td>
            <td style="height: 54px; width: 286px">
                &nbsp;</td>
            <td style="height: 54px; width: 286px">
                &nbsp;</td>
            <td style="height: 54px; width: 286px">
                <asp:FileUpload ID="fuploadimagen" accept=".jpg" runat="server" Font-Names="Berlin Sans FB" Font-Size="Small" />
                <asp:Label ID="lblformatoimagen" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="Large" Text="Solo Formato .JPG"></asp:Label>
            </td>
            <td style="height: 54px; width: 199px">
                <asp:Image ID="imgpreview" Width="100" ImageUrl="http://icons.iconarchive.com/icons/mayosoft/aero-vista/128/Imagen-JPG-icon.png" runat="server" />
            </td>
            <td style="height: 54px; width: 265px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; font-family: 'Bernard MT Condensed'; width: 285px;" class="text-center">
                &nbsp;</td>
            <td style="height: 54px; width: 286px">
                &nbsp;</td>
            <td style="height: 54px; width: 286px">
                &nbsp;</td>
            <td style="height: 54px; width: 286px">
                <img alt="regresar7" src="images/regresar.png" style="width: 57px; height: 50px" /><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGRESAR" BackColor="#FF9900" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" />
            </td>
            <td style="height: 54px; width: 199px">
                &nbsp;</td>
            <td style="height: 54px; width: 265px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

