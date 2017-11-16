<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoursesForm2.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.H.OnlineSignUpForm.CoursesForm2" %>

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
                            <h2 class="text-center">Registration Step 2 of 5</h2>
                            <h6 class="text-center">Contact details</h6>
                            <div class="progress">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                                    aria-valuemin="0" aria-valuemax="100" style="width:20%">
                                    20% Complete
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="col-sm-12">
                                <fieldset class="form">
                                    <div class="form-group">
                                        <label class="control-label">Full Name:</label>&nbsp;<asp:TextBox ID="tbFullName" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator1" runat="server"
                                            ValidationGroup="SignUpEventForm" ErrorMessage="Please enter your full name correctly" ControlToValidate="tbFullname" ValidationExpression="^[a-zA-Z ]{4,60}$" CssClass="alert-danger"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbFullname"
                                            ErrorMessage="Please enter your full name" ToolTip="Please enter your full name" ValidationGroup="SignUpEventForm"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label">Handphone:</label>
                                        <asp:TextBox ID="tbhandphone" MaxLength="8" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                            ValidationGroup="SignUpEventForm" ErrorMessage="Please enter a valid phone number" Display="Dynamic" ControlToValidate="tbhandphone" ValidationExpression="^[+0-9 ]{8,8}$" CssClass="alert-danger"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbhandphone"
                                            ErrorMessage="Please enter your Handphone" ToolTip="Please enter your Handphone" ValidationGroup="SignUpEventForm"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label">Email:</label>
                                        <asp:TextBox runat="server" ID="tbEmail" CssClass="form-control" TextMode="Email" />
                                        <asp:RegularExpressionValidator CssClass="alert-danger" ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ControlToValidate="tbEmail"
                                            ErrorMessage="Not a Valid Email Address" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                            ValidationGroup="SignUpEventForm"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="EmailRequired" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbEmail"
                                            ErrorMessage="Please enter your E-mail" ToolTip="Please enter your E-mail" ValidationGroup="SignUpEventForm"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Address:</label>
                                        <asp:TextBox runat="server" ID="tbAddress" CssClass="form-control" TextMode="MultiLine" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbAddress"
                                            ErrorMessage="Please enter your address" ToolTip="Please enter your address" ValidationGroup="SignUpEventForm"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Postal Code:</label>
                                        <asp:TextBox runat="server" ID="tbPostalCode" CssClass="form-control" TextMode="Number" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbPostalCode"
                                            ErrorMessage="Please enter your postal code" ToolTip="Please enter your postal code" ValidationGroup="SignUpEventForm"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                        <div class="form-group">
                                            <div class="row">
                                            <div class="col-sm-6 text-left">
                                                <asp:Button ID="btnPrevious" CssClass="btn btn-default" runat="server" Text="Previous" OnClick="btnPrevious_Click" />
                                            </div>
                                            <div class="col-sm-6 text-right">
                                                <asp:Button ID="BtnNext" CssClass="btn btn-success" ValidationGroup="SignUpEventForm" runat="server" Text="Next" OnClick="BtnNext_Click" />
                                            </div></div>
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

