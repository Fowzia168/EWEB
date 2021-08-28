<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E shopping website</title>

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
        <div>
            <%--navbar start--%>
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
                                <a class="nav-link" href="#">Contact Us</a>
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



                            <li class="nav-item dropdown">
                                <%--<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                </a>--%>
                                <asp:Label ID="navbarDropdownMenuLin2k" data-toggle="dropdown" CssClass="nav-link dropdown-toggle" runat="server"></asp:Label>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">


                                    <li class="nav-item">
                                        <a class="nav-link" href="Login.aspx">Switch Account</a>
                                    </li>



                                </ul>

                            </li>


                            <%--<li class="nav-item">
                                <asp:Label ID="UserDetails" runat="server" CssClass="nav-link" Text="SwitchSwitch" ></asp:Label>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Login.aspx">Switch Account</a>
                            </li>--%>
                        </ul>
                    </div>
                </div>
            </nav>
            <%--navbar END--%>

            <%--slider start--%>
            <div id="demo" class="carousel slide" data-ride="carousel">
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/coat1.jpg" alt="Los Angeles" />
                        <div class="carousel-caption">
                            <button type="button" class="btn btn-outline-info">BUY NOW!</button>
                            <h3>Los Angeles</h3>
                            <p>We had such a great time in LA!</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/coat2.jpg" alt="Chicago" />
                        <div class="carousel-caption">
                            <button type="button" class="btn ">BUY NOW!</button>
                            <h3>Chicago</h3>
                            <p>Thank you, Chicago!</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/casual.jpg" alt="New York" />
                        <div class="carousel-caption">
                            <button type="button" class="btn ">BUY NOW!</button>
                            <h3>New York</h3>
                            <p>We love the Big Apple!</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
            <%--slider End--%>
        </div>
        <%--Card start--%>

        <div class="bg-dark row d-flex justify-content-center align-items-center">
            <%--Card1 start--%>
            <div class="container col-sm col-xs-12 d-flex justify-content-centre">
                <div class="card p-2">
                    <div class="p-info px-3 py-3">
                        <div>
                            <h5 class="mb-0">Beats By Dre</h5>
                            <span>Professional Headphones</span>
                        </div>
                        <div class="p-price d-flex flex-row">
                            <span>$</span>
                            <h1>299</h1>
                        </div>
                        <div class="heart"><i class="bx bx-heart"></i></div>
                    </div>
                    <div class="text-center p-image">
                        <img src="img/coat2.jpg" alt="coat" />
                    </div>
                    <div class="p-about">
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed</p>
                    </div>
                    <div class="buttons d-flex flex-row gap-3 px-3">
                        <button class="btn btn-danger w-100">View</button>
                        <button class="btn btn-outline-danger w-100">Buy Now</button>
                    </div>
                </div>
            </div>
            <%--Card1 Ends--%>

            <%--Card2 start--%>
            <div class="container col-sm col-xs-12 d-flex justify-content-centre">
                <div class="card p-2">
                    <div class="p-info px-3 py-3">
                        <div>
                            <h5 class="mb-0">Beats By Dre</h5>
                            <span>Professional Headphones</span>
                        </div>
                        <div class="p-price d-flex flex-row">
                            <span>$</span>
                            <h1>299</h1>
                        </div>
                        <div class="heart"><i class="bx bx-heart"></i></div>
                    </div>
                    <div class="text-center p-image">
                        <img src="img/coat2.jpg" alt="coat" />
                    </div>
                    <div class="p-about">
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed</p>
                    </div>
                    <div class="buttons d-flex flex-row gap-3 px-3">
                        <button class="btn btn-danger w-100">View</button>
                        <button class="btn btn-outline-danger w-100">Buy Now</button>
                    </div>
                </div>
            </div>
            <%--Card2 Ends--%>


            <%--Card3 start--%>
            <div class="container col-sm col-xs-12 d-flex justify-content-centre">
                <div class="card p-2">
                    <div class="p-info px-3 py-3">
                        <div>
                            <h5 class="mb-0">Beats By Dre</h5>
                            <span>Professional Headphones</span>
                        </div>
                        <div class="p-price d-flex flex-row">
                            <span>$</span>
                            <h1>299</h1>
                        </div>

                    </div>
                    <div class="text-center p-image">
                        <img src="img/coat1.jpg" alt="coat" />
                    </div>
                    <div class="p-about">
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed</p>
                    </div>
                    <div class="buttons d-flex flex-row gap-3 px-3">
                        <button class="btn btn-danger w-100">View</button>
                        <button class="btn btn-outline-danger w-100">Buy Now</button>
                    </div>
                </div>
            </div>
            <%--Card3 Ends--%>

            <%--Card4 start--%>
            <div class="container col-sm col-xs-12 d-flex justify-content-centre">
                <div class="card p-2">
                    <div class="p-info px-3 py-3">
                        <div>
                            <h5 class="mb-0">Beats By Dre</h5>
                            <span>Professional Headphones</span>
                        </div>
                        <div class="p-price d-flex flex-row">
                            <span>$</span>
                            <h1>299</h1>
                        </div>
                        <div class="heart"><i class="bx bx-heart"></i></div>
                    </div>
                    <div class="text-center p-image">
                        <img src="img/coat1.jpg" alt="coat" />
                    </div>
                    <div class="p-about">
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed</p>
                    </div>
                    <div class="buttons d-flex flex-row gap-3 px-3">
                        <button class="btn btn-danger w-100">View</button>
                        <button class="btn btn-outline-danger w-100">Buy Now</button>
                    </div>
                </div>
            </div>
            <%--Card4 Ends--%>
            <%--Card5 start--%>
            <div class="container col-sm col-xs-12 d-flex justify-content-centre">
                <div class="card p-2">
                    <div class="p-info px-3 py-3">
                        <div>
                            <h5 class="mb-0">Beats By Dre</h5>
                            <span>Professional Headphones</span>
                        </div>
                        <div class="p-price d-flex flex-row">
                            <span>$</span>
                            <h1>299</h1>
                        </div>
                        <div class="heart"><i class="bx bx-heart"></i></div>
                    </div>
                    <div class="text-center p-image">
                        <img src="img/coat1.jpg" alt="coat" />
                    </div>
                    <div class="p-about">
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed</p>
                    </div>
                    <div class="buttons d-flex flex-row gap-3 px-3">
                        <button class="btn btn-danger w-100">View</button>
                        <button class="btn btn-outline-danger w-100">Buy Now</button>
                    </div>
                </div>
            </div>
            <%--Card5 Ends--%>
        </div>



        <%--Card End--%>



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

