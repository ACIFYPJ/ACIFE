<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.A.CoursesFolder.Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function openEvent(id) {
            popupWin = window.location = 'CoursesDetailed.aspx?CourseID=' + id,
            'open_window' + id,
            'menubar, toolbar, location, directories, status, scrollbars, resizable, dependent'
        }
    </script>
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
                <div class="row  text-center">
                    <h2>
                        <asp:Label ID="lblfull" runat="server" Text="FULL QUALIFICATION"></asp:Label>
                    </h2>
                    <hr />
                </div>

                <div class="col-sm-12">
                    <div class="subprogramme">
                        <h3>
                            <asp:Label ID="lblcert" runat="server" Text="Certificate" ForeColor="White"></asp:Label>
                        </h3>
                    </div>

                    <asp:Repeater ID="certRPT" runat="server">
                        <HeaderTemplate>
                             <div class="panel panel-default">
                            <table class="table table-bordered table-hover">
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr onclick="openEvent('<%# DataBinder.Eval(Container.DataItem, "CourseID") %>');" onmouseover="javascript:highlight(this);" onmouseout="javascript:unhighlight(this,1);">
                                <td>
                                    <asp:Label ID="lbEventTitle" runat="server" Text='<%# Eval("CourseName") %>' />
                                </td>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                    </table> 
                            </div>
                        </FooterTemplate>
                    </asp:Repeater>

                </div>

                <div class="col-sm-12">
                    <div class="subprogramme">
                        <h3>
                            <asp:Label ID="Label1" runat="server" Text="Diploma" ForeColor="White"></asp:Label>
                        </h3>
                    </div>
                    <asp:Repeater ID="dipRPT" runat="server">
                        <HeaderTemplate>
                             <div class="panel panel-default">
                            <table class="table table-bordered table-hover">
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr onclick="openEvent('<%# DataBinder.Eval(Container.DataItem, "CourseID") %>');" onmouseover="javascript:highlight(this);" onmouseout="javascript:unhighlight(this,1);">
                                <td>
                                    <asp:Label ID="lbEventTitle" runat="server" Text='<%# Eval("CourseName") %>' />
                                </td>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                    </table> 
                            </div>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>

                <div class="col-sm-12">
                    <div class="subprogramme">
                        <h3>
                            <asp:Label ID="Label2" runat="server" Text="Specialist Diploma" ForeColor="White"></asp:Label>
                        </h3>
                    </div>
                    <asp:Repeater ID="specRPT" runat="server">
                        <HeaderTemplate>
                             <div class="panel panel-default">
                            <table class="table table-bordered table-hover">
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr onclick="openEvent('<%# DataBinder.Eval(Container.DataItem, "CourseID") %>');" onmouseover="javascript:highlight(this);" onmouseout="javascript:unhighlight(this,1);">
                                <td>
                                    <asp:Label ID="lbEventTitle" runat="server" Text='<%# Eval("CourseName") %>' />
                                </td>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                    </table> 
                            </div>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="row  text-center">
                    <h2>
                        <asp:Label ID="lblshort" runat="server" Text="SHORT COURSES"></asp:Label>
                    </h2>
                    <hr />
                </div>
                <div class="col-sm-12">
                    <div class="subprogramme">
                        <h3>
                            <asp:Label ID="Label4" runat="server" Text="Short Courses" ForeColor="White"></asp:Label>
                        </h3>
                    </div>
                    <asp:Repeater ID="shortRPT" runat="server">
                        <HeaderTemplate>
                            <div class="panel panel-default">
                            <table class="table table-bordered table-hover">
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr onclick="openEvent('<%# DataBinder.Eval(Container.DataItem, "CourseID") %>');" onmouseover="javascript:highlight(this);" onmouseout="javascript:unhighlight(this,1);">
                                <td>
                                    <asp:Label ID="lbEventTitle" runat="server" Text='<%# Eval("CourseName") %>' />
                                </td>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                    </table> 
                            </div>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="row  text-center">
                    <h2>
                        <asp:Label ID="lblcus" runat="server" Text="CUSTOMISED COURSES"></asp:Label>
                    </h2>
                    <hr />
                </div>
                <div class="col-sm-12">
                    <div class="subprogramme">
                        <h3>
                            <asp:Label ID="Label3" runat="server" Text="Customised Courses" ForeColor="White"></asp:Label>
                        </h3>
                    </div>
                    <asp:Repeater ID="custoRPT" runat="server">
                        <HeaderTemplate>
                            <div class="panel panel-default">
                            <table class="table table-bordered table-hover">
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr onclick="openEvent('<%# DataBinder.Eval(Container.DataItem, "CourseID") %>');" onmouseover="javascript:highlight(this);" onmouseout="javascript:unhighlight(this,1);">
                                <td>
                                    <asp:Label ID="lbEventTitle" runat="server" Text='<%# Eval("CourseName") %>' />
                                </td>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                    </table> 
                            </div>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>

        </div>


    </div>

    <br />
</asp:Content>
