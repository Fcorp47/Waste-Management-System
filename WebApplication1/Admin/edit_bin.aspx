<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="edit_bin.aspx.cs" Inherits="WebApplication1.Admin.edit_bin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">    
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Update Bin</strong>
            </div>
            <div class="card-body">
                <!-- Credit Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form id="fo1" runat="server">
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Area</label>
                                <asp:TextBox ID="binarea" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Locality</label>
                                <asp:TextBox ID="binlocality" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Landmark</label>
                                <asp:TextBox ID="binlandmark" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">City</label>
                                <asp:TextBox ID="bincity" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Load Type</label>
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Low</asp:ListItem>
                                    <asp:ListItem>Medium</asp:ListItem>
                                    <asp:ListItem>High</asp:ListItem>
                                </asp:DropDownList>
                                
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Assign Driver Email</label>
                                <asp:TextBox ID="driveremail" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Cycle Period</label>
                                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Daily</asp:ListItem>
                                    <asp:ListItem>Twice</asp:ListItem>
                                    <asp:ListItem>Weekly</asp:ListItem>
                                </asp:DropDownList>
                               
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Best Route</label>
                                <asp:TextBox id="bestroute" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                            </div>                            
                            <div>
                                <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Update" OnClick="b1_Click1" />
                            </div>
                            
                            
                        </form>
                    </div>
            </div>
                <center><a href="view_bin.aspx" style="color:black">back to Bin ...</a></center>
        </div>
    </div>
    <!-- .card -->
    </div><!--/.col-->
</asp:Content>
