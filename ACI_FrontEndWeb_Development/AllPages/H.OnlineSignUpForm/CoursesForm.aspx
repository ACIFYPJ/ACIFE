<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoursesForm.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.H.OnlineSignUpForm.CoursesForm" %>

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
                            <h2 class="text-center">Registration Step 1 of 5</h2>
                            <h6 class="text-center">Choose a course</h6>
                            <div class="progress">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                                    aria-valuemin="0" aria-valuemax="100" style="width:5%">
                                    0%
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="col-sm-12">
                                <fieldset class="form">
                                    <div class="form-group">
                                        <label class="control-label">Course:</label>
                                        <asp:DropDownList ID="DDLProgram" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDLProgram_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Course period:</label>
                                        <asp:DropDownList ID="DDLClass" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <div class=" text-right">
                                            <asp:Button ID="BtnNext" CssClass="btn btn-default" runat="server" Text="Next" OnClick="BtnNext_Click" />
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
