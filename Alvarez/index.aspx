<%@ Page Title="SN - Home" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Alvarez.indec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <i class="bi bi-building-gear text-white" style="font-size: 90px;"></i>
        <h1 class="fw-bold mt-3 text-uppercase text-white">Sistema de Cálculo de promedios y consulta de notas.</h1>
        <p class="lead text-white mt-3 mb-5">Bienvenido al sistema. Seleccione la operación que desea realizar a continuación.</p>
    </div>
    <div class="row justify-content-center">
            
            <div class="col-md-6 mb-4">
                <div class="card shadow border-0 bg-transparent h-200">
                    <div class="card-body px-5">
                        <i class="bi bi-calculator-fill text-info mb-3" style="font-size: 56px;"></i>
                        <h3 class="fw-bold text-white">Calcular</h3>
                        <p class="mb-4 text-white">Módulo para calcular promedios a partir de las 3 notas de un estudiante.</p>
                        <a href="Calcular.aspx" class="btn btn-dark btn-lg w-100 fw-bold">Ir a Calcular</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-6 mb-4">
                <div class="card shadow border-0 bg-transparent h-200">
                    <div class="card-body px-5">
                        <i class="bi bi-search text-info mb-3" style="font-size: 56px;"></i>
                        <h3 class="fw-bold text-white">Buscar</h3>
                        <p class="mb-4 text-white">Módulo de búsqueda y visualización de notas y promedios.</p>
                        <a href="Buscar.aspx" class="btn btn-dark btn-lg w-100 fw-bold">Ir a Buscar</a>
                    </div>
                </div>
            </div>

        </div>

</asp:Content>
