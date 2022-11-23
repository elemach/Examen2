<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="Examen2.Ventas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="height: 107px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style2">Sistema de ventas </span>
            <br />
            <br />
            Codigo de Venta&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            Cajero&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Producto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Maquina&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo_Venta" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    <asp:BoundField DataField="Codigo_Venta" HeaderText="Codigo_Venta" ReadOnly="True" SortExpression="Codigo_Venta" />
                    <asp:BoundField DataField="Cajero" HeaderText="Cajero" SortExpression="Cajero" />
                    <asp:BoundField DataField="Maquina" HeaderText="Maquina" SortExpression="Maquina" />
                    <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
                </Columns>
            </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Examen2ConnectionString2 %>" SelectCommand="SELECT * FROM [Venta]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar Venta" />
            <br />
        </div>
    </form>
</body>
</html>
