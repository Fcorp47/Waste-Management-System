﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="add_charge.aspx.cs" Inherits="WebApplication1.Admin.add_charge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Add / Edit Charge</strong>
            </div>
            <div class="card-body">
                <!-- Credit Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form action="" id="fo1" runat="server" method="post" novalidate="novalidate">
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Add / Edit Charge (Rs.)</label>
                                <asp:TextBox ID="penalty" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div>
                                <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Add Charge" OnClick="b1_Click" />
                            </div>

                        </form>
                    </div>
            </div>
        </div>
    </div>
    <!-- .card -->
    </div><!--/.col-->
</asp:Content>
