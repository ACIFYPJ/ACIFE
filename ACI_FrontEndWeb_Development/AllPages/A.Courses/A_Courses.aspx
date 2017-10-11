<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="A_Courses.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.A.Courses.A_Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Landing Page -->
        <div class="intro-headerCourses">
            <!-- change this image in custom.css-->
            <div class="container">
                <div class="row">
                    <div class="intro-messagePage col-sm-12">
                        <h1>Courses</h1>
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
                        <li><a href="#">Home</a></li>
                        <li class="active">Courses</li>
                    </ul>
                    <br />
                </div>
            </div>
            
        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <a href="CoursesFullQualification.aspx">    <asp:Image class="img-responsive img-thumbnail" ID="Image2" ImageUrl="~/images/Course1.PNG" runat="server" Height="240" /> </a>                    
                </div>
                <div class="col-sm-4">
                    <a href="CoursesShortCourses.aspx">    <asp:Image class="img-responsive img-thumbnail" ID="Image1" ImageUrl="~/images/Course2.PNG" runat="server" Height="240" /> </a>                       
                </div>
                <div class="col-sm-4">
                     <a href="CoursesCustomisedCourses.aspx">  <asp:Image class="img-responsive img-thumbnail" ID="Image3" ImageUrl="~/images/Course3.PNG" runat="server" Height="240" /></a>                       
                </div>
            </div>
        </div>

        <br />
</asp:Content>
