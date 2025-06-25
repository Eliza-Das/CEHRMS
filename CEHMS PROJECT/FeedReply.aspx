<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedReply.aspx.cs" Inherits="CEHMS_PROJECT.FeedReply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Reply Here:
            <asp:TextBox ID="txtRep" runat="server" Style="width:300px; height:200px" placeholder="Reply Here"></asp:TextBox>
            <br />
             <br />
            <asp:LinkButton ID="submit" runat="server" OnClick="submit_Click">Submit</asp:LinkButton>
        </div>
    </form>
</body>
</html>
