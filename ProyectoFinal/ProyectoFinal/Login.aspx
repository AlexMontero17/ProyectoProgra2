<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoFinal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Usuario (Email):&nbsp;
            <asp:TextBox ID="Tusuario" runat="server" OnTextChanged="Tusuario_TextChanged"></asp:TextBox>
            <br />
            <br />
            <br />
            Clave:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Tclave" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Bingresar" runat="server" Text="Ingresar" OnClick="Bingresar_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="212px">
                <Columns>
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                    <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GimnasioProyectoConnectionString1 %>" DeleteCommand="DELETE FROM [Mae_Usuarios] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Mae_Usuarios] ([Email], [Clave], [Nombre], [Tipo]) VALUES (@Email, @Clave, @Nombre, @Tipo)" SelectCommand="SELECT [Email], [Clave], [Nombre], [Tipo] FROM [Mae_Usuarios]" UpdateCommand="UPDATE [Mae_Usuarios] SET [Clave] = @Clave, [Nombre] = @Nombre, [Tipo] = @Tipo WHERE [Email] = @Email">
                <DeleteParameters>
                    <asp:Parameter Name="Email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Clave" Type="String" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Tipo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Clave" Type="String" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Tipo" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
