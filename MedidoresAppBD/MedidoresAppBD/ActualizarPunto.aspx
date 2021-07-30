<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizarPunto.aspx.cs" Inherits="MedidoresWeb.EliminarPunto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row mt-5">
        <div class="col-12 col-md-6 col-lg-5 mx-auto">
            <div class="card">
                <div class="card-header bg-success text-white text-center">
                    <h1>Actualizar Punto De Carga</h1>
                </div>
                <div class="card-body">
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
                    <asp:Button ID="BtnPuntoCarga" runat="server" Text="Actualizar Punto Carga" CssClass="btn btn-success" OnClick="BtnPuntoCarga_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

