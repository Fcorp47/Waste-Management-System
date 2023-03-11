<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="admin_panel.aspx.cs" Inherits="WebApplication1.Admin.admin_panel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <!--<div class="row">
        <div class="col">
            <button type="button" class="btn btn-outline-secondary btn-lg">Create Bin</button>
        </div>
        <div class="col">
            <button type="button" class="btn btn-outline-secondary btn-lg">Update Bins</button>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <button type="button" class="btn btn-outline-secondary btn-lg">Create Driver</button>
        </div>
        <div class="col">
            <button type="button" class="btn btn-outline-secondary btn-lg">View Driver</button>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <button type="button" class="btn btn-outline-secondary btn-lg">View Complaints</button>
        </div>
        <div class="col">
            <button type="button" class="btn btn-outline-secondary btn-lg">View Work Report</button>
        </div>
        </div>
    <div class="row">
        <div class="col">
            <button type="button" class="btn btn-outline-secondary btn-lg">User Details</button>
        </div>
    </div>-->

    <center>
    <div class="content mt-3">
        <div class="animated fadeIn">
            <div class="row">

                <div class="buttons">
                    <!-- Left Block -->
                    <div class="col-md-6">

                        <div class="card">
                            <div class="card-header">
                                <strong>Bin </strong>

                            </div>
                            <div class="card-body">                                
                                <img src="images/panelicon/bin.png" alt="Bin" width="100px" height="120px"/>
                                </br></br>                                
                                <a href="add_bin.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">Create Bins</button></a>
                                <a href="view_bin.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">Update Bins</button></a>
                            </div>
                        </div>
                        <!-- /# card -->
                         <div class="card">
                            <div class="card-header">
                                <strong>User</strong>
                            </div>
                            <div class="card-body">
                                <img src="images/panelicon/user.png" alt="User" width="120px" height="120px"/>
                                </br></br>
                                <a href="view_user.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">User Details</button></a>
                                <a href="view_complaints.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">View Request</button></a>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>



                    <!-- Right Block -->
                    <div class="col-md-6">

                        <div class="card">
                            <div class="card-header">
                                <strong>Driver</strong>

                            </div>
                            <div class="card-body">
                                <img src="images/panelicon/driver.png" alt="Driver" width="200px" height="120px"/>
                                </br></br>
                                <a href="add_driver.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">Create Driver</button></a>
                                <a href="view_driver.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">View Driver</button></a>
                                <a href="view_workReport.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">View Work Report</button></a>
                            </div>
                        </div>
                        <!-- /# card -->
                        <div class="card">
                            <div class="card-header">
                                <strong>Transaction Details</strong>
                            </div>
                            <div class="card-body">
                                <img src="images/panelicon/invoice.png "alt="User" width="120px" height="120px"  />
                                </br></br>
                                <a href="view_transaction.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">View Transaction</button></a>
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
