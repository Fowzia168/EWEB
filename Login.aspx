<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E shopping website</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
    </script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/login.css" />
</head>
<body>
    <form id="form1" runat="server">






        <%--Form start--%>


        <div class="form">
            <div class="container px-4 py-5 mx-auto">
                <div class="card card0">
                    <div class="d-flex flex-lg-row flex-column-reverse">
                        <div class="card card1">
                            <div class="row justify-content-center my-auto">
                                <div class="col-md-8 col-10 my-5">
                                    <div class="row justify-content-center px-3 mb-3">
                                        <img id="logo" src="img/logo.jpg">
                                    </div>
                                    <h3 class="mb-5 text-center heading">We are The Risen</h3>
                                    <h6 class="msg-info">Please login to your account</h6>
                                    <div class="form-group">
                                        <label class="form-control-label text-muted">Email</label>
                                        <input type="text" id="Email" name="Email" runat="server" placeholder="Email Id" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-control-label text-muted">Password</label>
                                        <input type="password" id="Password" name="Password" runat="server" placeholder="Password" class="form-control">
                                    </div>
                                    <div class="row justify-content-center my-3 px-3">
                                        <asp:Button ID="btnLogin" CssClass="btn-block btn-color" runat="server" Text="Login" OnClick="btnLogin_Click" />


                                    </div>
                                      <div class="row justify-content-center my-3 px-3">
                                       
                                          <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />

                                    </div>
                                    <div class="row justify-content-center my-2">
                                        <%--<asp:LinkButton ID="ForgetPassword" runat="server">Forgot Password??</asp:LinkButton> --%>
                                        <asp:HyperLink ID="ForgetPassword" runat="server" NavigateUrl="~/ForgetPassword.aspx">Forgot Password??</asp:HyperLink>
                                    </div>
                                    <div class="row justify-content-center my-2">
                                        <asp:Label ID="Label1" runat="server"></asp:Label></div>
                                </div>
                            </div>
                            <div class="bottom text-center mb-5">
                                <p class="sm-text mx-auto mb-3">Don't have an account?<button class="btn btn-white ml-2">
                                    <asp:HyperLink runat="server" NavigateUrl="SignUp.aspx">Create new</asp:HyperLink></button></p>
                            </div>
                        </div>
                        <div class="card card2">
                            <div class="my-auto mx-md-5 px-md-5 right">
                                <h3 class="text-white">We are more than just a company</h3>
                                <small class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <%--Form End--%>



        <%--Footer start--%>

        <div class="footer-dark">
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
    </form>


</body>
</html>
