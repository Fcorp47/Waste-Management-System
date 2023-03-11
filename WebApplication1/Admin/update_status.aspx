<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="update_status.aspx.cs" Inherits="WebApplication1.Admin.update_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Update Status</strong>
            </div>
            <div class="card-body">
                <!-- Credit Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form id="fo1" runat="server">
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Request ID</label>
                                <asp:TextBox ID="binID" runat="server" class="form-control" ReadOnly></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Status</label>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Pending</asp:ListItem>
                                    <asp:ListItem>Accept</asp:ListItem>
                                    <asp:ListItem>On Progress</asp:ListItem>
                                    <asp:ListItem>Rejected</asp:ListItem>
                                </asp:DropDownList>                                
                            </div>                           
                            <div>
                                <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Save" OnClick="b1_Click"/>
                            </div>
                            
                            
                        </form>
                    </div>
            </div>
        </div>
    </div>
    <!-- .card -->
    </div><!--/.col-->
</asp:Content>
