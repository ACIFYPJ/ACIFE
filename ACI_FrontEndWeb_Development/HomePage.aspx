<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ACI_FrontEndWeb_Development.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row">

                <div class="col-sm-12">


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
                                <img src="images/Caro1.jpg" />
                                <div class="carousel-caption">
                                    <h2>Home @ ACI!</h2>
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/Caro2.JPG" />
                                <div class="carousel-caption">
                                    <h2>Join Us!</h2>
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/Caro3.jpg" />
                                <div class="carousel-caption">
                                    <h2>Welcome to asian culinary institute singapore!</h2>
                                </div>
                            </div>

                        </div>
                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                                data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><span class="sr-only">Next</span> </a>



                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">Up Coming Courses</div>
                        <div class="panel-body">
                            <div class="row ">
                                <div class="col-sm-4 service">
                                    <div class="service-content">
                                        <a href="EventDetails.aspx">
                                            <asp:Image class="img-responsive img-thumbnail" ID="Imagex" ImageUrl="~/images/event1.jpg" runat="server" Height="140" Width="630" />
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-8 service">
                                    <div class="service-content">
                                        <h4>September One Day Pastry Course</h4>
                                        <h5>15 Sep 2017</h5>
                                        <p>
                                            Have you always wanted to try your hand at pastry making? This course provides you with the opportunity for a hands-on session with our pastry chef to learn... <strong><a href="EventDetails.aspx">Read More</a></strong>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="row ">
                                <div class="col-sm-4 service">
                                    <div class="service-content">
                                        <a href="EventDetails.aspx">
                                            <asp:Image class="img-responsive img-thumbnail" ID="Imagey" ImageUrl="~/images/event2.jpg" runat="server" Height="140" Width="630" /></a>
                                    </div>
                                </div>
                                <div class="col-sm-8 service">
                                    <div class="service-content">
                                        <h4>ACI Open House</h4>
                                        <h5>15 Sep 2017</h5>
                                        <p>
                                            ACI will be having an Open House on 3 Dec 2016, Saturday. Join us for the exciting activities happening on that day. Hurry and grab your slots for the sessi... <strong><a href="EventDetails.aspx">Read More</a></strong>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4 service">
                                    <div class="service-content">
                                        <a href="EventDetails.aspx">
                                            <asp:Image class="img-responsive img-thumbnail" ID="Imagez" ImageUrl="~/images/event3.jpg" runat="server" Height="140" Width="630" /></a>
                                    </div>
                                </div>
                                <div class="col-sm-8 service">
                                    <div class="service-content">
                                        <h4>Culinary Star Quest 2017</h4>
                                        <h5>15 Sep 2017</h5>
                                        <p>
                                            Culinary Star Quest competition is to attract aspiring talent who have the passion in culinary and are keen to join the F&B Industry. This is a platform to c... <strong><a href="EventDetails.aspx">Read More</a></strong>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">Up Coming Events</div>
                        <div class="panel-body">
                            <div class="row ">
                                <div class="col-sm-4 service">
                                    <div class="service-content">
                                        <a href="Courses.aspx">
                                            <asp:Image class="img-responsive img-thumbnail" ID="Image4" ImageUrl="~/images/up1.jpg" runat="server" Height="140" Width="280" /></a>
                                    </div>
                                </div>
                                <div class="col-sm-8 service">
                                    <div class="service-content">
                                        <h4>WSQ Follow Food & Beverage Safety and Hygiene Policies and Procedures</h4>
                                        <h5>10 Jun 2017</h5>
                                        <p>
                                            This programme is a SSG and NEA accredited programme.  Participants will learn the basic of food safety... <strong><a href="Courses.aspx">Read More</a></strong>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-sm-4 service">
                                    <div class="service-content">
                                        <a href="Courses.aspx">
                                            <asp:Image class="img-responsive img-thumbnail" ID="Image5" ImageUrl="~/images/up2.jpg" runat="server" Height="140" Width="280" /></a>
                                    </div>
                                </div>
                                <div class="col-sm-8 service">
                                    <div class="service-content">
                                        <h4>WSQ Follow Food & Beverage Safety and Hygiene Policies and Procedures</h4>
                                        <h5>25 July 2017</h5>
                                        <p>
                                            This programme is a SSG and NEA accredited programme.  Participants will learn the basic of food safety... <strong><a href="Courses.aspx">Read More</a></strong>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4 service">
                                    <div class="service-content">
                                        <a href="Courses.aspx">
                                            <asp:Image class="img-responsive img-thumbnail" ID="Image6" ImageUrl="~/images/up3.jpg" runat="server" Height="140" Width="280" /></a>
                                    </div>
                                </div>
                                <div class="col-sm-8 service">
                                    <div class="service-content">
                                        <h4>SkillsFuture for Digital Workplace (F&B & Hospitality)</h4>
                                        <h5>29 Aug 2017</h5>
                                        <p>
                                            This programme is a SSG and NEA accredited programme.  Participants will learn the basic of food safety... <strong><a href="Courses.aspx">Read More</a></strong>
                                        </p>
                                    </div>
                                </div>
                            </div>           
                        </div>
                    </div>

                </div>
            </div>
          
            <br />
</asp:Content>
