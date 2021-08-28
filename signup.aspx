<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css' />
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.min.css' />
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.4.1/css/mdb.min.css' />
    <link rel='stylesheet' href='css/signup.css' />

</head>
<body>













    <!-- start signup form -->

    <div class="container">


        <div class="row">


            <div class="col">
                <div class="card ripe-malinka-gradient form-white">
                    <div class="card-body">
                        <!-- Form register -->
                        <form runat="server">
                            <h2 class="text-center font-up font-bold py-4 white-text">Sign up</h2>
                            <div class="md-form">
                                <i class="fa fa-user prefix white-text"></i>
                                <input type="text" id="Name" name="Name" class="form-control" placeholder="Your name" required="Name" />
                            </div>
                            <div class="md-form">
                                <i class="fa fa-envelope prefix white-text"></i>
                                <input type="text" id="Email" name="Email" class="form-control" placeholder="Your email" required="Email" />

                            </div>

                            <div class="md-form">
                                <i class="fa fa-lock prefix white-text"></i>
                                <input type="password" id="Password" name="Password" class="form-control" placeholder="Your password" required="Password" />

                            </div>


                            <div class="md-form">
                                <i class="fa fa-address-card-o prefix white-text"></i>
                                <input type="text" id="Address" name="Address" class="form-control" placeholder="Your Address" required="Address" />

                            </div>

                            <div class="md-form">
                                <i class="fa fa-mobile prefix white-text"></i>
                                <input type="text" id="Contact" name="Contact" class="form-control" placeholder="Your Contact" required="Contact" />

                            </div>

                            <div class="md-form">

                                <asp:Label ID="Message" runat="server"></asp:Label>
                            </div>

                            <div class="text-center">

                                <asp:Button ID="BtnSignUp" CssClass="btn btn-outline-white waves-effect waves-light" runat="server" Text="SIGN UP" OnClick="BtnSignUp_Click" />





                            </div>

                        </form>
                        <!-- Form register -->

                        <div class="bottom text-center mb-5">
                            <p class="sm-text mx-auto mb-3">Already have an account?
                                <button class="btn btn-outline-white waves-effect waves-light">
                                <asp:HyperLink CssClass="text-white" runat="server" NavigateUrl="Login.aspx">Login</asp:HyperLink></button></p>
                        </div>

                    </div>
                </div>
            </div>


        </div>



    </div>

    <!-- End signup form -->



</body>
</html>
