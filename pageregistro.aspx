﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="pageregistro.aspx.cs" Inherits="pageregistro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 752px; border: 1px solid #cccccc; height: 409px;" align="center">
        <tr>
            <td style="width: 250px; height: 35px;">
                <asp:TextBox ID="txtbuscar" runat="server" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>
                <asp:Button ID="btnbuscar" runat="server" OnClick="btnbuscar_Click" Text="Buscar" />
            </td>
            <td colspan="2" style="height: 35px">
                <asp:Button ID="btnnuevo" runat="server" OnClick="btnnuevo_Click" Text="Nuevo" />
                <%--<asp:Button ID="btnmodificar" runat="server" OnClick="btnmodificar_Click" Text="Modificar" />
                <asp:Button ID="btneliminar" runat="server" OnClick="btneliminar_Click" Text="Eliminar" />--%>
                <asp:Button ID="btncancelar" runat="server" Text="Cancelar" OnClick="btncancelar_Click" />
            </td>
        </tr>
        <tr>
            <td rowspan="11" style="width: 250px; height: 365px;">
                <img alt="fotousuario" src="images/fotousuario.png" style="width: 315px; height: 314px" /></td>
            <td colspan="2" style="height: 36px">
                <h1 style="width: 317px">
                    <asp:Label ID="lblestado" runat="server"></asp:Label>
                </h1>
                
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 250px">Ci</td>
            <td style="height: 36px; width: 250px">
                <asp:TextBox ID="txtci" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 250px">Nombre</td>
            <td style="height: 36px; width: 250px">
                <asp:TextBox ID="txtnombre" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 250px">Apellido</td>
            <td style="height: 36px; width: 250px">
                <asp:TextBox ID="txtapellido" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 250px">Edad</td>
            <td style="height: 36px; width: 250px">
                <asp:TextBox ID="txtedad" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 250px">Email</td>
            <td style="height: 36px; width: 250px">
                <asp:TextBox ID="txtemail" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 250px">Profesion</td>
            <td style="height: 36px; width: 250px">
                <asp:TextBox ID="txtprofesion" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 250px">Usuario</td>
            <td style="height: 36px; width: 250px">
                <asp:TextBox ID="txtusuario" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 250px">Contraseña</td>
            <td style="height: 36px; width: 250px">
                <asp:TextBox ID="txtcontraseña" runat="server" Enabled="False" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 250px">Nivel Acceso</td>
            <td style="height: 36px; width: 250px">
                <asp:RadioButtonList ID="rdbacceso" runat="server" RepeatDirection="Horizontal" Enabled="False" Width="220px">
                    <asp:ListItem Value="1">Nivel 1</asp:ListItem>
                    <asp:ListItem Value="2">Nivel 2</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 250px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/pageLogin.aspx">Regresar</asp:HyperLink>
            </td>
            <td style="height: 36px; width: 250px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
