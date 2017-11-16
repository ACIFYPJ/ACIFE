<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoursesForm5.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.H.OnlineSignUpForm.CoursesForm5" %>

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
                            <h2 class="text-center">Registration Step 5 of 5</h2>
                            <h6 class="text-center">Employment Details</h6>
                            <div class="progress">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                                    aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                    80%
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="col-sm-12">
                                <fieldset class="form">
                                    <div class="form-group">
                                        <label class="control-label">Company:</label>
                                        <asp:TextBox runat="server" ID="tbcompany" CssClass="form-control"  />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbcompany"
                                            ErrorMessage="Please enter your company name" ToolTip="Please enter your company name" ValidationGroup="SignUpForm"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Employment Status:</label>
                                         <asp:DropDownList ID="ddlEmploymentStatus" CssClass="form-control" runat="server">
                                              
                                                    <asp:ListItem Value="E">Employed in F&B</asp:ListItem>
                                                    <asp:ListItem Value="EN">Employed in Non-F&B</asp:ListItem>
                                                    <asp:ListItem Value="S">Self-Employed in F&B</asp:ListItem>
                                                    <asp:ListItem Value="SN">Self-Employed in Non-F&B</asp:ListItem>
                                                </asp:DropDownList>
                                       </div>
                                     <div class="form-group">
                                        <label class="control-label">Position:</label>
                                        <asp:TextBox runat="server" ID="tbPosition" CssClass="form-control"  />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbPosition"
                                            ErrorMessage="Please enter your position in the company" ToolTip="Please enter your position in the company" ValidationGroup="SignUpForm"></asp:RequiredFieldValidator>
                                    </div>
                                      <div class="form-group">
                                        <label class="control-label">Salary:</label>
                                        <asp:TextBox runat="server" ID="tbSalary" CssClass="form-control" placeholder="Monthly gross salary in SGD"  TextMode="Number" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbSalary"
                                         ErrorMessage="Please enter your monthly gross salary" ToolTip="Please enter your monthly gross salary" ValidationGroup="SignUpForm"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label">Start Date:</label>
                                        <asp:TextBox runat="server" ID="tbStartDate" CssClass="form-control" TextMode="Date" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbStartDate"
                                         ErrorMessage="Please enter the start date" ToolTip="Please enter the start date" ValidationGroup="SignUpForm"></asp:RequiredFieldValidator>
                                    </div>
                                     <div class="form-group">
                                        <label class="control-label">End Date:</label>
                                        <asp:TextBox runat="server" ID="tbEndDate" CssClass="form-control" TextMode="Date" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbEndDate"
                                         ErrorMessage="Please enter the end date" ToolTip="Please enter the end date" ValidationGroup="SignUpForm"></asp:RequiredFieldValidator>
                                         <asp:Label ID="lblendatevalid" runat="server" CssClass="alert-danger" Text="End date must be earlier than start date" Visible="False"></asp:Label>
                                    </div>

                                     <div class="form-group">
                                         <div class="row">

                                         <div class="col-lg-12">
                                             <label class="control-label">Are you currently employed in this company?</label>
                                        
                                         </div>
                                             <div class="col-lg-12">
                                             <asp:RadioButton ID="rdoYes" Checked="true" GroupName="employment"  runat="server" text="Yes"/>
                                         <asp:RadioButton ID="rdoNo" GroupName="employment"  runat="server" text="No"/>
                                        
                                         </div>
                                             </div>
                                     </div> 
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 text-left">
                                                <asp:Button ID="btnPrevious" CssClass="btn btn-default" runat="server" Text="Previous" OnClick="btnPrevious_Click" />
                                            </div>
                                            <div class="col-sm-6 text-right">
                                                <asp:Button ID="BtnSubmit" CssClass="btn btn-success" runat="server" ValidationGroup="SignUpForm" Text="Submit" OnClick="BtnSubmit_Click" />
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

