<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerEstacion.aspx.cs" Inherits="MedidoresWeb.VerEstacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
     <ContentTemplate>
                     <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <span>Cargando...</span>
                </ProgressTemplate>

            </asp:UpdateProgress>
            <!--Grillas-->
            <div class="mt-5">

                <asp:GridView ID="estacionesGrid" runat="server"
                    AutoGenerateColumns="false" CssClass="table table-hover" OnRowCommand="estacionesGrid_RowCommand"
                    EmptyDataText="No hay Estaciones registradas">
                    <Columns>
                        <asp:BoundField HeaderText="Id" DataField="Id" />
                        <asp:BoundField HeaderText="CapacidadMax" DataField="capacidadMaxPuntosCarga" />
                        <asp:BoundField HeaderText="Region" DataField="Region" />
                        <asp:BoundField HeaderText="Horario De Atencion" DataField="HorarioAtencion" />
                        <asp:BoundField HeaderText="Dirección" DataField="Direccion" />
                        <asp:TemplateField HeaderText="Acciones">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="Eliminar"
                                    CssClass="btn btn-danger" CommandName="eliminar"
                                    CommandArgument='<%# Eval("Id") %>' />


                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>



            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

