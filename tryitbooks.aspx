<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tryitbooks.aspx.cs" Inherits="TryItPage.tryitbooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            width: 789px;
            height: 30px;
        }
        #input_text {
            width: 764px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="Label1" runat="server"  Font-Bold="true" Font-Size="X-Large"   Text="Get Details of Top 20 Books"></asp:Label>
            </div>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter Valid XML Url"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="702px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Data" Width="137px" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
