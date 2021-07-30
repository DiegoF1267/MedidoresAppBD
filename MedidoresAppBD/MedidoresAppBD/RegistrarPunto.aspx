<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarPunto.aspx.cs" Inherits="MedidoresWeb.RegistrarEstacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-12 col-md-6 col-lg-5 mx-auto">
            <div class="card">
                <div class="card-header bg-success text-white text-center">
                    <h1>Registrar Punto De Carga</h1>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="idTxt">Identificador</label>
                        <asp:TextBox ID="idTxt" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="IdValidator" runat="server" ErrorMessage="Debe ingresar el Identificador" CssClass="text-danger" ControlToValidate="idTxt" OnServerValidate="idTxt_ServerValidate"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="capTxt">Capacidad maxima</label>
                        <asp:TextBox ID="capTxt" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="CapValidator" runat="server" ErrorMessage="Debe ingresar la cantidad maxima de vehiculos" CssClass="text-danger" ControlToValidate="capTxt" OnServerValidate="capTxt_ServerValidate" ValidateEmptyText="true"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="VcTxt">Vida Util</label>
                        <asp:Calendar ID="vcTxt" runat="server"></asp:Calendar>
                    </div>
                    <br />
                    <div class="form-group">
                        <label for="tipoRbl">Tipo</label>
                        <asp:RadioButtonList ID="tipoRbl" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Dual" Selected="True" Text="Dual"></asp:ListItem>
                            <asp:ListItem Value="Electrico" Text="Electrico"></asp:ListItem>                          
                        </asp:RadioButtonList>
                    </div>

                </div>
                <div class="card-footer">
                    <asp:Button ID="BtnPuntoCarga" runat="server" Text="Registrar Punto Carga" CssClass="btn btn-success" OnClick="BtnPuntoCarga_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
