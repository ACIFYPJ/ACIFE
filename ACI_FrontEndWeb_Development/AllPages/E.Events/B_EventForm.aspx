<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="B_EventForm.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.E.Events.B_EventForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h2 class="text-center">Sign up now!</h2>
        <fieldset class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2" for="Name">Full Name:</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="tbFullName"  CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

             <div class="form-group">
                <label class="control-label col-sm-2" for="Name">Date Of Birth</label>
                
                            <div class="col-lg-3 ">
                                <asp:DropDownList class="form-control" ID="ddlday" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col-lg-4 ">
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
                            <div class="col-lg-3">
                                <asp:DropDownList class="form-control" ID="ddlyear" runat="server"></asp:DropDownList>

                          
                        </div>
            


           </div>
        </fieldset>
    </div>

</asp:Content>
