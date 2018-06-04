<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/MasterPageHistorialMedico.master" AutoEventWireup="true" CodeFile="pageeditarhistoriales.aspx.cs" Inherits="pageeditarhistoriales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 100%; border: 1px solid #cccccc">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">
                <asp:Label ID="Label1" runat="server" Text="USUARIO:" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                <asp:Label ID="lblusuario" runat="server" Text="Label" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <img alt="regresar5" src="images/regresar.png" style="width: 58px; height: 50px" /><asp:Button ID="Button4" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" OnClick="Button4_Click" Text="Regresar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td rowspan="2">&nbsp;</td>
            <td rowspan="2">&nbsp;</td>
            <td colspan="5">
                <asp:Label ID="lblestado" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" ForeColor="Red"></asp:Label>
            </td>
            <td rowspan="2">&nbsp;</td>
            <td rowspan="2">&nbsp;</td>
            <td>
                <asp:Label ID="lblerror" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="Large" ForeColor="Red"></asp:Label>
            </td>
            <td rowspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblfechaerror" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="Large" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td rowspan="12">&nbsp;</td>
            <td rowspan="12">&nbsp;</td>
            <td colspan="5" rowspan="12">
                <asp:Label ID="Label3" runat="server" BackColor="#3399FF" Font-Names="Berlin Sans FB" Font-Size="X-Large" ForeColor="Black" Text="Marque una fila para Editar"></asp:Label>
                <asp:GridView ID="GridView2" runat="server" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" Font-Names="Berlin Sans FB" Font-Size="Large" Height="67px" HorizontalAlign="Center" ShowFooter="True" style="margin-left: 0px" Width="486px">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblid" runat="server" Text="Id" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td rowspan="12">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblidusuario" runat="server" Text="IdUsuario" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtidusuario" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblfecha" runat="server" Text="Fecha" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfecha" runat="server" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="Large" Text="año-mes-dia"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbltipo" runat="server" Text="Tipo" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttipo" runat="server" Visible="False"></asp:TextBox>
                <asp:DropDownList ID="drptipo" runat="server" Font-Names="Berlin Sans FB" Font-Size="Medium">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="1">Consulta</asp:ListItem>
                    <asp:ListItem Value="2">Analisis</asp:ListItem>
                    <asp:ListItem Value="3">Mis notas</asp:ListItem>
                    <asp:ListItem Value="4">Recordatorios</asp:ListItem>
                    <asp:ListItem Value="5">Radiografias</asp:ListItem>
                    <asp:ListItem Value="6">Recetas Medicas</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblnombre" runat="server" Text="Titulo" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnombre" runat="server" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbldoctor" runat="server" Text="Doctor" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdoctor" runat="server" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbldescripcion" runat="server" Text="Descripcion" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdescripcion" runat="server" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblimagen" runat="server" Text="Imagen" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtimagen" runat="server" Visible="False"></asp:TextBox>
                <asp:FileUpload ID="fileeditarimagen" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnmodificar" runat="server" OnClick="btnmodificar_Click" Text="Modificar" BackColor="#99CCFF" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Eliminar" OnClick="Button3_Click" BackColor="#99CCFF" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblmensaje" runat="server" Font-Names="Berlin Sans FB" Font-Size="X-Large" ForeColor="#0066FF"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">
                <asp:Label ID="lblvistaprevia" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" Text="Vista Previa Imagen"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">
                <asp:GridView ID="dgridvieweditar" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="Large" ForeColor="Black" AutoGenerateColumns="False" HorizontalAlign="Justify">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" HorizontalAlign="Center" Wrap="True" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" BorderColor="Blue" HorizontalAlign="Center" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </td>
            <td colspan="4" rowspan="9">
                <asp:Image ID="imgpreview" width="350" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="height: 22px">&nbsp;</td>
            <td style="height: 22px"></td>
            <td colspan="5" style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <img alt="regresar6" src="images/regresar.png" style="width: 60px; height: 43px" /><asp:Button ID="Button1" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" OnClick="Button1_Click" Text="Regresar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">


           <%-- <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="EntityDataSource1" ForeColor="Black" Width="995px" AllowSorting="True" Font-Bold="False" Font-Size="Large" Font-Strikeout="False" HorizontalAlign="Center" Font-Names="Berlin Sans FB">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>--%>
                    <%--<asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />--%>
                    <%--<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="True" />
                    <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" SortExpression="id_usuario" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="doctor" HeaderText="doctor" SortExpression="doctor" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>--%>


                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DBHistMedicEntities" DefaultContainerName="DBHistMedicEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="tbl_historialmedico" EntityTypeFilter="tbl_historialmedico">
                </asp:EntityDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

