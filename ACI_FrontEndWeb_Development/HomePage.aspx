<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ACI_FrontEndWeb_Development.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div class="row">

            <div class="col-sm-12">



                <div id="myCarousel" class="carousel slide" data-ride="carousel">

                    <ol class="carousel-indicators">
                    </ol>

                    <div class="carousel-inner" role="listbox">
                        <asp:Repeater runat="server" ID="caroHeadrpt">
                            <ItemTemplate>
                                <div class="item active">
                                    <asp:Image runat="server" ID="img" ImageUrl='<%# "~/images/"+ Eval("FileName") %>' />
                                    <div class="carousel-caption">
                                        <h2>Welcome to ACI!</h2>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                        <asp:Repeater runat="server" ID="carorpt">
                            <ItemTemplate>
                                <div class="item">
                                    <asp:Image runat="server" ID="img" ImageUrl='<%# "~/images/"+ Eval("FileName") %>' />
                                    <div class="carousel-caption">
                                        <h2>Welcome to ACI!</h2>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>


                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">Up Coming Events</div>
                    <div class="panel-body">
                        <asp:Repeater runat="server" ID="EventFeaturedRPT">
                            <ItemTemplate>
                                <div class="row ">                                  
                                    <div class="col-lg-12 service">
                                        <div class="service-content">
                                            <h4><%#Eval("EventTitle")%> </h4>
                                            <h5><%# Eval("EventStart") %></h5>
                                            <p>
                                              <%# Eval("Description").ToString().PadRight(140).Substring(0,140).TrimEnd() + "..." %>
                                            </p>
                                            <strong><a href="/AllPages/E.EventsFolder/EventsDetailed.aspx?EventID=<%# Eval("EventID") %>">Read More</a></strong>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>

           <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">Up Coming Courses</div>
                    <div class="panel-body">
                        <asp:Repeater runat="server" ID="CoursesFeaturedRPT">
                            <ItemTemplate>
                                <div class="row ">                                  
                                    <div class="col-lg-12 service">
                                        <div class="service-content">
                                            <h4><%#Eval("CourseName")%> </h4>
                                            <h5><%# Eval("CourseCode") %></h5>
                                            <p>
                                              <%# Eval("Overview").ToString().PadRight(140).Substring(0,140).TrimEnd() + "..." %>
                                            </p>
                                            <strong><a href="/AllPages/A.CoursesFolder/CoursesDetailed.aspx?CourseID=<%# Eval("CourseID") %>">Read More</a></strong>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
