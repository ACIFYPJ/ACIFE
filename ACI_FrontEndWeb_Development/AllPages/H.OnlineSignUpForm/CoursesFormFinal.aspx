<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoursesFormFinal.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.H.OnlineSignUpForm.CoursesFormFinal" %>

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
     

            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="text-center">Application Details</h2>
                            <h6 class="text-center">Congratulations! your application has been submitted successfully.</h6>
                          
                        </div>
                        <div class="panel-body">
                            <div class="col-sm-12">
                                <fieldset class="form">

                                    <!-- Personal particulars section -->
                                    <div class="form-group">
                                        <h4>Personal particulars:</h4>
                                        <!-- Table here -->
                                        <table class="table table-bordered table-responsive">
                                            <tbody>
                                                <tr style="min-width: 100%">
                                                    <td style="width: 15%">Full name</td>
                                                    <td style="width: 35%">
                                                        <asp:Label ID="lblfullname" runat="server" Text="Fam Di Sheng"></asp:Label></td>
                                                    <td style="width: 15%">Nationality</td>
                                                    <td style="width: 35%">
                                                        <asp:Label ID="lblnationality" runat="server" Text="China"></asp:Label></td>
                                                </tr>

                                                <tr style="min-width: 100%">
                                                    <td style="width: 15%">Address</td>
                                                    <td style="width: 35%">
                                                        <asp:Label ID="lbladdress" runat="server" Text="Block 217 Marsiling Crescent #07-81, Singapore 730217"></asp:Label></td>
                                                    <td style="width: 15%">Nric/Fin/Passport No.</td>
                                                    <td style="width: 35%">
                                                        <asp:Label ID="lblNric" runat="server" Text="S1234567D"></asp:Label></td>
                                                </tr>

                                                <tr style="min-width: 100%">
                                                    <td style="width: 15%" >Email</td>
                                                    <td style="width: 35%">
                                                        <asp:Label ID="lblemail" runat="server" Text="Thisisme@gmail.com"></asp:Label></td>
                                                    <td style="width: 15%">Contact number</td>
                                                    <td style="width: 35%">
                                                        <asp:Label ID="lblcontactnum" runat="server" Text="83215484"></asp:Label></td>
                                                </tr>
                                                              <tr style="min-width: 100%">
                                                    <td style="width: 15%" >DOB</td>
                                                    <td style="width: 35%">
                                                       <asp:Label ID="lbldob" runat="server" Text="19/11/1996"></asp:Label></td>
                                                    <td style="width: 15%">Age</td>
                                                    <td style="width: 35%">
                                                        <asp:Label ID="lblage" runat="server" Text="21"></asp:Label></td>
                                                </tr>
                                                 <tr style="min-width: 100%">
                                                    <td style="width: 15%" >Race</td>
                                                    <td style="width: 35%">
                                                        <asp:Label ID="lblrace" runat="server" Text="Chinese"></asp:Label></td>
                                                    <td style="width: 15%">Gender</td>
                                                    <td style="width: 35%">
                                                       <asp:Label ID="lblgender" runat="server" Text="Male"></asp:Label></td>
                                                </tr>                        
                                              
                                            </tbody>
                                        </table>
                                        <!-- Table Personal particulars end here -->
                                    </div>
                                    <!-- Personal particulars section ends here-->

                                    <!-- Course Applying for section -->
                                    <div class="form-group">
                                        <h4>Course applying for:</h4>
                                        <!-- Table here -->
                                        <table class="table table-bordered table-responsive">

                                            <tr>
                                               <td style="width:25%">Course title</td>
                                               <td  style="width:75%"><asp:Label ID="lblcoursetitle" runat="server" Text="Diploma in baking and cooking"></asp:Label></td>                                                                                         
                                            </tr>
                                            <tr>
                                                <td style="width:25%" >Course date</td>
                                                <td style="width:75%">
                                                    <asp:Label ID="lblcoursedate" runat="server" Text="07 November 2017 To 07 April 2018"></asp:Label></td>                                                                                         
                                            </tr>
                                            <tr>
                                                <td style="width:25%" >Sponsorship</td>
                                                <td style="width:75%">
                                                    <asp:Label ID="lblsponsorship" runat="server" Text="Self-Sponsored7.1
                                                         "></asp:Label></td>                                                                                         
                                            </tr>
                                          
                                        </table>
                                        <!-- Table Course Applying end here -->
                                    </div>
                                    <!-- Course Applying for section ends here-->

                                    <!-- Education  section -->
                                    <div class="form-group">
                                        <h4>Education:</h4>
                                        <!-- Table here -->
                                        <table class="table table-bordered table-responsive">
                                            <tr>
                                               <td  colspan="1">Highest education</td>
                                               <td  colspan="3">  <asp:Label ID="lblhighestedu" runat="server" Text="GCE O Levels"></asp:Label></td>                                                                                         
                                                                                                                                  
                                            </tr>
                                            <tr>
                                                <td style="width:25%"  colspan="1">Spoken English</td>
                                                <td style="width:25%"  colspan="1"><asp:Label ID="lblSeng" runat="server" Text="Good"></asp:Label></td>
                                                <td style="width:25%"  colspan="1">Written English</td>
                                                 <td style="width:25%"   colspan="1"><asp:Label ID="lblWend" runat="server" Text="Good"></asp:Label></td>                                                
                                            </tr>
                                             <tr>
                                                <td style="width:25%"  colspan="1">Spoken Chinese</td>
                                                <td style="width:25%"  colspan="1"><asp:Label ID="lblSchi" runat="server" Text="Good"></asp:Label></td>
                                                <td style="width:25%"  colspan="1">Written Chinese</td>
                                                 <td style="width:25%"   colspan="1"><asp:Label ID="lblWchi" runat="server" Text="Fair"></asp:Label></td>                                                
                                            </tr>
                                             <tr>
                                                <td style="width:25%"  colspan="1">Spoken Others</td>
                                                <td style="width:25%"  colspan="1"><asp:Label ID="lblSothers" runat="server" Text="None"></asp:Label></td>
                                                <td style="width:25%"  colspan="1">Written Others</td>
                                                 <td style="width:25%"   colspan="1"><asp:Label ID="lblWothers" runat="server" Text="None"></asp:Label></td>                                                
                                            </tr>
                                        </table>
                                        <!-- Table Education end here -->
                                    </div>
                                    <!-- Education section ends here-->

                                    <!-- Employment  section -->
                                    <div class="form-group">
                                        <h4>Employment: <asp:Label ID="lblEmployment" runat="server" Text="Current employment"> </asp:Label></h4>                                   
                                        <!-- Table here -->
                                        <table class="table table-bordered table-responsive">                                     
                                            <tr>
                                                <td style="width:15%"  colspan="1">Company</td>
                                                <td style="width:35%"  colspan="1"><asp:Label ID="lblcompany" runat="server" Text="Nanyang Polytechnic"></asp:Label></td>
                                                <td style="width:15%"  colspan="1">Status</td>
                                                <td style="width:35%"  colspan="1"><asp:Label ID="lblemploystatus" runat="server" Text="Employed in non F&B"></asp:Label></td>                                                
                                            </tr>
                                             <tr>
                                                <td style="width:15%"  colspan="1">Position</td>
                                                <td style="width:35%"  colspan="1"><asp:Label ID="lblposition" runat="server" Text="Intern"></asp:Label></td>
                                                <td style="width:15%"  colspan="1">Salary</td>
                                                <td style="width:35%"  colspan="1"><asp:Label ID="lblsalary" runat="server" Text="SGD 0 / Month"></asp:Label></td>                                                
                                            </tr>
                                             <tr>
                                                <td style="width:15%"  colspan="1">From</td>
                                                <td style="width:35%"  colspan="1"><asp:Label ID="lbljobfrom" runat="server" Text="10 September 2017"></asp:Label></td>
                                                <td style="width:15%"  colspan="1">To</td>
                                                <td style="width:35%"  colspan="1"><asp:Label ID="lbljobto" runat="server" Text="Current"></asp:Label></td>                                                
                                            </tr>
                                        </table>
                                        <!-- Table Employment end here -->
                                    </div>
                                    <!-- Employment section ends here-->





                                    <div class="form-group">
                                        <div class=" text-center">
                                            <asp:Button ID="BtnHome" CssClass="btn btn-default" runat="server" Text="Home" OnClick="BtnHome_Click" />
                                            <asp:Button ID="BtnDownload" CssClass="btn btn-default" runat="server" Text="Download" />
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

