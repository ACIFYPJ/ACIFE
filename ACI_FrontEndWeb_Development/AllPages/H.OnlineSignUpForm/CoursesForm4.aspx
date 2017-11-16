<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoursesForm4.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.H.OnlineSignUpForm.CoursesForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background: url('../../images/reception.jpg') no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            opacity: 0.9;
        }
    </style>
    <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../js/jquery.js"></script>
    <link type="text/css" rel="stylesheet" href="../../css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="../../css/custom.css" />
    <link type="text/css" rel="stylesheet" href="../../css/font-awesome.min.css" />
</head>

<body>

    <form id="form1" runat="server">
        <div class="container">
            <br />
            <br />
            <br />
            <br />
            <br />

            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="text-center">Registration Step 4 of 5</h2>
                            <h6 class="text-center">Education & Sponsorship</h6>
                            <div class="progress">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                                    aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                    60% Complete
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="col-sm-12">
                                <fieldset class="form">
                                    <div class="form-group">
                                        <label class="control-label">Highest Education:</label>
                                        <asp:DropDownList ID="ddlHighestEducationValue" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="1">No Formal Qualification & Lower Primary</asp:ListItem>
                                            <asp:ListItem Value="11">Primary PSLE</asp:ListItem>
                                            <asp:ListItem Value="20">Lower Secondary</asp:ListItem>
                                            <asp:ListItem Value="31">'N' Level or equivalent</asp:ListItem>
                                            <asp:ListItem Value="32">'O' Level or equivalent</asp:ListItem>
                                            <asp:ListItem Value="35">ITE Skills Certification (ISC)</asp:ListItem>
                                            <asp:ListItem Value="41">'A' Level or equivalent</asp:ListItem>
                                            <asp:ListItem Value="51">NITEC/Post Nitec</asp:ListItem>
                                            <asp:ListItem Value="52">Higher NITEC</asp:ListItem>
                                            <asp:ListItem Value="53">Master NITEC</asp:ListItem>
                                            <asp:ListItem Value="54">WSQ Certificate</asp:ListItem>
                                            <asp:ListItem Value="55">WSQ Higher Certificate</asp:ListItem>
                                            <asp:ListItem Value="61">Polytechnic Diploma</asp:ListItem>
                                            <asp:ListItem Value="70">Professional Qualification & Other Diploma</asp:ListItem>
                                            <asp:ListItem Value="73">WSQ Advance Certificate</asp:ListItem>
                                            <asp:ListItem Value="74">WSQ Diploma</asp:ListItem>
                                            <asp:ListItem Value="75">WSQ Specialist Diploma</asp:ListItem>
                                            <asp:ListItem Value="80">University First Degree</asp:ListItem>
                                            <asp:ListItem Value="90">University Post-graduate Diploma & Degree/Master/Doctorate</asp:ListItem>
                                            <asp:ListItem Value="92">WSQ Graduate Certificate</asp:ListItem>
                                            <asp:ListItem Value="93">WSQ Graduate Diploma</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <label class="control-label">Spoken language:</label>
                                            </div>

                                            <div class="col-lg-6 col-xs-6">
                                                <asp:Label ID="lblSenglish" runat="server" Text="English" CssClass="form-control"></asp:Label>
                                            </div>
                                            <div class="col-lg-6 col-xs-6">
                                                <asp:DropDownList ID="DDLSenglish" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0">None</asp:ListItem>
                                                    <asp:ListItem Value="1">Fair</asp:ListItem>
                                                    <asp:ListItem Value="2">Good</asp:ListItem>
                                                    <asp:ListItem Value="3">Excellent</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>

                                            <div class="col-lg-6 col-xs-6">
                                                <asp:Label ID="lblSchinese" runat="server" Text="Chinese" CssClass="form-control"></asp:Label>
                                            </div>
                                            <div class="col-lg-6 col-xs-6">
                                                <asp:DropDownList ID="DDLSchinese" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0">None</asp:ListItem>
                                                    <asp:ListItem Value="1">Fair</asp:ListItem>
                                                    <asp:ListItem Value="2">Good</asp:ListItem>
                                                    <asp:ListItem Value="3">Excellent</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>

                                            <div class="col-lg-6 col-xs-6">
                                                <asp:Label ID="lblSothers" runat="server" Text="Others" CssClass="form-control"></asp:Label>
                                            </div>
                                            <div class="col-lg-6 col-xs-6">
                                                <asp:DropDownList ID="DDLSothers" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0">None</asp:ListItem>
                                                    <asp:ListItem Value="1">Fair</asp:ListItem>
                                                    <asp:ListItem Value="2">Good</asp:ListItem>
                                                    <asp:ListItem Value="3">Excellent</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <label class="control-label">Written language:</label>
                                            </div>

                                            <div class="col-lg-6 col-xs-6">
                                                <asp:Label ID="Label1" runat="server" Text="English" CssClass="form-control"></asp:Label>
                                            </div>
                                            <div class="col-lg-6 col-xs-6">
                                                <asp:DropDownList ID="DDLWenglish" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0">None</asp:ListItem>
                                                    <asp:ListItem Value="1">Fair</asp:ListItem>
                                                    <asp:ListItem Value="2">Good</asp:ListItem>
                                                    <asp:ListItem Value="3">Excellent</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>

                                            <div class="col-lg-6 col-xs-6">
                                                <asp:Label ID="Label2" runat="server" Text="Chinese" CssClass="form-control"></asp:Label>
                                            </div>
                                            <div class="col-lg-6 col-xs-6">
                                                <asp:DropDownList ID="DDLWchinese" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0">None</asp:ListItem>
                                                    <asp:ListItem Value="1">Fair</asp:ListItem>
                                                    <asp:ListItem Value="2">Good</asp:ListItem>
                                                    <asp:ListItem Value="3">Excellent</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>

                                            <div class="col-lg-6 col-xs-6">
                                                <asp:Label ID="Label3" runat="server" Text="Others" CssClass="form-control"></asp:Label>
                                            </div>
                                            <div class="col-lg-6 col-xs-6">
                                                <asp:DropDownList ID="DDLWothers" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0">None</asp:ListItem>
                                                    <asp:ListItem Value="1">Fair</asp:ListItem>
                                                    <asp:ListItem Value="2">Good</asp:ListItem>
                                                    <asp:ListItem Value="3">Excellent</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">

                                        <div class="row">
                                            <div class="col-lg-12">
                                                <label class="control-label" >Get to know channel:</label>
                                            </div>

                                            <div class="col-sm-6">
                                                <asp:CheckBox ID="chkNewspaper" CssClass="form-check-input" Text="Newspaper" runat="server" />
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:CheckBox ID="chkFacebook" CssClass="form-check-input" Text="Facebook" runat="server" />
                                            </div>


                                            <div class="col-sm-6">
                                                <asp:CheckBox ID="chkMagazine" CssClass="form-check-input" Text="Magazine" runat="server" />
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:CheckBox ID="chkWordofMouth" CssClass="form-check-input" Text="Word of mouth" runat="server" />
                                            </div>


                                        </div>
                                        <asp:Label ID="lblchkboxerror" runat="server" Visible="false" Text="Please check a referral source " CssClass="alert-danger"></asp:Label>

                                    </div>
                                    <div class="form-group">
                                        <div class="form-group">
                                        <label class="control-label">Sponsorship:</label>
                                        <asp:DropDownList ID="DDLSponsorship" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="SELF">Self sponsored</asp:ListItem>
                                            <asp:ListItem Value="COMP">Company sponsored</asp:ListItem>
                                            
                                          </asp:DropDownList>
                                    </div>
                                    </div>



                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 text-left">
                                                <asp:Button ID="btnPrevious" CssClass="btn btn-default" runat="server" Text="Previous" OnClick="btnPrevious_Click" />
                                            </div>
                                            <div class="col-sm-6 text-right">
                                                <asp:Button ID="BtnNext" CssClass="btn btn-success" runat="server" Text="Next" OnClick="BtnNext_Click" />
                                            </div>
                                        </div>
                                    </div>


                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>

</body>
</html>


