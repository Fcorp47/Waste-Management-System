<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="ticket.aspx.cs" Inherits="WebApplication1.User.ticket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
     <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Post Request</strong>
            </div>
            <div class="card-body">
                <!-- Credit Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form id="fo1" runat="server">
                            
                             <div class="form-group">
                                <label for="" class="control-label mb-1" >User Email ID</label>
                                <asp:TextBox ID="useremailID" runat="server" class="form-control" ReadOnly></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Bin ID</label>
                                <asp:TextBox ID="binid" runat="server" class="form-control" ReadOnly></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Area</label>
                                <asp:TextBox ID="binarea" runat="server" class="form-control" ReadOnly></asp:TextBox>
                            </div> 

                            

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Weight (Kg.)</label>
                                 <asp:TextBox ID="complaint" runat="server" placeholder="Enter Weight" />
                            </div> 
                                                                                
                            <div>
                                <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Submit" OnClick="b1_Click"/>
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
