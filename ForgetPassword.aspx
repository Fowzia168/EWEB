<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <%--for nav bar etc--%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
    <%--for icons--%>



    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
    </script>
    <script src="js/bootstrap.min.js"></script>
    <%--for dropdown--%>
    <link rel="stylesheet" href="css/StyleSheet.css" />

</head>
<body>




    <form id="form1" runat="server">

        <%--NAV start--%>
        <div>



            <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <a class="navbar-brand" href="#"><span>
                        <img src="img/logo.jpg" alt="MyShoppingSite" height="70" /></span></a>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="signup.aspx">Contact Us</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Blog</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Products
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">

                                    <li><a class="dropdown-header" href="#">Men</a></li>
                                    <li role="separator" class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Shirt</a></li>
                                    <li><a class="dropdown-item" href="#">Denim</a></li>

                                    <li role="separator" class="dropdown-divider"></li>
                                    <li><a class="dropdown-header" href="#">Women</a></li>
                                    <li role="separator" class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Saree</a></li>
                                    <li><a class="dropdown-item" href="#">Long coats</a></li>
                                </ul>



                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Login.aspx">Switch Account</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <%--NAV END--%>
        <br/><br/><br/><br/><br/><br/><br/><br/>
        
        <div class="container">
           
            <h1>We will send an email to recover the password</h1>
             <div class="form-group">
                   <div class="row justify-content-evenly">
                       <div class="col-4">
                           <asp:Label ID="lblForemail" runat="server" Text="Enter Email"></asp:Label>
                            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                        </div>
                          <asp:RequiredFieldValidator ID="required1" runat="server" ControlToValidate="Email" ErrorMessage="Please enter a user name" ForeColor="Red"></asp:RequiredFieldValidator>   
           
                    </div>
         
                     <asp:Button ID="btnResetPassword" CssClass="btn btn-default" runat="server" Text="Send" BorderColor="#CCCCCC" ForeColor="Black" Height="40px" Width="20px" OnClick="btnResetPassword_Click" />
                 
                     <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>

            </div>
        
             
        </div>
       
       

        



   


   
    </form>
    <%--Footer start--%>

        <div class="footer-dark" style=" position: fixed; bottom: 0px; left: 0px; right: 0px; display: block;">
            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-md-3 item">
                            <h3>Services</h3>
                            <ul>
                                <li><a href="#">Web design</a></li>
                                <li><a href="#">Development</a></li>
                                <li><a href="#">Hosting</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 col-md-3 item">
                            <h3>About</h3>
                            <ul>
                                <li><a href="#">Company</a></li>
                                <li><a href="#">Team</a></li>
                                <li><a href="#">Careers</a></li>
                            </ul>
                        </div>
                        <div class="col-md-6 item text">
                            <h3>Company Name</h3>
                            <p>Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.</p>
                        </div>
                        <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                    </div>
                    <p class="copyright">Company Name © 2018</p>
                </div>
            </footer>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

        <%--Footer End--%>
</body>
</html>
