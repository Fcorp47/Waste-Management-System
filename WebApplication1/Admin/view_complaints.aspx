<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="view_complaints.aspx.cs" Inherits="WebApplication1.Admin.view_complaints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
   
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">User Request</strong>
            </div>
            <div class="table-responsive">
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped" id="example">
                            <thead>
                                <tr>
                                    <th scope="col">Request ID</th>
                                    <th scope="col">Bin ID</th>
                                    <th scope="col">Area</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Weight</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Update</th>                                    
                                   
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("cid") %></td>
                            <td><%# Eval("binID") %></td>
                            <td><%# Eval("binAREA") %></td>
                            <td><%# Eval("uemail") %></td>
                            <td><%# Eval("complaint_details") %></td>
                            <td><%# Eval("status") %></td>
                            <td><a href="update_status.aspx?id=<%# Eval("cid") %>">Update Status</a></td>
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
