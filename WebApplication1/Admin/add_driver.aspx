<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="add_driver.aspx.cs" Inherits="WebApplication1.Admin.add_driver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Add Driver</strong>
            </div>
            <div class="card-body">
                <!-- Credit Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form id="fo1" runat="server">
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Name</label>
                                <asp:TextBox ID="drivername" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>Email ID</label>
                                <asp:TextBox ID="demail" runat="server" class="form-control"></asp:TextBox>
                            </div>
                           
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="driverpassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Contact No</label>
                                <asp:TextBox ID="mobile" runat="server" class="form-control" TextMode="Phone"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Address</label>
                                <asp:TextBox id="address" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Aadhar No</label>
                                <asp:TextBox ID="aadhar" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Resume PDF</label>
                                <asp:FileUpload ID="f2" runat="server" class="form-control" />
                            </div>
                            <div>
                                <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Submit" OnClick="b1_Click"/>
                            </div>
                            <div class="alert alert-success" id="msg" runat="server" style="margin-top: 10px; display: none">
                                <strong>Your Driver Details Added Successfully!</strong>
                            </div>
                        </form>
                    </div>
            </div>
        </div>
            <center><a href="admin_panel.aspx" style="color:black">back to Home ...</a></center>
    </div>
    <!-- .card -->
    </div><!--/.col-->
</asp:Content>
