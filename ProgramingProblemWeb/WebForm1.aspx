<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="testWebASP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pageHdr">
            <p class="pageHdrh4">Coding Problem</p>
        </div>
        <div>
            <div style="margin-bottom: 15px; margin-top: 15px; flex: 1">
                <div style="flex: 1; flex-direction: row">
                    <asp:Button CssClass="btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Trigger Event" />
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Diagnose</asp:ListItem>
                        <asp:ListItem>Register</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div style="flex: 1">
                <asp:TextBox ID="TextBox1" runat="server" Height="500px" Width="100%" TextMode="MultiLine" Wrap="False"></asp:TextBox>
            </div>
        </div>
    </form>
</body>
</html>



<style>
    .pageHdrh4 {
        display: block;
        float: left;
        color: #ffffff;
        font-weight: normal;
        font-size: 14px;
        margin-left: 10px;
        text-shadow: 0px 0px 3px #333;
    }

    .pageHdr {
        background: -webkit-gradient(linear, left top, left bottom, from(#006aac), to(#004990));
        background: -webkit-linear-gradient(top, #006aac, #004990);
        background: -moz-linear-gradient(top, #006aac, #004990);
        background: -o-linear-gradient(top, #006aac, #004990);
        margin-bottom: 15px;
        border-bottom: 2px solid #b2b2b2;
        border-top: 1px solid #004990;
        border-right: 1px solid #004990;
        border-left: 1px solid #004990;
        height: 31px;
    }

    .eventBody {
        flex-direction: column;
    }

    .eventbodyItem {
        flex: 1;
    }

    .btn {
        display: inline-block;
        height: 24px;
        padding: 3px 10px;
        min-width: 40px;
        font-size: 12px;
        font-weight: 400;
        text-align: center;
        border-radius: 0px;
        touch-action: manipulation;
        user-select: none;
        cursor: pointer;
    }

    .btn-primary {
        color: #fff;
        background: -webkit-gradient(linear, left top, left bottom, from(#006aac), to(#004990));
        background: -webkit-linear-gradient(top, #006aac, #004990);
        background: -moz-linear-gradient(top, #006aac, #004990);
        background: -ms-linear-gradient(top, #006aac, #004990);
        background: -o-linear-gradient(top, #006aac, #004990);
        background: linear-gradient(top, #006aac, #004990);
        border: 1px solid #006aac;
    }

        .btn-primary:hover {
            background: #006aac;
        }
</style>

