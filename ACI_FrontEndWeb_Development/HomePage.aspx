<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ACI_FrontEndWeb_Development.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Landing Page -->
        <div class="intro-header">
            <!-- change this image in custom.css-->
            <div class="container">
                <div class="row">
                    <div class="intro-message col-sm-6">
                        <h1>asian culinary institute</h1>
                        <h1 style="color: blue">Singapore</h1>
                        <hr class="intro-divider">
                        <ul class="list-inline intro-social-buttons">
                            <li><a href="https://twitter.com/" class="btn btn-success btn-lg"><i class="fa fa-twitter fa-fw"></i><span class="network-name">Twitter</span></a> </li>
                            <li><a href="https://github.com/" class="btn btn-default btn-lg"><i class="fa fa-youtube fa-fw"></i><span class="network-name">YouTube</span></a> </li>
                            <li><a href="#" class="btn btn-primary btn-lg"><i class="fa fa-facebook fa-fw"></i><span
                                class="network-name">facebook</span></a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Start Our Services -->
        <div id="our-services">
            <div class="container padding-top padding-bottom">
                <div class="row section-title text-center">
                    <div class="col-sm-8 col-sm-offset-2">
                        <h1>
                            <span>Our</span> Events</h1>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col-sm-6 service">
                        <div class="service-content">
                            <a href="EventDetails.aspx">
                                <asp:Image class="img-responsive img-thumbnail" ID="Image3" ImageUrl="~/images/event1.jpg" runat="server" Height="240" Width="630" />
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-6 service">
                        <div class="service-content">
                            <h2>September One Day Pastry Course</h2>
                            <h4>15 Sep 2017</h4>
                            <p>
                                Have you always wanted to try your hand at pastry making? This course provides you with the opportunity for a hands-on session with our pastry chef to learn... <strong><a href="EventDetails.aspx">Read More</a></strong>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col-sm-6 service">
                        <div class="service-content">
                            <a href="EventDetails.aspx">
                                <asp:Image class="img-responsive img-thumbnail" ID="Image1" ImageUrl="~/images/event2.jpg" runat="server" Height="240" Width="630" /></a>
                        </div>
                    </div>
                    <div class="col-sm-6 service">
                        <div class="service-content">
                            <h2>ACI Open House</h2>
                            <h4>15 Sep 2017</h4>
                            <p>
                                ACI will be having an Open House on 3 Dec 2016, Saturday. Join us for the exciting activities happening on that day. Hurry and grab your slots for the sessi... <strong><a href="EventDetails.aspx">Read More</a></strong>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col-sm-6 service">
                        <div class="service-content">
                            <a href="EventDetails.aspx">
                                <asp:Image class="img-responsive img-thumbnail" ID="Image2" ImageUrl="~/images/event3.jpg" runat="server" Height="240" Width="630" /></a>
                        </div>
                    </div>
                    <div class="col-sm-6 service">
                        <div class="service-content">
                            <h2>Culinary Star Quest 2017</h2>
                            <h4>15 Sep 2017</h4>
                            <p>
                                Culinary Star Quest competition is to attract aspiring talent who have the passion in culinary and are keen to join the F&B Industry. This is a platform to c... <strong><a href="EventDetails.aspx">Read More</a></strong>
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- /# Our Services -->
        <!-- Slider -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="images/banner1.jpg" />
                </div>
                <div class="item">
                    <img src="images/banner2.jpg" />
                </div>
                <div class="item">
                    <img src="images/banner3.png" />
                    <%--  <div class="carousel-caption">
                    <h2>
                        Slide Three</h2>
                    <h3>
                        Bootstrap is completely free to download and use!</h3>
                </div>--%>
                </div>
            </div>
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                    data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><span class="sr-only">Next</span> </a>
        </div>

        <div class="container padding-bottom">
            <div class="row section-title text-center">
                <div class="col-sm-8 col-sm-offset-2">
                    <h1>
                        <span>Our</span> up coming courses</h1>
                </div>
            </div>
            <div class="text-cente">
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <a href="Courses.aspx">
                            <asp:Image class="img-responsive img-thumbnail" ID="Image4" ImageUrl="~/images/up1.jpg" runat="server" Height="140" Width="280" /></a>
                        <h2>WSQ Follow Food & Beverage Safety and Hygiene Policies and Procedures</h2>
                        <h4>10 Jun 2017</h4>
                        <p>
                            This programme is a SSG and NEA accredited programme.  Participants will learn the basic of food safety and hygiene knowledge required to be a certified... <strong><a href="Courses.aspx">Read More</a></strong>
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <a href="Courses.aspx">
                            <asp:Image class="img-responsive img-thumbnail" ID="Image5" ImageUrl="~/images/up2.jpg" runat="server" Height="140" Width="280" /></a>
                        <h2>WSQ Follow Food & Beverage Safety and Hygiene Policies and Procedures (Blended Learning)</h2>
                        <h4>25 July 2017</h4>
                        <p>
                            This programme is a SSG and NEA accredited programme.  Participants will learn the basic of food safety and hygiene knowledge required to be a certified... <strong><a href="Courses.aspx">Read More</a></strong>
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <a href="Courses.aspx">
                            <asp:Image class="img-responsive img-thumbnail" ID="Image6" ImageUrl="~/images/up3.jpg" runat="server" Height="140" Width="280" /></a>
                        <h2>SkillsFuture for Digital Workplace (F&B & Hospitality)</h2>
                        <h4>29 Aug 2017</h4>
                        <p>
                            This programme is a SSG and NEA accredited programme.  Participants will learn the basic of food safety and hygiene knowledge required to be a certified... <strong><a href="Courses.aspx">Read More</a></strong>
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service">
                    <div class="service-content">
                        <a href="Courses.aspx">
                            <asp:Image class="img-responsive img-thumbnail" ID="Image7" ImageUrl="~/images/up4.jpg" runat="server" Height="140" Width="280" /></a>
                        <h2>WSQ Apply Food Safety Management Systems for Food Service Establishments</h2>
                        <h4>19 Sep 2017</h4>
                        <p>
                            This programme is a SSG and NEA accredited programme.  Participants will learn the basic of food safety and hygiene knowledge required to be a certified... <strong><a href="Courses.aspx">Read More</a></strong>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="container padding-bottom">
            <div class="row section-title text-center">
                <div class="col-sm-8 col-sm-offset-2">
                    <h1>
                        <span>Our</span> Facilities</h1>
                    <p>
                        ACI's Kitchens are equipped with the state-of-the-art equipment and a layout that promotes efficiency and productivity through seamless preparations and cooking of food items... <strong><a href="#">Read More</a></strong>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <a href="AboutUs.aspx">
                        <asp:Image class="img-responsive img-thumbnail" ID="Image8" ImageUrl="~/images/fac1.jpg" runat="server" Height="160" Width="400" />
                    </a>
                </div>
                <div class="col-sm-4">
                    <a href="AboutUs.aspx">
                        <asp:Image class="img-responsive img-thumbnail" ID="Image9" ImageUrl="~/images/fac2.jpg" runat="server" Height="160" Width="400" /></a>
                </div>
                <div class="col-sm-4">
                    <a href="AboutUs.aspx">
                        <asp:Image class="img-responsive img-thumbnail" ID="Image10" ImageUrl="~/images/fac3.jpg" runat="server" Height="160" Width="400" /></a>
                </div>

                <div class="col-sm-4">
                    <a href="AboutUs.aspx">
                        <asp:Image class="img-responsive img-thumbnail" ID="Image11" ImageUrl="~/images/fac4.jpg" runat="server" Height="160" Width="400" /></a>
                </div>
                <div class="col-sm-4">
                    <a href="AboutUs.aspx">
                        <asp:Image class="img-responsive img-thumbnail" ID="Image12" ImageUrl="~/images/fac5.jpg" runat="server" Height="160" Width="400" /></a>
                </div>

            </div>
        </div>
        <br />
</asp:Content>
