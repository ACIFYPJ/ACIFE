<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="CoursesDetailed.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.A.CoursesFolder.CoursesDetailed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <script>
            function openEvent(id) {
                popupWin = window.location = 'CoursesDetailed.aspx?CourseID=' + id,
                'open_window' + id,
                'menubar, toolbar, location, directories, status, scrollbars, resizable, dependent'
            }
        </script>
        <div class="intro-headerMedia">
            <!-- change this image in custom.css-->
            <div class="container">
                <div class="row">
                    <div class="intro-messagePage col-sm-12">
                        <h1></h1>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4">
                <div class="row  text-center">
                    <h2 style="color: red">
                        <asp:Label ID="lblfull" runat="server" Text="Full Qualification"></asp:Label>
                    </h2>
                    <hr class="style-three" />
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
                    </table> </div>
                        </FooterTemplate>
                    </asp:Repeater>
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


                <div class="row  text-center">
                    <h2 style="color: red">
                        <asp:Label ID="lblshort" runat="server" Text="Short Courses"></asp:Label>
                    </h2>
                    <hr class="style-three" />
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
                    </table> </div>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
                <div class="row text-center">
                    <h2 style="color: red">
                        <asp:Label ID="lblcus" runat="server" Text="Customised Courses"></asp:Label>
                    </h2>
                    <hr class="style-three" />
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
                    </table> </div>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>

            <div class="col-sm-8">
                <div class="row">
                    <div class="col-sm-12">
                        <h3>
                            <asp:Label ID="lblTitle" runat="server" Text="" Font-Bold="True" ForeColor="#000099"></asp:Label>
                        </h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h4>
                            <asp:Label ID="lblOverviewT" runat="server" Text="Course Overview" Font-Bold="True"></asp:Label>
                        </h4>
                        <asp:Label ID="lblOverview" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h4>
                            <asp:Label ID="lblTargetAudienceT" runat="server" Text="Target Audience" Font-Bold="True"></asp:Label>
                        </h4>
                        <asp:Label ID="lblTargetAudience" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h4>
                            <asp:Label ID="lblCoreT" runat="server" Text="Core Modules" Font-Bold="True"></asp:Label>
                        </h4>
                        <asp:Label ID="lblCore" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h4>
                            <asp:Label ID="lblElectiveT" runat="server" Text="Elective Module" Font-Bold="True"></asp:Label>
                        </h4>
                        <asp:Label ID="lblElective" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h4>
                            <asp:Label ID="lblCourseFeeT" runat="server" Text="Course Fees" Font-Bold="True"></asp:Label>
                        </h4>
                        <asp:Label ID="lblCourseFee" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h4>
                            <asp:Label ID="lblRefundT" runat="server" Text="Refund Policy" Font-Bold="True"></asp:Label>
                        </h4>
                        <asp:Label ID="lblRefund" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h4>
                            <asp:Label ID="lblentryreqT" runat="server" Text="Entry Requirements" Font-Bold="True"></asp:Label>
                        </h4>
                        <asp:Label ID="lblentryreq" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h4>
                            <asp:Label ID="lblotherinfoT" runat="server" Text="Other Info" Font-Bold="True"></asp:Label>
                        </h4>
                        <asp:Label ID="lblotherinfo" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h3>
                            <asp:Label ID="lblclassesT" runat="server" Text="Course Schedule" Font-Bold="True"></asp:Label>
                        </h3>
                        <asp:Repeater ID="ClassesRPT" runat="server">
                            <HeaderTemplate>
                                <div class="panel panel-default">
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th scope="col" style="width: 200px">Start Date
                                                </th>
                                                <th scope="col" style="width: 200px">End Date
                                                </th>
                                                <th scope="col" style="width: 200px">Time
                                                </th>
                                                <th scope="col" style="width: 200px">Language</th>
                                                <th scope="col" style="width: 200px">Remarks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                <td>
                                    <asp:Label ID="lbStartDate" runat="server" Text='<%# Eval("StartDate") %>'  />
                                </td>
                                <td>
                                    <asp:Label ID="lbEndDate" runat="server" Text='<%# Eval("EndDate") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lbTime" runat="server" Text='<%# Eval("ClassStartTime") + " - "+ Eval("ClassEndTime") %> ' />
                                </td>
                                <td>
                                    <asp:Label ID="lbLanguage" runat="server" Text='<%# Eval("Language") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lbRemarks" runat="server" Text='<%# Eval("Remarks") %>' />
                                </td>
                                </tr>
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
    </div>
</asp:Content>
