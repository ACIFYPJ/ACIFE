<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="MediaPage.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.B.MediaFolder.MediaPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Landing Page -->
        <div class="intro-headerMedia">
            <!-- change this image in custom.css-->
            <div class="container">
                <div class="row">
                    <div class="intro-messagePage col-sm-12">
                        <h1>Media</h1>


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
                        <li class="active">Media</li>
                    </ul>
                    <br />
                </div>
            </div>

        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#photo" data-toggle="tab">Photo Gallery</a></li>
                        <li><a href="#video" data-toggle="tab">Videos</a></li>
                        <li><a href="#press" data-toggle="tab">Press Releases</a></li>

                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade active in" id="photo">
                            <br />
                            <div class="row text-center">

                                <div class="col-sm-2 col-md-2">
                                    <asp:ImageButton ID="ImageButton1" Width="150px" Height="150px" ImageUrl="~/images/photogallery1.jpg" runat="server" />
                                </div>
                                <div class="col-sm-4 col-md-4">
                                    <p>08 July 2017</p>
                                    <h4>Culinary Star Quest Competition (AM Session)</h4>
                                </div>


                                <div class="col-sm-2 col-md-2">
                                   <asp:ImageButton ID="ImageButton2" Width="150px" Height="150px" ImageUrl="~/images/photogallery2.jpg" runat="server" />
                                </div>
                                <div class="col-sm-4 col-md-4">
                                    <p>08 July 2017</p>
                                    <h4>Culinary Star Quest Competition (PM Session)</h4>

                                </div>

                            </div>
                        </div>
                        <div class="tab-pane fade" id="video">
                            <h5>ACI Corporate Video</h5>
                            <iframe src="https://www.youtube.com/embed/sM7TBBfOTQY" frameborder="0" allowfullscreen></iframe>
                            <br />
                            <h5>Food Services Sectoral Manpower Plan </h5>
                            <iframe src="https://www.youtube.com/embed/Iv0Gy6bmjwU" frameborder="0" allowfullscreen></iframe>
                            <br />
                            <h5>NYP’s ACI signs MOU with Indian Restaurants Association of Singapore (iRAS) - 30 Oct 2015</h5>
                            <iframe src="https://www.youtube.com/embed/zgVwc2ldPvY" frameborder="0" allowfullscreen></iframe>
                            <iframe src="https://www.youtube.com/embed/PFRExiXnSKU" frameborder="0" allowfullscreen></iframe>
                            <br />
                            <h5>WDA Team Building (17 Feb 2015) - Swiss Roll making with CNY deco</h5>
                            <iframe src="https://www.youtube.com/embed/auLi30qYGEo" frameborder="0" allowfullscreen></iframe>
                            <iframe src="https://www.youtube.com/embed/fCxQCHGBR-Y" frameborder="0" allowfullscreen></iframe>
                        </div>
                        <div class="tab-pane fade" id="press">
                            <br />
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>2016</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>16 Jun</td>
                                        <td><p><a href="http://www.straitstimes.com/singapore/manpower/culinary-institute-aims-to-spice-up-fb-industry">Singapore - The Straits Times <br />Culinary institute aims to spice up F&B industry</a></p>
                                            <p><a href="#">Singapore - AsiaOne <br />New cooking school offers taste of F&B trade</a></p>
                                            <p><a href="#">Singapore - MyPaper<br />New cooking school offers taste of F&B trade</a></p>
                                            <p><a href="#">Singapore - OMY<br />New cooking school offers taste of F&B trade</a></p>
                                            <p><a href="#">Singapore - SoShiok.com<br />New cooking school offers taste of F&B trade</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>2015</th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>31 Oct</td>
                                        <td>
                                            <p><a href="#">Singapore - The Business Times <br />Local Indian restaurants tie up to boost productivity</a></p>
                                            <p><a href="#">Singapore - Lianhe Zaobao<br />Two central kitchen for 22 Indian Restaurants </a></p>
                                            <p><a href="#">Singapore - Berita Harian<br />Tharman: The workforce is expected to grow slowly </a></p>
                                        </td>
                                        </tr>
                                    <tr>
                                        <td>10 Oct</td>
                                        <td>
                                            <p><a href="#">	Singapore - Singapore Workforce Development Agency (WDA)<br />Always ready for the next challenge</a></p>
                                        </td>
                                        </tr>
                                        <tr>
                                        <td>27 Aug</td>
                                        <td>
                                            <p><a href="#">Singapore - Today ONLINE<br />Local chefs get a boost</a></p>
                                            <p><a href="#">Singapore - Today PAPER<br />Local chefs get a boost</a></p>
                                            <p><a href="#">Singapore - Lianhe Zaobao<br />NYP'S new culinary institute to provide training in Asian cuisine courses</a></p>
                                        </td>
                                            </tr>
                                        <tr>
                                        <td>02 Jun</td>
                                        <td>
                                            <p><a href="#">Singapore - Channel News Asia<br />Earn and Learn: At least 10 programmes to be launched over next 9 months</a></p>
                                        </td>
                                            </tr>
                                    
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <br />
</asp:Content>
