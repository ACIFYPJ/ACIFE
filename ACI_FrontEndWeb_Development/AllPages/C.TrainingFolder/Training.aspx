<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="Training.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.C.TrainingFolder.Training" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="intro-headerTraining">
            <!-- change this image in custom.css-->
            <div class="container">
                <div class="row">
                    <div class="intro-messagePage col-sm-12">
                        <h1>Training</h1>


                    </div>
                </div>
            </div>
        </div>
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
                        <li class="active"><a href="#pathway" data-toggle="tab">Assessment-Only Pathway</a></li>
                       

                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade active in" id="pathway">
                            <h4>Certificate in Culinary Arts (Asian Cuisine) - Assessment Only Pathway</h4>
                            <div>
                                <ul>
                                    <li>Participants must have at least two/ three years working experience in the kitchen.  </li>
                                    <li>Participants must provide their CV with details on their culinary skills experience.</li>
                                </ul>
                                <br />
                                <p>Contact us 64173318 or info@aci.edu.sg.</p>
                            </div>
                        </div>
                        

                    </div>
                </div>
            </div>
        </div>
</asp:Content>
