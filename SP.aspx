<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SP.aspx.cs" Inherits="Kitchen_project5.SP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="SP_CSS.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <%--<nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>--%>
       <div class="shoes-card">
      <%--<h1>Original Color Shoes</h1>--%>
            <asp:Label ID="Label1" runat="server" Text="Cooking Jug" CssClass="title"></asp:Label> <br />
           <div class="des">
            <asp:Label ID="description" runat="server" Text="Cooking pot in the shape of a jug , black in color , capacity: 5 liters , granite type" CssClass="desc"></asp:Label>
           </div>
           <%--<p>Shoes with different color and background</p>--%>
      <div class="shoes-pic">
                <asp:Image ID="product_img" runat="server"  ImageUrl="~\Images_testing\OIP (5).jpg"  CssClass="pro_img"/>

      </div>

      <%--<div class="shoes-colors">
        <span class="blue active" data-color="#7ed6df" data-pic="url(https://i.imgur.com/oRpXTOq.png)"></span>
        <span class="green" data-color="#badc58" data-pic="url(https://i.imgur.com/iyx4e9c.png)"></span>
        <span class="yellow" data-color="#f9ca24" data-pic="url(https://i.imgur.com/kzsklN4.png)"></span>
        <span class="rose" data-color="#ff7979" data-pic="url(https://i.imgur.com/iVJjW92.png)"></span>
      </div>--%>
      <div class="shoes-info">
      <asp:Label ID="price" runat="server" Text="100 JD" CssClass="price shoes-price"></asp:Label>
          <asp:TextBox ID="quen" runat="server" CssClass="form-control text-center me-3" type="number" value="1" style="max-width:5rem"></asp:TextBox>
           <%--<input class="form-control text-center me-3" id="inputQuantity" type="number" value="1" style="max-width: 3rem" />--%>
        <%--<div class="shoes-price">$90</div>--%>
<asp:Button ID="addtocart" runat="server" Text="Add To Cart" CssClass="shoes-button" />

         
      
      </div>
          
            <%--<div style="margin-top:120px" class="comm" runat="server"> 
              <asp:TextBox ID="add_comment" runat="server" CssClass="add_comme"></asp:TextBox>
            <asp:Button ID="post" runat="server" Text="Post" CssClass="post" OnClick="post_Click" />
             
        </div>--%>
        
    </div>
           <div>
               <asp:Button ID="addcommwnrt" runat="server" Text="Comments" CssClass="shoes-button" Style="margin-left: 80%; margin-top: 50px;" OnClick="addcommwnrt_Click" />

           </div>
    </form>
</body>
</html>
