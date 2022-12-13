<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAdmin.Master" AutoEventWireup="true" CodeBehind="ModificarUsuarios.aspx.cs" Inherits="ProyectoFinal.ModificarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
    A continuación se muestra una tabla con la información de los usuarios y sus privilegios.</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GimnasioProyectoConnectionString5 %>" SelectCommand="SELECT * FROM [Mae_Usuarios]"></asp:SqlDataSource>
</p>
<p>
</p>
<p>
    Agregar: incluir un email, clave, nombre y tipo en el text box y pulsar el botón Agregar.</p>
<p>
    Borrar: agregar el email a borrar en el text box y pulsar el botón Borrar.</p>
<p>
    Modificar: agregar el email, clave, nombre y tipo en el text box y pulsar el botón Modificar.</p>
<p>
    &nbsp;</p>
<p>
    Email:&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="Temail" runat="server" OnTextChanged="Temail_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>
    Clave: &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Tclave" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
</p>
<p>
    Nombre:&nbsp;
    <asp:TextBox ID="Tnombre" runat="server" OnTextChanged="Tnombre_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;</p>
<p>
    Tipo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Ttipo" runat="server" OnTextChanged="Ttipo_TextChanged"></asp:TextBox>
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
<p>
</p>
<p>
</p>
</asp:Content>
