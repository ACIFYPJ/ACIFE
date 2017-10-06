<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="B_EventDetailed.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.E.Events.B_EventDetailed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="intro-headerEvents">
            <!-- change this image in custom.css-->          
                <div class="row">
                    <div class="intro-messagePage col-sm-12">
                        <h1 class="test">Events</h1>
                    </div>
                </div>
        </div>
    <ul class="breadcrumb">
        <li><a href="#">Events</a></li>
        <li class="active">Details</li>
    </ul>
    <h1 runat="server" id="eventTitle" />
    <h3 runat="server" id="dateTitle">Event Date</h3>
    <p runat="server" id="date" />
    <h3 runat="server" id="locationTitle">Location</h3>
    <p runat="server" id="location" />
    <h3 runat="server" id="descriptionTitle">Description</h3>
    <p runat="server" id="description" />
</asp:Content>
