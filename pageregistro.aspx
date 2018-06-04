<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="pageregistro.aspx.cs" Inherits="pageregistro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 752px; border: 1px solid #cccccc; height: 409px;" align="center">
        <tr>
            <td style="width: 250px; height: 35px;">
                <%--<asp:TextBox ID="txtbuscar" runat="server" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>
                <asp:Button ID="btnbuscar" runat="server" OnClick="btnbuscar_Click" Text="Buscar" />--%>
            </td>
            <td colspan="2" style="height: 35px">
                <asp:Button ID="btnnuevo" runat="server" OnClick="btnnuevo_Click" Text="Nuevo" Font-Names="Berlin Sans FB Demi" Font-Size="Large" BackColor="#A6B639" Font-Bold="True" ForeColor="White" Height="40px" />
                <%--<asp:Button ID="btnmodificar" runat="server" OnClick="btnmodificar_Click" Text="Modificar" />
                <asp:Button ID="btneliminar" runat="server" OnClick="btneliminar_Click" Text="Eliminar" />--%>
                <asp:Button ID="btncancelar" runat="server" Text="Nuevo Usuario" OnClick="btncancelar_Click" Font-Names="Berlin Sans FB Demi" Font-Size="Large" BackColor="#A6B639" Font-Bold="True" ForeColor="White" Height="38px" />
            </td>
            <td style="height: 35px">
                &nbsp;</td>
        </tr>
        <tr>
            <td rowspan="11" style="width: 250px; height: 365px;">
                <img alt="fotousuario" src="images/fotousuario.png" style="width: 315px; height: 314px" /></td>
            <td colspan="2" style="font-family: 'Berlin Sans FB Demi'; font-size: large;">
                <h1 style="width: 317px">
                    <asp:Label ID="lblestado" runat="server" ForeColor="#FF3300" Font-Bold="True"></asp:Label>
                </h1>
                
            </td>
            <td style="font-family: 'Berlin Sans FB Demi'; font-size: large;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Berlin Sans FB Demi'; font-size: large;">Ci</td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                <asp:TextBox ID="txtci" runat="server"></asp:TextBox>
                <asp:Label ID="lblestadoci" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Berlin Sans FB Demi'; font-size: large;">Nombre</td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
                <asp:Label ID="lblestadonombre" runat="server" ForeColor="#FF3300" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Berlin Sans FB Demi'; font-size: large;">Apellido</td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                <asp:TextBox ID="txtapellido" runat="server"></asp:TextBox>
                <asp:Label ID="lblestadoapellido" runat="server" ForeColor="#FF3300" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Berlin Sans FB Demi'; font-size: large;">Edad</td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                <asp:TextBox ID="txtedad" runat="server"></asp:TextBox>
                <asp:Label ID="lblestadoedad" runat="server" ForeColor="#FF3300" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Berlin Sans FB Demi'; font-size: large;">Email</td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:Label ID="lblestadoemail" runat="server" ForeColor="#FF3300" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Berlin Sans FB Demi'; font-size: large;">Profesion</td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                <asp:TextBox ID="txtprofesion" runat="server"></asp:TextBox>
                <asp:Label ID="lblestadoprofesion" runat="server" ForeColor="#FF3300" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Berlin Sans FB Demi'; font-size: large;">Usuario</td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                <asp:TextBox ID="txtusuario" runat="server"></asp:TextBox>
                <asp:Label ID="lblestadousuario" runat="server" ForeColor="#FF3300" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Berlin Sans FB Demi'; font-size: large;">Contraseña</td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                <asp:TextBox ID="txtcontraseña" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Label ID="lblestadocontraseña" runat="server" ForeColor="#FF3300" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 36px; width: 250px; font-family: 'Berlin Sans FB Demi';">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Berlin Sans FB Demi'; font-size: large;">&nbsp;</td>
            <td style="height: 36px; width: 250px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/pageLogin.aspx" Font-Size="Large">Regresar</asp:HyperLink>
                <asp:RadioButtonList ID="rdbacceso" runat="server" RepeatDirection="Horizontal" Enabled="False" Width="220px" Visible="False">
                    <asp:ListItem Value="1">Nivel 1</asp:ListItem>
                    <asp:ListItem Value="2">Nivel 2</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td style="height: 36px; width: 250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Berlin Sans FB Demi'; font-size: large;">
                &nbsp;</td>
            <td style="height: 36px; width: 250px">&nbsp;</td>
            <td style="height: 36px; width: 250px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

