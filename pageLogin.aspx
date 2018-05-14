<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="pageLogin.aspx.cs" Inherits="pageLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: auto; border: 1px solid #cccccc; left: 500px; position: relative;">
    <tr>
        <td rowspan="7" style="width: 55px">
            <img alt="loginimg" src="images/sisinfologin00.png" style="width: 290px; height: 216px" /></td>
        <td style="width: 25px">&nbsp;</td>
        <td>Iniciar Session</td>
    </tr>
    <tr>
        <td style="font-weight: bolder; font-style: inherit; font-size: medium;">Usuario</td>
        <td>
            <asp:TextBox ID="txtusuario" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-weight: bolder; font-style: inherit; font-size: medium;">Contraseña</td>
        <td>
            <asp:TextBox ID="txtcontraseña" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-weight: bolder; font-style: inherit; font-size: medium;">&nbsp;</td>
        <td>
            <%--<asp:CheckBox ID="CheckBox1" runat="server" Text="Recordad Inicio de Session" />--%>
        </td>
    </tr>
    <tr>
        <td style="font-weight: bolder; font-style: inherit; font-size: medium;">&nbsp;</td>
        <td>
            <asp:Button ID="btninicio" runat="server" Text="Inicio de Session" OnClick="btninicio_Click" />
            </td>
    </tr>
    <tr>
        <td style="font-weight: bolder; font-style: inherit; font-size: medium; height: 30px;"></td>
        <td style="height: 30px">
            <asp:HyperLink ID="lnkregistrarse" runat="server" NavigateUrl="~/pageregistro.aspx">Registrarse</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="font-weight: bolder; font-style: inherit; font-size: medium;">
            <h1>
                <asp:Label ID="lblestado" runat="server"></asp:Label>
            </h1>
            
        </td>
    </tr>
</table>
</asp:Content>

