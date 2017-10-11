<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="B_CoursesCustomised.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.A.Courses.B_CoursesCustomised" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Landing Page -->
        <div class="intro-headerCourses">
            <!-- change this image in custom.css-->
            <div class="container">
                <div class="row">
                    <div class="intro-messagePage col-sm-12">
                        <h1>Customised Courses</h1>
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
                        <li class="active">Customised Courses</li>
                    </ul>
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <h1>Customised Courses</h1>
                    <div class="list-group">
                        <a href="#" class="list-group-item">Customised Courses</a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <h2>Other Courses</h2>
                    <div class="list-group">
                        <a href="CoursesFullQualification.aspx" class="list-group-item">Full Qualification Courses</a>
                        <a href="CoursesShortCourses.aspx" class="list-group-item">Short Courses</a>
                    </div>
                </div>
            </div>
        </div>

        <br />
</asp:Content>
