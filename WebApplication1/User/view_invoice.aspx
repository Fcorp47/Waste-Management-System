<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="view_invoice.aspx.cs" Inherits="WebApplication1.User.view_invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
        
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    <div class="col-lg-12">
       
        <div class="card">
            <div class="card-header">
                <strong class="card-title">View Invoice</strong>
            </div>
            <div class="table-responsive">
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped" id="example">
                            <thead>
                                <tr>
                                    <th scope="col">Transaction ID</th>
                                    <th scope="col">Request ID</th>
                                    <th scope="col">User Email</th>
                                    <th scope="col">Pay Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("tid") %></td>
                            <td><%# Eval("cid") %></td>
                            <td><%# Eval("usermail") %></td>
                            <td><%# Eval("amount") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
            <div align="right">
             <a href="print.aspx"><button id="printInvoice" class="btn btn-info"><i class="fa fa-print"></i> Print</button></a>
            </div>
            <center><a href="user_panel.aspx" style="color:black">back to Home ...</a></center>

        </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable({
                "pagingType": "full_numbers"
            });
        });
    </script>

</asp:Content>
