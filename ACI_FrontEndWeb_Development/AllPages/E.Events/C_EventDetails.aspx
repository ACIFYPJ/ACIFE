<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="C_EventDetails.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.E.Events.C_EventDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 runat="server" id="eventTitle" />
    <h3 runat="server" id="dateTitle"/>
    <p runat="server" id="date"/>
    <h3 runat="server" id="locationTitle"/>
    <p runat="server" id="location" />
    <h3 runat="server" id ="descriptionTitle" />
    <p runat="server" id="description" />

</asp:Content>
