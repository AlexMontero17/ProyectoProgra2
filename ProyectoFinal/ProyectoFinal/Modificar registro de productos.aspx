<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAdmin.Master" AutoEventWireup="true" CodeBehind="Modificar registro de productos.aspx.cs" Inherits="ProyectoFinal.Modificar_registro_de_productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
    A continuación se muestra la tabla con el registro de productos. También puede agregar, eliminar o modificar un producto.</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="Codigo" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GimnasioProyectoConnectionString2 %>" SelectCommand="SELECT * FROM [Producto]"></asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
<p>
    Agregar: incluir un nombre y precio en el text box y pulsar el botón Agregar.</p>
<p>
    Borrar: agregar el código a borrar en el text box y pulsar el botón Borrar.</p>
<p>
    Modificar: agregar el código, nombre y precio en el text box y pulsar el botón Modificar.</p>
<p>
    &nbsp;</p>
<p>
    Codigo:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TCodigo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>
    Nombre:&nbsp;
    <asp:TextBox ID="Tnombre" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
</p>
<p>
    Precio:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Tprecio" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BModificar" runat="server" OnClick="BModificar_Click" Text="Modificar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Bborrar" runat="server" OnClick="Bborrar_Click" Text="Borrar" />
</p>
<p>
    &nbsp;</p>
</asp:Content>
