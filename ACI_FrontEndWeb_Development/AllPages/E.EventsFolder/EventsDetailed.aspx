<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="EventsDetailed.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.E.EventsFolder.EventsDetailed" %>
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
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <div id="eventimg" runat="server">
            <asp:Image ID="imgResult" Width="100%" Height="100%" runat="server" />
    </div>
    <h1 runat="server" id="eventTitle" />
    <h3 runat="server" id="dateTitle">Event Date</h3>
    <p runat="server" id="date" />
    <h3 runat="server" id="locationTitle">Location</h3>
    <p runat="server" id="location" />
    <h3 runat="server" id="descriptionTitle">Description</h3>
    <p runat="server" id="description" />
    <asp:Button ID="signup" runat="server" Text="Sign up" OnClick="signup_Click" />
</asp:Content>
