<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerPunto.aspx.cs" Inherits="MedidoresWeb.VerPunto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- este es un comentario -->

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <span>Cargando...</span>
                </ProgressTemplate>

            </asp:UpdateProgress>


            <!-- filtro-->

            <div style="margin-top: 20px;">
                <asp:DropDownList ID="TipoDdl" runat="server" Enabled="false"
                    AutoPostBack="true" OnSelectedIndexChanged="TipoDdl_SelectedIndexChanged">
                    <asp:ListItem Value="Electrico" Selected="True" Text="Electrico"></asp:ListItem>
                    <asp:ListItem Value="Dual" Text="Dual"></asp:ListItem>
                </asp:DropDownList>

                <asp:CheckBox ID="todosChx" Checked="true" runat="server"
                    AutoPostBack="true" OnCheckedChanged="todosChx_CheckedChanged" Text="Ver Todos" />

            </div>

            <div class="mt-5">

                <asp:GridView ID="puntosGrid" runat="server"
                    AutoGenerateColumns="false" CssClass="table table-hover" OnRowCommand="puntosGrid_RowCommand"
                    EmptyDataText="No hay Puntos de Carga registrados">
                    <Columns>
                        <asp:BoundField HeaderText="Id" DataField="Id" />
                        <asp:BoundField HeaderText="Tipo" DataField="tipo" />
                        <asp:BoundField HeaderText="Capcidad Maxima De Vehiculos" DataField="capMaxVehiculos" />
                        <asp:BoundField HeaderText="Termino de Vida Util" DataField="terminoVidaUtil" />
                        <asp:TemplateField HeaderText="Acciones">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="Actualizar"
                                    CssClass="btn btn-success" CommandName="Actualizar"
                                    CommandArgument='<%# Eval("Id") %>' />


                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>



            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
