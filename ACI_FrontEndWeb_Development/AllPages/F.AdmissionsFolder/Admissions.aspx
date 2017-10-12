<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="Admissions.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.F.AdmissionsFolder.Admissions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Landing Page -->
        <div class="intro-headerAdmission">
            <!-- change this image in custom.css-->
            <div class="container">
                <div class="row">
                    <div class="intro-messagePage col-sm-12">
                        <h1>Admission</h1>


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
                        <li class="active">Admission</li>
                    </ul>
                    <br />
                </div>
            </div>

        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#entry" data-toggle="tab">Entry requirements</a></li>
                        <li><a href="#eligibility" data-toggle="tab">Eligibility criteria for WDA funding</a></li>
                        <li><a href="#application" data-toggle="tab">Application Process</a></li>
                        <li><a href="#equipment" data-toggle="tab">Personal equipment</a></li>
                        <li><a href="#attachments" data-toggle="tab">Industrial Attachments</a></li>
                        <li><a href="#forms" data-toggle="tab">Application Forms</a></li>

                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade active in" id="entry">
                            <br />
                            <h4>Entry requirements</h4>
                            <p>Minimum Secondary 2/GCE N/ GCE O levels/ WPLN Level 4/Equivalent qualifications
                            <br />
                            Students wish practical experience may be considered on a case by case basis depending on their merits</p>
                        </div>
                        <div class="tab-pane fade" id="eligibility">
                            <br />
                            <h4>Eligibility criteria for WDA funding</h4>
                            <p>Singaporeans and Singapore Permanent Residents are eligible for the prevailing funding subsidies. Foreign students are required to pay the full fees as published.</p>
                        </div>
                        <div class="tab-pane fade" id="application">
                            <br />
                            <h4>Application Process</h4>
                            <p>Individual applicants (self sponsored or company sponsored) are required to submit their application online at www.aci.edu.sg. Shortlisted applicants may be invited for an interview. 
                               <br />
                                Companies who wish to organise their own corporate classes may contact us at info@aci.edu.sg or 6417 3318 to discuss their requirements.</p>
                            
                        </div>
                        <div class="tab-pane fade" id="equipment">
                            <br />
                            <h4>Personal equipment</h4>
                            <p>All students are required to purchase approved safety shoes, uniform and knife sets/baking tools sets at their own cost. ACI will provide details of such equipment to the students.</p>
                            
                        </div>
                        <div class="tab-pane fade" id="attachments">
                            <br />
                            <h4>Industrial Attachments</h4>
                            <p>Selected programmes at ACI involves industrial attachments with employers. These are meant to provide our students with practical experience. ACI will endeavour to assist in the placement for the industrial attachments. Students may also arrange for their own industrial attachments with the approval of ACI.</p>
                            
                        </div>
                        <div class="tab-pane fade" id="forms">
                            <br />
                            <ul>
                                <li><a href="WSQCert.aspx">WSQ Certificate Programmes</a></li>
                                <li><a href="#">WSQ Follow Food & Beverage Safety and Hygiene Policies and Procedures</a></li>
                                <li><a href="#">WSQ Conduct Food and Beverage Hygiene Audit</a></li>
                                <li><a href="#">1 Day Short Courses</a></li>
                                <li><a href="#">3-hour Short Courses</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <br />
</asp:Content>
