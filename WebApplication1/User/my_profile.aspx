<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="my_profile.aspx.cs" Inherits="WebApplication1.User.my_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
   <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">My profile</strong>
            </div>
            <div class="card-body">
                <!-- Credit Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form id="fo1" runat="server">
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Email ID</label>
                                <asp:TextBox ID="emailID" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Name</label>
                                <asp:TextBox ID="username" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Address</label>
                                <asp:TextBox id="address" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                            </div>  

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Phone</label>
                                <asp:TextBox ID="phone" runat="server" class="form-control"></asp:TextBox>
                            </div>
                                                      
                            <div>
                                <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Update" OnClick="b1_Click1" />
                            </div>                           
                            
                        </form>
                    </div>
            </div>                
        </div>
            <center><a href="user_panel.aspx" style="color:black">back to Home ...</a></center>
    </div>
    <!-- .card -->
    </div><!--/.col-->
</asp:Content>
