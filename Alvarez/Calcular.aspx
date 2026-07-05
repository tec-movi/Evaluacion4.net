<%@ Page Title="" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="Calcular.aspx.cs" Inherits="Alvarez.Calcular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h2 class="mb-4 text-center text-white fw-bold">Calcular y Guardar Promedios</h2>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card border-dark text-white">
                    <div class="card-body p-5 bg-dark">
                        <div class="mb-4">
                            <label class="form-label fw-bold text-info">Rut del Alumno</label>
                            <asp:TextBox ID="txtRut" runat="server" CssClass="form-control" placeholder="Ej: 12345678-9"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvRut" runat="server" ControlToValidate="txtRut" ErrorMessage="<i class='bi bi-exclamation-circle-fill'></i> El Rut es obligatorio." ForeColor="#cc5454" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-4">
                            <label class="form-label fw-bold text-info">Nombre del Alumno</label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingrese el Nombre del Alumno"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="<i class='bi bi-exclamation-circle-fill'></i> El Nombre es obligatorio." ForeColor="#cc5454" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="row mb-5">
                            <div class="col-md-5">
                            <label class="form-label fw-bold text-info">Nota 1</label>
                            <asp:TextBox ID="txtNota1" runat="server" CssClass="form-control" TextMode="Number" step="0.1" min="0" max="7"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNota1" runat="server" ControlToValidate="txtNota1" ErrorMessage="<i class='bi bi-exclamation-circle-fill'></i> Falta Nota 1" ForeColor="#cc5454" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row mb-5">
                            <div class="col-md-5">
                            <label class="form-label fw-bold text-info">Nota 2</label>
                            <asp:TextBox ID="txtNota2" runat="server" CssClass="form-control" TextMode="Number" step="0.1" min="0" max="7"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNota2" runat="server" ControlToValidate="txtNota2" ErrorMessage="<i class='bi bi-exclamation-circle-fill'></i> Falta Nota 2" ForeColor="#cc5454" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row mb-5">
                            <div class="col-md-5">
                            <label class="form-label fw-bold text-info">Nota 3</label>
                            <asp:TextBox ID="txtNota3" runat="server" CssClass="form-control" TextMode="Number" step="0.1" min="0" max="7"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNota3" runat="server" ControlToValidate="txtNota3" ErrorMessage="<i class='bi bi-exclamation-circle-fill'></i> Falta Nota 3" ForeColor="#cc5454" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="d-grid gap-2 mt-5">
                            <asp:Button ID="btnCalcular" runat="server" Text="Calcular y Guardar" CssClass="btn btn-info btn-lg fw-bold" OnClick="btnCalcular_Click" />
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
