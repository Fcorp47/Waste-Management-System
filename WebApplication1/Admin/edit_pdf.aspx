<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="edit_pdf.aspx.cs" Inherits="WebApplication1.Admin.edit_pdf" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    
    
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Upload Resume</strong>
            </div>
            <div class="card-body">
                <!-- Credit Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form id="fo1" runat="server">
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Name</label>
                                <asp:TextBox ID="drivername" runat="server" class="form-control" ReadOnly></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Resume PDF</label>
                                <asp:FileUpload ID="f2" runat="server" class="form-control" />
                            </div>
                            <div>
                                <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Update" OnClick="b1_Click"/>
                            </div>
                            <div class="alert alert-success" id="msg" runat="server" style="margin-top: 10px; display: none">
                                <strong>Your Driver Resume Added Successfully!</strong>
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
