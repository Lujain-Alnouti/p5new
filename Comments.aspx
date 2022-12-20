<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="Kitchen_project5.Comments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>

    <style>
        .add_comme {
    width:50%;
    height: 40px;
    background-color: #ecedef;
    border-radius: 17px;
    border: 1px solid #ecedef;
    color: #2B3467;
    margin-left: 22%;
}

.post {
    width:8%;
    border-radius: 4px;
    height: 30px;
    text-align: center;
    border: 2px solid #E6E6E6;
    background-color: #E6E6E6;
    color: #2B3467;
    font-family: 'Times New Roman';
    font-style: italic;
    font-size: 18px;
    margin-left: 10%;
}

.commented {
    margin-top:50px;
    width: 53%;
    /*height: 40px;*/
    background-color: #E6E6E6;
    border-radius: 17px;
    border: 1px solid #E6E6E6;
    color: #2B3467;
    margin-left: 25%;
    font-family: 'Times New Roman';
    font-style: italic;
    font-size: 20px;
    padding-left: 30px;
    padding-top: 15px;
    display: block;
}
.title {
    width: 100%;
    display: block;
    color: #ecedef;
    text-align: center;
    /*    margin-left:50%;
*/ font-family: 'Times New Roman', Times, serif;
    font-weight: bold;
    font-style: italic;
    font-size: 124px;
    margin-top:90px;
}
    </style>
</head>
<body style="background-color:#2B3467;">
    <form id="form1" runat="server">
        <asp:Label ID="proN" runat="server" Text="" CssClass="title"></asp:Label>
        <div style="margin-top:150px;">
              <asp:TextBox ID="add_comment" runat="server" CssClass="add_comme" placeholder="Enter Your Comment "></asp:TextBox>
            <asp:Button ID="post" runat="server" Text="Post" CssClass="post" OnClick="post_Click" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
