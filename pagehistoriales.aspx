<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/MasterPageHistorialMedico.master" AutoEventWireup="true" CodeFile="pagehistoriales.aspx.cs" Inherits="pagehistoriales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; border: 1px solid #cccccc">
    <tr>
        <td>&nbsp;</td>
        <td rowspan="3" class="text-center">
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DBHistMedicEntities" DefaultContainerName="DBHistMedicEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="tbl_historialmedico">
            </asp:EntityDataSource>
            <table align="center" style="width: 997px; border: 1px solid #cccccc">
                <tr>
                    <td rowspan="8">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td style="width: 12px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Nuevo Historial" BackColor="#99CCFF" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" OnClick="Button2_Click" Text="Editar Historiales" />
                    </td>
                    <td>
            <asp:Button ID="btnbuscar" runat="server" OnClick="btnbuscar_Click" Text="Buscar Historiales" BackColor="#99CCFF" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" />
                    </td>
                    <td style="width: 12px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 26px;">
                        &nbsp;</td>
                    <td style="height: 26px;">
            <asp:Label ID="Label1" runat="server" Text="USUARIO: " Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
            <asp:Label ID="lblusuario" runat="server" Text="Label" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                    </td>
                    <td style="height: 26px;">
                        <asp:TextBox ID="txtfiltrar" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td style="height: 26px;"></td>
                    <td style="width: 12px; height: 26px;"></td>
                    <td style="height: 26px;"></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtid" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Filtrar Historiales por:" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="Large"></asp:Label>
                        <asp:DropDownList ID="drdfiltrar" runat="server" Font-Names="Berlin Sans FB">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Value="1">Consulta</asp:ListItem>
                            <asp:ListItem Value="2">Analisis</asp:ListItem>
                            <asp:ListItem Value="3">Radiografias</asp:ListItem>
                            <asp:ListItem Value="4">Recordatorios</asp:ListItem>
                            <asp:ListItem Value="5">Mis notas</asp:ListItem>
                            <asp:ListItem Value="6">Recetas Medicas</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:Button ID="btnfiltrar" runat="server" OnClick="btnfiltrar_Click" Text="Filtrar" BackColor="#99CCFF" Font-Bold="True" Font-Names="Berlin Sans FB" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td style="width: 12px; ">&nbsp;</td>
                    <td></td>
                </tr>
                <tr>
                    <td style="height: 25px;"></td>
                    <td style="height: 25px;"></td>
                    <td style="height: 25px;">
                        <asp:Label ID="lblestado" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" ForeColor="Red"></asp:Label>
                    </td>
                    <td style="height: 25px;">
                        <asp:Label ID="lblvistapreviaimagen" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB" Font-Size="Large" Text="Vista Previa de la Imagen"></asp:Label>
                    </td>
                    <td style="width: 12px; height: 25px;"></td>
                    <td style="height: 25px;"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="width: 12px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
            <asp:GridView ID="gridviewhistoriales" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderStyle="Outset" BorderWidth="2px" CellPadding="2" Font-Bold="False" Font-Italic="False" Font-Names="Berlin Sans FB" Font-Overline="False" Font-Size="Large" ForeColor="Black" ShowFooter="True" Width="498px" OnRowDataBound="gridviewhistoriales_RowDataBound" OnSelectedIndexChanged="gridviewhistoriales_SelectedIndexChanged">
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
                    <td>
                        <asp:Image ID="imgpreview" width="400" runat="server" />
                    </td>
                    <td style="width: 12px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="width: 12px">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>


           <%-- <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="EntityDataSource1" ForeColor="Black" Width="995px" AllowSorting="True" Font-Bold="False" Font-Size="Large" Font-Strikeout="False" HorizontalAlign="Center" Font-Names="Berlin Sans FB">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>--%>
                    <%--<asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />--%>
                    <%--<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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

