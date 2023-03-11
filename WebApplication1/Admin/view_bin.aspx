<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="view_bin.aspx.cs" Inherits="WebApplication1.Admin.view_bin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">View Bin</strong>
            </div>
            <div class="table-responsive">
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped" id="example">
                            <thead>
                                <tr>
                                    <th scope="col">Area</th>
                                    <th scope="col">Locality</th>
                                    <th scope="col">Landmark</th>
                                    <th scope="col">City</th>
                                    <th scope="col">Load</th>
                                    <th scope="col">Driver</th>
                                    <th scope="col">Cleaning Period</th>
                                    <th scope="col">Best Route</th>
                                    <th scope="col">Edit Bin</th>
                                    <th scope="col">Delete Bin</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("area") %></td>
                            <td><%# Eval("locality") %></td>
                            <td><%# Eval("landmark") %></td>
                            <td><%# Eval("city") %></td>
                            <td><%# Eval("loadtype") %></td>
                            <td><%# Eval("driveremail") %></td>
                            <td><%# Eval("cycleperiod") %></td>                            
                            <td><%# Eval("bestroute") %></td>
                            <td><a href="edit_bin.aspx?id=<%# Eval("id") %>">Edit Bin</a></td>
                            <td><a href="delete_bin.aspx?id1=<%# Eval("id") %>">Delete Bin</a></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
            <center><a href="admin_panel.aspx" style="color:black">back to Home ...</a></center>
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
