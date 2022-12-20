<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSales_Admin.aspx.cs" Inherits="Kitchen_project5.UserSales_Admin" %>

<%--<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!DOCTYPE html>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  
        <link rel="stylesheet" href=
"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity=
"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
  
    <link rel="stylesheet" href=
"https://use.fontawesome.com/releases/v5.4.1/css/all.css"
        integrity=
"sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
         crossorigin="anonymous">


<link rel="stylesheet" href="bootstrap-5.2.2-dist/css/bootstrap.css">
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link rel="stylesheet" href="User_Sales_Admin_CSS.css"/>
  
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sider">
        <div class="left_admin">
            <div class="admin_image"><i class="fa-sharp fa-solid fa-user icon"></i></div>
            <div class="admin_name">
                <asp:Label ID="Label1" runat="server" Text="ِAdmin"></asp:Label></div>
           <br />
         <div class="line"></div>
           
            <div class="links_cat_pro_user">
                <asp:HyperLink ID="HyperLink1" runat="server">Users</asp:HyperLink>
                <br />
               
                <br />

                 <asp:HyperLink ID="HyperLink2" runat="server">Categories</asp:HyperLink>
                <br>
                <br />

                 <asp:HyperLink ID="HyperLink3" runat="server">Products</asp:HyperLink>
            </div>
        </div>

        <div class="right_div">
            <div class="title_name"><h1>Users</h1></div>
        </div>
        <div>

        </div>

            </div>

        
    </form>
</body>
</html>--%>



<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="User_Sales_Admin_CSS.css"/>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="title_div">
                <div class="admin_N">
                    <i class="fa-sharp fa-solid fa-user icon"></i> <br />
                    <asp:Label ID="Label1" runat="server" Text="ADMIN"></asp:Label>
                    </div>
                
                <div class="page_N"> <asp:Label ID="Label2" runat="server" Text="Users" CssClass="LAB"></asp:Label></div>
            </div>
            <div style="width:100%;">
                <div class="admin_Dash links_cat_pro_user">
                     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ShowUser_Admin.aspx" CssClass="link">Users</asp:HyperLink>
                <br />
               
                <br />

                 <asp:HyperLink ID="HyperLink2" runat="server" CssClass="link">Categories</asp:HyperLink>
                <br>
                <br />

                 <asp:HyperLink ID="HyperLink3" runat="server" CssClass="link" >Products</asp:HyperLink>
            
                </div>
                <div class="user_INFO">
                   <div class="us_de">
                    <asp:Label ID="na" runat="server" Text="User Name : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; " ></asp:Label>
                    <asp:Label ID="username" runat="server" Text="xxx"></asp:Label>

                    <asp:Label ID="Label3" runat="server" Text=" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"></asp:Label>
                    <asp:Label ID="em" runat="server" Text="Email : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "></asp:Label>
                    <asp:Label ID="useremail" runat="server" Text="xxx@gmail.com"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "></asp:Label>
                    <asp:LinkButton ID="Back" runat="server" PostBackUrl="~/ShowUser_Admin.aspx" CssClass="link2">Back</asp:LinkButton>
                   <br /><br />    
                   </div>
                    <br />
                    <asp:Label ID="users" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
