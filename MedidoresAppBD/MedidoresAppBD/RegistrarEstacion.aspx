<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarEstacion.aspx.cs" Inherits="MedidoresWeb.RegistrarPunto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-12 col-md-6 col-lg-5 mx-auto">
            <div class="card">
                <div class="card-header bg-success text-white text-center">
                    <h1>Registrar Estación de servicio</h1>
                </div>
                <div class="card-body">
                     <div class="form-group">
                        <label for="idTxt">ID</label>
                        <asp:TextBox ID="idTxt" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="idValidator"  runat="server" ErrorMessage="Debe ingresar una id" CssClass="text-danger" ControlToValidate="idTxt"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="diTxt">Direccion</label>
                        <asp:TextBox ID="diTxt" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar una direcion" CssClass="text-danger" ControlToValidate="diTxt"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="capTxt">Capacidad maxima de Vehiculos</label>
                        <asp:TextBox ID="capTxt" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="capValidator" runat="server" ErrorMessage="Debe ingresar la cantidad maxima de vehiculos" CssClass="text-danger" ControlToValidate="capTxt" ValidateEmptyText="true"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="HrTxt">Horario</label>
                        <asp:TextBox ID="HrTxt" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar el horario de atencion" CssClass="text-danger" ControlToValidate="HrTxt"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="RegionRbl">Region</label>
                        <asp:RadioButtonList ID="RegionRbl" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Antofagasta" Selected="True" Text="Tarapaca"></asp:ListItem>
                            <asp:ListItem Value="Antofagasta" Text="Antofagasta"></asp:ListItem>
                            <asp:ListItem Value="Atacama" Text="Atacama"></asp:ListItem>
                            <asp:ListItem Value="Coquimbo" Text="Coquimbo"></asp:ListItem>
                            <asp:ListItem Value="Valparaiso" Text="Valparaiso"></asp:ListItem>
                            <asp:ListItem Value="O'Higgins" Text="O'Higgins"></asp:ListItem>
                            <asp:ListItem Value="El Maule" Text="El Maule"></asp:ListItem>
                            <asp:ListItem Value="El Bio Bio" Text="El Bio Bio"></asp:ListItem>
                            <asp:ListItem Value="La Araucania" Text="La Araucania"></asp:ListItem>
                            <asp:ListItem Value="Los Lagos" Text="Los Lagos"></asp:ListItem>
                            <asp:ListItem Value="Aysen" Text="Aysen"></asp:ListItem>
                            <asp:ListItem Value="Magallanes y la Antartica Chilena" Text="Magallanes y la Antartica Chilena"></asp:ListItem>
                            <asp:ListItem Value="Region Metropolitana de santiago" Text="Region Metropolitana de santiago"></asp:ListItem>
                            <asp:ListItem Value="Los Rios" Text="Los Rios"></asp:ListItem>
                            <asp:ListItem Value="Arica y Parinacota" Text="Arica y Parinacota"></asp:ListItem>
                            <asp:ListItem Value="Ñuble" Text="Ñuble"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="card-footer">
                    <asp:Button ID="BtnEstacion" runat="server" Text="Registrar Estacion De Servicio" CssClass="btn btn-success" OnClick="BtnEstacion_Click"  />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
