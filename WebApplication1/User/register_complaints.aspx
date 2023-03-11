<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="register_complaints.aspx.cs" Inherits="WebApplication1.User.register_complaints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
       
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Post Request</strong>
            </div>
            <div class="table-responsive">
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped" id="example">
                            <thead>
                                <tr>
                                    <th scope="col">Bin ID</th>
                                    <th scope="col">Area</th>
                                    <th scope="col">Locality</th>
                                    <th scope="col">Landmark</th>
                                    <th scope="col">City</th>
                                    <th scope="col">Ticket</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("id") %></td>
                            <td><%# Eval("area") %></td>
                            <td><%# Eval("locality") %></td>
                            <td><%# Eval("landmark") %></td>
                            <td><%# Eval("city") %></td>
                            <td><a href="ticket.aspx?id=<%# Eval("id") %>">Ticket</a></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
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
