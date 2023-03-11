<%@ Page Title="" Language="C#" MasterPageFile="~/Driver/driver.Master" AutoEventWireup="true" CodeBehind="update_work.aspx.cs" Inherits="WebApplication1.Driver.update_work" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Post Work</strong>
            </div>
            <div class="card-body">
                <!-- Credit Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form id="fo1" runat="server">
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Driver</label>
                                <asp:TextBox ID="driveremail" runat="server" class="form-control" ReadOnly></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Bin ID</label>
                                <asp:TextBox ID="binID" runat="server" class="form-control" ReadOnly></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Area</label>
                                <asp:TextBox ID="binArea" runat="server" class="form-control" ReadOnly></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Status</label>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>On Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>                                    
                                    <asp:ListItem>In Completed</asp:ListItem>
                                </asp:DropDownList>                                
                            </div>                           
                            <div>
                                <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Submit" OnClick="b1_Click"/>
                            </div>
                            
                        </form>
                    </div>
            </div>
                 <center><a href="driver_panel.aspx" style="color:black">back to Home ...</a></center>
        </div>
    </div>
    <!-- .card -->
    </div><!--/.col-->
</asp:Content>
