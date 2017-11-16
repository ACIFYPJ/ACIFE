<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="EventsForm.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.E.EventsFolder.EventsForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h2 class="text-center">Sign up now!</h2>
        <div class="col-sm-2"></div>
        <div class="col-sm-8">

            <fieldset class="form">
                <div class="form-group">
                    <label class="control-label" for="Name">Full Name:</label>
                    <asp:TextBox ID="tbFullName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator1" runat="server"
                        ValidationGroup="SignUpEventForm" ErrorMessage="Please enter your full name correctly" ControlToValidate="tbFullname" ValidationExpression="^[a-zA-Z ]{4,60}$" CssClass="alert-danger"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbFullname"
                        ErrorMessage="Full Name is required" ToolTip="Full Name is required." ValidationGroup="SignUpEventForm"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="NRIC">NRIC/FIN:</label>
                    <asp:TextBox ID="tbNRIC" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                        ValidationGroup="SignUpEventForm" ErrorMessage="Please enter a valid NRIC or FIN" Display="Dynamic" ControlToValidate="tbNRIC" ValidationExpression="^[a-zA-Z0-9]{9,1000}$" CssClass="alert-danger"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbNRIC"
                        ErrorMessage="NRIC is required" ToolTip="NRIC is required." ValidationGroup="SignUpEventForm"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="Name">Date Of Birth:</label>
                    <div class="row">
                        <div class="col-sm-3">
                            <asp:DropDownList class="form-control" ID="ddlday" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col-sm-6 ">
                            <asp:DropDownList class="form-control" ID="ddlmonth" runat="server">
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>Feburary</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>

                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>

                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>

                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-3">
                            <asp:DropDownList class="form-control" ID="ddlyear" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                     <label class="control-label" for="Nationality">Nationality:</label>
                    <asp:DropDownList class="form-control" ID="ddlnationality" runat="server">
                        <asp:ListItem>Singaporean</asp:ListItem>
                        <asp:ListItem>Singapore PR</asp:ListItem>
                        <asp:ListItem>Foreigner</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label class="control-label" for="Handphone">Handphone:</label>
                    <asp:TextBox ID="tbhandphone" MaxLength="8" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                        ValidationGroup="SignUpEventForm" ErrorMessage="Please enter a valid phone number" Display="Dynamic" ControlToValidate="tbhandphone" ValidationExpression="^[+0-9 ]{8,8}$" CssClass="alert-danger"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbhandphone"
                        ErrorMessage="Handphone is required" ToolTip="Handphone is required." ValidationGroup="SignUpEventForm"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label class="control-label" for="Email">Email:</label>
                    <asp:TextBox runat="server" ID="tbEmail" ValidationGroup="CreateUserWizard1" CssClass="form-control" TextMode="Email" />
                    <asp:RegularExpressionValidator CssClass="alert-danger" ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ControlToValidate="tbEmail"
                        ErrorMessage="Not a Valid Email Address" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ValidationGroup="SignUpEventForm"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="EmailRequired" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbEmail"
                        ErrorMessage="E-mail is required" ToolTip="E-mail is required." ValidationGroup="SignUpEventForm"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label class="control-label" for="HighestEducation">Highest Education:</label>
                    <asp:DropDownList class="form-control" ID="ddlhighesteducation" runat="server">
                        <asp:ListItem>No formal education</asp:ListItem>
                        <asp:ListItem>PSLE</asp:ListItem>
                        <asp:ListItem>GCE "N" Level</asp:ListItem>
                        <asp:ListItem>GCE "O" Level</asp:ListItem>
                        <asp:ListItem>Nitec</asp:ListItem>
                        <asp:ListItem>Higher Nitec</asp:ListItem>
                        <asp:ListItem>Master Nitec</asp:ListItem>
                        <asp:ListItem>GCE "A" Level</asp:ListItem>
                        <asp:ListItem>Diploma</asp:ListItem>
                        <asp:ListItem>Specialist Diploma</asp:ListItem>
                        <asp:ListItem>Bachelor's Degree</asp:ListItem>
                        <asp:ListItem>Master's degree</asp:ListItem>
                        <asp:ListItem>Doctorate</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label class="control-label" for="CurrentEmployment">Current Employment:</label>
                    <asp:DropDownList class="form-control" ID="ddlcurrentemployment" runat="server">
                        <asp:ListItem>Employed in F&B</asp:ListItem>
                        <asp:ListItem>Employed in Non-F&B</asp:ListItem>
                        <asp:ListItem>Self-Employed in F&B</asp:ListItem>
                        <asp:ListItem>Self-Employed in Non-F&B</asp:ListItem>
                        <asp:ListItem>Unemployed</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label class="control-label" for="ReferralSource">Where do you get to know us?</label>
                    <div class="row">
                        <div class="col-sm-4">
                            <asp:CheckBox ID="chkNewspaper" CssClass="form-check-input" ValidationGroup="ReferralSource" Text="Newspaper" runat="server" />
                        </div>
                        <div class="col-sm-4">
                            <asp:CheckBox ID="chkFacebook" CssClass="form-check-input" ValidationGroup="ReferralSource" Text="Facebook" runat="server" />
                        </div>
                        <div class="col-sm-4">
                            <asp:CheckBox ID="chkEvents" CssClass="form-check-input" ValidationGroup="ReferralSource" Text="Events/Roadshows" runat="server" />
                        </div>

                        <div class="col-sm-4">
                            <asp:CheckBox ID="chkMagazine" CssClass="form-check-input" ValidationGroup="ReferralSource" Text="Magazine" runat="server" />
                        </div>
                        <div class="col-sm-4">
                            <asp:CheckBox ID="chkWordOfMouth" CssClass="form-check-input" ValidationGroup="ReferralSource" Text="Word Of Mouth" runat="server" />
                        </div>
                        <div class="col-sm-4">
                            <asp:CheckBox ID="chkOthers" CssClass="form-check-input" ValidationGroup="ReferralSource" Text="Others" runat="server" OnCheckedChanged="chkOthers_CheckedChanged" AutoPostBack="True" />
                        </div>
                        
                             </div>
                     <asp:Label ID="lblchkboxerror" runat="server" Visible="false" Text="Please check a referral source " CssClass="alert-danger"></asp:Label>
                  
                </div>
                <div class="form-group">
                    <asp:Label ID="lblOthers" Visible="false" class="control-label" runat="server" Text="Others:"></asp:Label>
                    <asp:TextBox ID="tbOthers" CssClass="form-control" Visible="false" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator Enabled="false" ID="RequiredFieldValidator4" Display="Dynamic" CssClass="alert-danger" runat="server" ControlToValidate="tbOthers"
                        ErrorMessage="Enter other referral source" ToolTip="Enter other referral source" ValidationGroup="SignUpEventForm"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="SignUpReason">Reason for signing up? (Optional) </label>
                  
                        <asp:TextBox ID="tbreason" CssClass="form-control" runat="server" MaxLength="500" Rows="10" TextMode="MultiLine"></asp:TextBox>             
                </div>
                <div class="form-group">               
                        <asp:CheckBox ID="chkTermsAndConditions" Text="By signing up you agree to our terms and conditions. Read about our T&C " runat="server" /><a href="#"> here</a>
                        <asp:Label ID="lblTermsAndConditions" runat="server" Visible="false" Text="Please agree to our T&Cs" CssClass="alert-danger"></asp:Label>
                </div>
                <div class="form-group">
                    <div class=" text-right">
                        <asp:Button ID="BtnSignUpEvent" ValidationGroup="SignUpEventForm" CssClass="btn btn-success" runat="server" Text="Sign Up Now!" OnClick="BtnSignUpEvent_Click" />
                    </div>
                </div>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </fieldset>
        </div>
    </div>


    <script type="text/javascript">
        function ShowPopup() {
            $("#btnShowPopup").click();
        }
    </script>
    <button type="button" style="display: none;" id="btnShowPopup" class="btn btn-primary btn-lg"
        data-toggle="modal" data-target="#myModal">
        Launch demo modal
    </button>
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Registration Done Successfully</h4>
                </div>
                <div class="modal-body">
                    <asp:Label ID="lblMessage" runat="server" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        Close</button>
                    <a href="../../HomePage.aspx">
                        <button type="button" class="btn btn-success">
                            Home</button></a>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</asp:Content>
