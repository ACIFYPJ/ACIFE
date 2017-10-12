<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.E.EventsFolder.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function openEvent(id) {
            popupWin = window.location = 'EventsDetailed.aspx?EventID=' + id,
            'open_window' + id,
            'menubar, toolbar, location, directories, status, scrollbars, resizable, dependent'
        }
    </script>

    <br />
     <div class="intro-headerEvents">
            <!-- change this image in custom.css-->          
                <div class="row">
                    <div class="intro-messagePage col-sm-12">
                        <h1>Events</h1>
                    </div>
                </div>
        </div>
        <br />
        <br />
            <div class="row">
                <div class="col-sm-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li class="active">Events</li>
                    </ul>
                </div>
            </div>
    <div class="row">
        <div class="col-sm-12">
            <h1>ACI Events</h1>
        </div>
        <div class="col-sm-12">
                    <div class="table-responsive">
                        <asp:Repeater ID="EventRPT" runat="server" OnItemCommand="EventRPT_ItemCommand">
                            <HeaderTemplate>
                                <table class="table table-bordered table-hover">
                                    <thead>
                                         <tr >
                                            <th scope="col" style="width: 200px">2017
                                            </th>
                                            <th scope="col" style="width: 600px">Event Title
                                            </th>
                                             <th scope="col" style="width: 600px">Event Description
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>                                                    
                                <tr onclick="openEvent('<%# DataBinder.Eval(Container.DataItem, "EventID") %>');" onmouseover="javascript:highlight(this);" onmouseout="javascript:unhighlight(this,1);">
                                    
                                         <td>
                                        <asp:Label ID="lbDate" runat="server" Text='<%# ((DateTime)Eval("EventStart")).ToString("dd-MMMM")  %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="lbEventTitle" runat="server" Text='<%# Eval("EventTitle") %>' />
                                    </td>
                                     <td>
                                        <asp:Label ID="lbEventDescription" runat="server" Text='<%# Eval("Description").ToString().PadRight(140).Substring(0,140).TrimEnd() + "..." %>' />
                                    </td>
                                  </ItemTemplate>
                            <FooterTemplate>
                                </tr>
                                   
                                </tbody>
                    </table>     
                            </FooterTemplate>
                        </asp:Repeater>

                    </div>
                </div>
    </div>
</asp:Content>
