<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="CoursesFull.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.A.CoursesFolder.CoursesFull" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Landing Page -->
        <div class="intro-headerCourses">
            <!-- change this image in custom.css-->
            <div class="container">
                <div class="row">
                    <div class="intro-messagePage col-sm-12">
                        <h1>Full Qualification Courses</h1>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <ul class="breadcrumb">
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a href="Courses.aspx">Courses</a></li>
                        <li class="active">Full Qualification Courses</li>
                    </ul>
                    <br />
                </div>
            </div>

        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#Full" data-toggle="tab" aria-expanded="true">Certificate</a></li>
                        <li><a href="#Short" data-toggle="tab" aria-expanded="true">Diploma</a></li>
                        <li class=""><a href="#Cust" data-toggle="tab" aria-expanded="false">Specialist Diploma</a></li>
                    </ul>
                </div>
                <div id="myTabContent" class="tab-content">
                    <!-- First tab-->
                    <div class="tab-pane fade active in" id="Full">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <h1>Certificate</h1>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="list-group">

                                        <a href="#" class="list-group-item">WSQ Certificate in Culinary Arts (Asian Cuisine)</a>
                                        <a href="#" class="list-group-item">WSQ Higher Certificate in Culinary Arts (Asian Cuisine)</a>
                                        <a href="#" class="list-group-item">WSQ Advanced Certificate in Culinary Arts (Asian Cuisine)</a>
                                        <a href="#" class="list-group-item">WSQ Certificate in Asian Pastry and Bakery</a>
                                        <a href="#" class="list-group-item">WSQ Higher Certificate in Asian Pastry and Bakery</a>
                                        <a href="#" class="list-group-item">WSQ Advanced Certificate in Asian Pastry and Bakery</a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- second tab-->
                    <div class="tab-pane fade" id="Short">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <h1>Diploma</h1>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="list-group">

                                        <a href="#" class="list-group-item">WSQ Diploma in Culinary Arts (Asian Cuisine)</a>
                                        <a href="#" class="list-group-item">WSQ Diploma in Culinary Arts & WSQ Diploma in F&B Management (SkillsFuture Earn & Learn Programme)</a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Third tab-->
                    <div class="tab-pane fade" id="Cust">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <h1>Specliast Diploma</h1>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="list-group">

                                        <a href="#" class="list-group-item">WSQ Specialist Diploma in Culinary Management (SkillsFuture Earn & Learn Programme)</a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <h2>Other Courses</h2>
                    <div class="list-group">
                        <a href="CoursesShortCourses.aspx" class="list-group-item">Short Courses</a>
                        <a href="CoursesCustomisedCourses.aspx" class="list-group-item">Customised Courses</a>
                    </div>
                </div>
            </div>
        </div>

        <br />
</asp:Content>
