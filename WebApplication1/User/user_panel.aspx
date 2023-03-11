<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="user_panel.aspx.cs" Inherits="WebApplication1.User.user_panel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
     <center>
    <div class="content mt-3">
        <div class="animated fadeIn">
            <div class="row">
                <div class="buttons">
                    <!-- Left Block -->
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>Request</strong>
                            </div>
                            <div class="card-body">
                                <img src="images/panelicon/complaint.png" alt="Complaint" width="100px" height="120px" />                              
                                </br></br>                                
                                <a href="register_complaints.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">Register Request</button></a>
                                <a href="my_complaints.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">My Request</button></a>
                            </div>
                        </div>
                        <!-- /# card -->
                   <div class="card">
                            <div class="card-header">
                                <strong>Invoice</strong>
                            </div>
                            <div class="card-body">
                                <img src="images/invoice.png" alt="User" width="120px" height="120px" />
                                </br></br>
                                <a href="view_invoice.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">View Invoice</button></a>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>


                    <!-- Right Block -->
                    <div class="col-md-6">

                        <div class="card">
                            <div class="card-header">
                                <strong>User</strong>

                            </div>
                            <div class="card-body">
                                <img src="images/panelicon/user.png" alt="User" width="120px" height="120px"/>
                                </br></br>
                                <a href="my_profile.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">My Profile</button></a>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                </div>
                <!-- .buttons -->

            </div>
            <!-- .row -->
        </div>
        <!-- .animated -->
    </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->
        </center>
</asp:Content>
