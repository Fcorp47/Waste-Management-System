<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="view_driver.aspx.cs" Inherits="WebApplication1.Admin.view_driver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">View Driver</strong>
            </div>
            <div class="table-responsive">
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped" id="example">
                            <thead>
                                <tr>
                                    <th scope="col">Name</th>
                                    <th scope="col">Email ID</th>
                                    <th scope="col">Contact No</th>
                                    <th scope="col">Address</th>
                                    <th scope="col">Aadhar No</th>
                                    <th scope="col">Resume PDF</th>
                                    <th scope="col">Update PDF</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        
                        <tr>
                            <td><%# Eval("drivername") %></td>
                            <td><%# Eval("demail") %></td>
                            <td><%# Eval("mobile") %></td>
                            <td><%# Eval("address") %></td>
                            <td><%# Eval("aadhar") %></td>
                            <td><%# Eval("driver_pdf") %><br /> 
                                <%#checkpdf1(Eval("driver_pdf"),Eval("id"))%>&emsp;
                                <%#checkpdf2(Eval("driver_pdf"),Eval("id"))%> </td>
                            <td><a href="edit_pdf.aspx?id=<%# Eval("id") %>">Uplaod PDF</a></td>
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
