<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="Buscar.aspx.cs" Inherits="Alvarez.Buscar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h2 class="mb-4 text-center text-white fw-bold">Consulta de Notas y Promedios</h2>
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card border-dark text-white">
                    <div class="card-body p-5 bg-dark">
                        
                        <div class="mb-5">
                            <label class="form-label fw-bold text-info">Buscar Alumno por Rut</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtRutBuscar" runat="server" CssClass="form-control" placeholder="Ej: 12345678-9"></asp:TextBox>
                                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-info fw-bold" OnClick="btnBuscar_Click" />
                                <asp:Button ID="btnVerTodos" runat="server" Text="Ver Todos" CssClass="btn btn-secondary fw-bold" OnClick="btnVerTodos_Click" />
                            </div>
                        </div>

                        <div class="table-responsive">
                            <asp:GridView ID="gvAlumnos" runat="server" CssClass="table table-dark table-striped table-bordered" AutoGenerateColumns="False" EmptyDataText="Datos no encontrados.">
                                <Columns>
                                    <asp:BoundField DataField="Rut" HeaderText="Rut" />
                                    <asp:BoundField DataField="Nombre" HeaderText="Nombre del Alumno" />
                                    <asp:BoundField DataField="Nota1" HeaderText="Nota 1" />
                                    <asp:BoundField DataField="Nota2" HeaderText="Nota 2" />
                                    <asp:BoundField DataField="Nota3" HeaderText="Nota 3" />
                                    <asp:BoundField DataField="Promedio" HeaderText="Promedio" />
                                </Columns>
                            </asp:GridView>
                        </div>

                        <div class="mt-4 text-center">
                            <asp:Label ID="lblMensaje" runat="server" Font-Size="Large"></asp:Label>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
