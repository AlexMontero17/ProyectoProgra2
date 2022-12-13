<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAdmin.Master" AutoEventWireup="true" CodeBehind="ModificarClientes.aspx.cs" Inherits="ProyectoFinal.ModificarClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
    A continuación se muestra la tabla con el registro de clientes. También puede agregar, eliminar o modificar la información del cliente.</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="Codigo" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GimnasioProyectoConnectionString3 %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>
</p>
<p>
    Agregar: incluir un nombre, apellido y teléfono en el text box y pulsar el botón Agregar.</p>
<p>
    Borrar: agregar el código a borrar en el text box y pulsar el botón Borrar.</p>
<p>
    Modificar: agregar el código, nombre, apellido y teléfono en el text box y pulsar el botón Modificar.</p>
<p>
    &nbsp;</p>
<p>
    Codigo:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Tcodigo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>
    Nombre:&nbsp;
    <asp:TextBox ID="Tnombre" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
</p>
<p>
    Apellido:&nbsp;
    <asp:TextBox ID="Tapellido" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;</p>
<p>
    Teléfono:&nbsp;
    <asp:TextBox ID="Ttelefono" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>
    <asp:Button ID="Bagregar" runat="server" OnClick="Button1_Click" Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BModificar" runat="server" OnClick="BModificar_Click" Text="Modificar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Bborrar" runat="server" OnClick="Bborrar_Click" Text="Borrar" />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
