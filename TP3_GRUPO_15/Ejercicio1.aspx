<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3_GRUPO_15.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulario Localidades y Usuarios</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 270px;
        }
        .auto-style2 {
            width: 151px;
        }
        .auto-style3 {
            width: 223px;
        }
        .auto-style4 {
            width: 38px;
        }
        .auto-style5 {
            width: 38px;
            height: 23px;
        }
        .auto-style6 {
            width: 151px;
            height: 23px;
        }
        .auto-style7 {
            width: 223px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 38px;
            height: 33px;
        }
        .auto-style10 {
            width: 151px;
            height: 33px;
        }
        .auto-style11 {
            width: 223px;
            height: 33px;
        }
        .auto-style12 {
            height: 33px;
        }
        .auto-style13 {
            width: 38px;
            height: 26px;
        }
        .auto-style14 {
            width: 151px;
            height: 26px;
        }
        .auto-style15 {
            width: 223px;
            height: 26px;
        }
        .auto-style16 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblLocalidades" runat="server" Font-Bold="True" Font-Italic="False" Text="Localidades" ValidateRequestMode="Enabled"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">Nombre de Localidad:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtLocalidades" runat="server" ValidationGroup="grupo1"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidades" ValidationGroup="grupo1">Ingrese localidad</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Btn_Localidad" runat="server" Text="Guardar Localidad " ValidationGroup="grupo1" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblUsuarios" runat="server" Font-Bold="True" Text="Usuarios"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">Nombre de usuario:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtNombre" runat="server" ValidationGroup="grupo2"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ValidationGroup="grupo2">Ingrese un usuario</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">Contraseña:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtContrasenia" runat="server" ValidationGroup="grupo2"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">Repetir contraseña:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtRepContrasenia" runat="server" ValidationGroup="grupo2"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">Correo electronico:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="grupo2"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RFV_Email" runat="server" ControlToValidate="txtEmail" ErrorMessage="Coloque su email" ForeColor="#CC0000" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="REV_Email" runat="server" ControlToValidate="txtEmail" ErrorMessage="Escriba correctamente su email" Font-Bold="False" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grupo2">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">CP:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtCp" runat="server" ValidationGroup="grupo2"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RegularExpressionValidator ID="revCp" runat="server" ControlToValidate="txtCp" ValidationExpression="\d{4}">RegularExpressionValidator</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">Localidades:</td>
                <td class="auto-style11">
                    <asp:DropDownList ID="ddlLocalidades" runat="server" Height="19px" Width="184px" ValidationGroup="grupo2">
                        <asp:ListItem Value="0">--Seleccione una localidad--</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" ValidationGroup="grupo2" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnInicio" runat="server" Text="Ir a inicio.aspx" OnClick="btnInicio_Click" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
