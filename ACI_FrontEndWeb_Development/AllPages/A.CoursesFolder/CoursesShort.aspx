<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="CoursesShort.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.A.CoursesFolder.CoursesShort" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Landing Page -->
        <div class="intro-headerCourses">
            <!-- change this image in custom.css-->
            <div class="container">
                <div class="row">
                    <div class="intro-messagePage col-sm-12">
                        <h1>Short Courses</h1>
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
                        <li class="active">Short Courses</li>
                    </ul>
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <h1>Short Courses</h1>
                    <div class="list-group">
                        <a href="#" class="list-group-item">Mentoring for Effective ELP Implementation</a>
                        <a href="#" class="list-group-item">WSQ Follow Food & Beverage Safety and Hygiene Policies and Procedures</a>
                        <a href="#" class="list-group-item">WSQ Follow Food & Beverage Safety and Hygiene Policies and Procedures (Blended Learning)</a>
                        <a href="#" class="list-group-item">WSQ Follow Food & Beverage Safety and Hygiene Policies and Procedures (Refresher)</a>
                        <a href="#" class="list-group-item">WSQ Apply Food Safety Management Systems for Food Service Establishments</a>
                        <a href="#" class="list-group-item">WSQ Conduct Food and Beverage Hygiene Audit</a>
                        <a href="#" class="list-group-item">1-Day Pastry Courses</a>
                        <a href="#" class="list-group-item">1-Day Culinary Courses</a>
                        <a href="#" class="list-group-item">3-hour Short Courses</a>
                        <a href="#" class="list-group-item">SkillsFuture for Digital Workplace (F&B & Hospitality)</a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <h2>Other Courses</h2>
                    <div class="list-group">
                        <a href="CoursesFullQualification.aspx" class="list-group-item">Full Qualification Courses</a>
                        <a href="CoursesCustomisedCourses.aspx" class="list-group-item">Customised Courses</a>
                    </div>
                </div>
            </div>
        </div>

        <br />
</asp:Content>
