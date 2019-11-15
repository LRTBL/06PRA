<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="_06PRA.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <br />  
    <br />
             

    <div class="form-box" style="width: 585px">
        <div class="footer">
    <h1>BUSQUEDA DE CLIENTES</h1>
    <p>&nbsp;</p>
                       Código:&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="txtcodigo" runat="server"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnbuscar" runat="server" Text="buscar" OnClick="btnbuscar_Click" />
&nbsp;
                 <br />
             
                 Nombres:
                 <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
                 <br />
            x
                 Dirección:
                 <asp:TextBox ID="txtdireccion" runat="server"></asp:TextBox>
                 <br />
                 Telefono:&nbsp;
                 <asp:TextBox ID="txttelefono" runat="server"></asp:TextBox>
                 <br />
                 E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
&nbsp;<br />
                 Edad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="txtedad" runat="server"></asp:TextBox>
    <br />
                 <br />
                 
                 <asp:Button ID="btnmostrar" runat="server"  Text="Mostrar todos los clientes" CssClass="btn-block" OnClick="btngrabar_Click" />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        </div>

</asp:Content>
