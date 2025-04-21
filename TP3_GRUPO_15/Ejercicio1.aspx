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
            width: 255px;
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
            width: 255px;
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
            width: 255px;
            height: 33px;
        }
        .auto-style12 {
            height: 33px;
        }
        .auto-style13 {
            width: 38px;
            height: 34px;
        }
        .auto-style14 {
            width: 151px;
            height: 34px;
        }
        .auto-style15 {
            width: 255px;
            height: 48px;
        }
        .auto-style16 {
            height: 34px;
        }
        .auto-style17 {
            width: 38px;
            height: 48px;
        }
        .auto-style18 {
            width: 151px;
            height: 48px;
        }
        .auto-style19 {
            height: 48px;
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
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">Nombre de Localidad:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLocalidades" runat="server" ValidationGroup="grupo1" OnTextChanged="txtLocalidades_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidades" ValidationGroup="grupo1" ErrorMessage="Ingrese localidad" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="REV_Localidad" runat="server" ControlToValidate="txtLocalidades" ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúÜüÑñ0-9 ]+$" ValidationGroup="grupo1" ErrorMessage="Ingrese una localidad válida" ForeColor="#CC0000">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
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
                    <asp:Button ID="Btn_Localidad" runat="server" Text="Guardar Localidad " ValidationGroup="grupo1" OnClick="Btn_Localidad_Click"  />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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
                    <asp:Label ID="lblUsuarios" runat="server" Font-Bold="True" Text="Usuarios"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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
                <td class="auto-style2">Nombre de usuario:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtNombre" runat="server" ValidationGroup="grupo2" OnTextChanged="txtNombre_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ValidationGroup="grupo2" ErrorMessage="Ingrese un usuario" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21">Contraseña:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtContrasenia" runat="server" TextMode="Password" ValidationGroup="grupo2"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContrasenia" ValidationGroup="grupo2" ErrorMessage="Ingrese una contraseña" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="revContrasenaCorta" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="Ingrese una contraseña mayor a 6 dígitos" Font-Bold="False" ForeColor="#CC0000" ValidationExpression="\S{6,}">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:CompareValidator ID="cvContrasenia" runat="server" ControlToCompare="txtContrasenia" ControlToValidate="txtRepContrasenia" ErrorMessage="las contraseñas no coinciden" ValidationGroup="grupo2" ForeColor="#CC0000">*</asp:CompareValidator>
                </td>
                <td class="auto-style23"></td>
                <td class="auto-style23"></td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">Repetir contraseña:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtRepContrasenia" runat="server" TextMode="Password" ValidationGroup="grupo2"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="rfvRepContrasenia" runat="server" ControlToValidate="txtRepContrasenia" ValidationGroup="grupo2" ErrorMessage="Repita la contraseña" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">Correo electronico:</td>
                <td class="auto-style3">
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
                <td class="auto-style3">
                    <asp:TextBox ID="txtCp" runat="server" ValidationGroup="grupo2"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RegularExpressionValidator ID="revCp" runat="server" ControlToValidate="txtCp" ValidationExpression="\d{4}" ValidationGroup="grupo2" ErrorMessage="Ingrese un código postal válido" ForeColor="#CC0000">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="rfvCp" runat="server" ControlToValidate="txtCp" ErrorMessage="Ingrese un Código Postal" ForeColor="#CC0000" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
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
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" OnClick="btnGuardarUsuario_Click" ValidationGroup="grupo2" />
                </td>
                <td>
                    <asp:Label ID="LBL_WelcomeUser" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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
                <td class="auto-style2">
                    <asp:Button ID="btnInicio" runat="server" Text="Ir a inicio.aspx" OnClick="btnInicio_Click" />
                </td>
                <td class="auto-style3">
                    <asp:ValidationSummary ID="vsUsuario" runat="server" Height="59px" ValidationGroup="grupo2" Width="253px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:ValidationSummary ID="vsLocalidades" runat="server" style="margin-left: 0px" ValidationGroup="grupo1" Width="242px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
