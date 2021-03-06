<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmProducto.aspx.cs" Inherits="ClienteWeb.Privado.frmProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1.0" /><!-- Etiqueta para adaptar a @media -->
    <LINK REL="stylesheet" TYPE="text/css" HREF="../Estilos/Estilos.css"><!-- Enlace hoja estilos -->
     <%--<link href="lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet">--%>
    <script src="../lib/twitter-bootstrap/js/jsutil.js"></script>
    <p></p>
    <h1>CRUD DE LA TABLA PRODUCTO</h1>
    
        <%-- FORMULARIO --%>
            
            <p>
                <%--Id_PRODUCTO --%>
                <asp:Label ID="lblIdProducto" runat="server" Text="Id_Producto:" CssClass="form-label col-sm-3" Font-Size="Medium"></asp:Label>
                <asp:TextBox runat="server" ID="txtIdProducto" CssClass="form-control"  />
            </p>
            <p>
                
                <%--Nombre Producto--%>
                <asp:Label ID="lblNombreProducto" runat="server" Text="Nombre Producto:" CssClass="form-label col-sm-3" Font-Size="Medium"></asp:Label>
                <asp:TextBox runat="server" ID="txtNombreProducto" CssClass="form-control"  />
            </p>
            <p>
                <%--Descripcion:--%>
                <asp:Label ID="lblDescripcion" runat="server" Text="Descripción:" CssClass="form-label col-sm-3" Font-Size="Medium"></asp:Label>
                <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control"/>
            </p>
            <p>
                <%--Precio:--%>
                <asp:Label ID="lblPrecio" runat="server" Text="Precio:" CssClass="form-label col-sm-3" Font-Size="Medium"></asp:Label>
                <asp:TextBox runat="server" ID="txtPrecio" CssClass="form-control"/>
            </p>
            <p>
                <%--Id_Categoria --%>
                <asp:Label ID="lblIdcategoria" runat="server" Text="Id_Categoria:" CssClass="form-label col-sm-3" Font-Size="Medium"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlIdCategoria" Height="36px" Width="192px" CssClass="form-control"></asp:DropDownList>
            </p>
            <p>
            <asp:Button Text="Nuevo" runat="server" ID="btnNuevo" Style="background-image:url('../Content/img/new.png'); background-repeat:no-repeat" OnClientClick="LimpiarC()"/>
            <asp:Button Text="Agregar" runat="server" ID="btnAgregar" OnClick="btnAgregar_Click" Style="background-image:url('../Content/img/new.png'); background-repeat:no-repeat" />
            <asp:Button Text="Eliminar" runat="server" ID="btnEliminar" OnClick="btnEliminar_Click" Style="background-image:url('../Content/img/delete.png'); background-repeat:no-repeat"/>
            <asp:Button Text="Actualizar" runat="server" ID="btnActualizar" OnClick="btnActualizar_Click" Style="background-image:url('../Content/img/refresh.png'); background-repeat:no-repeat" />
            </p>
            <p>
            <%--Buscar:--%>
            <asp:Label ID="lblBuscar" runat="server" Text="Campo a Buscar:" CssClass="form-label col-sm-3" Font-Size="Medium"></asp:Label>
            <asp:TextBox runat="server" ID="txtBuscar" CssClass="form-control" />
            <asp:Label ID="lblCriterio" runat="server" Text="Criterio de Busqueda:" CssClass="form-label col-sm-3" Font-Size="Medium"></asp:Label>
            <asp:DropDownList runat="server" ID="ddlCriterio" Height="36px" Width="192px" CssClass="form-control">
                <asp:ListItem Text="Nombre" />
                <asp:ListItem Text="Descrip" />
            </asp:DropDownList>
            <p></p>
            <asp:Button Text="Buscar" runat="server" ID="btnBuscar" OnClick="btnBuscar_Click" Style="background-image:url('../Content/img/buscar.png'); background-repeat:no-repeat"/>
            
        <p>
            <asp:GridView runat="server" ID="gvProducto" CellPadding="4" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#00CC00" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" Width="100%">
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <p>
            
            
        </p>
</asp:Content>
