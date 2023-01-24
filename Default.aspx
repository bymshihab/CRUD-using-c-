<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <br />
        <div style="font-size:x-large" align="center"> Information System</div>
        <br />
     
        <table style="width: 100%">
            <tr>
                <td style="width: 448px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="321px" AutoCompleteType="Disabled" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 448px; height: 24px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name</td>
                <td style="height: 24px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="321px"></asp:TextBox>
                </td>
                <td style="height: 24px"></td>
            </tr>
            <tr>
                <td style="width: 448px">&nbsp;</td>
                
                <td>
                    <br />
                    <asp:Button ID="insertBtn" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClientClick="insertBtn" Text="Insert" OnClick="insertBtn_Click" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="updateBtn" runat="server" BackColor="#009933" Font-Bold="True" ForeColor="White" OnClientClick="updateBtn" Text="Update" OnClick="updateBtn_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="updateBtn0" runat="server" BackColor="#CC0000" Font-Bold="True" ForeColor="White" OnClientClick="updateBtn" Text="Delete" OnClick="deleteBtn_Click" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="insertBtn0" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClientClick="insertBtn" Text="Clear" OnClick="clearBtn_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
               
                <td style="width: 448px">&nbsp;</td>
                <td>
                   <br />
                   <br />
                    <asp:GridView ID="GridView1" runat="server" Height="113px" Width="250px">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
    
</asp:Content>
