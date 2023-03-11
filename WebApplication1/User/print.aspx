<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="print.aspx.cs" Inherits="WebApplication1.User.print" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div id="tblCustomers">

    <div class="toolbar hidden-print">
        <div class="text-right">
            <input type="button" id="printInvoice" class="btn btn-info"  value="Print" />
        </div>
        <hr>
    </div>
    <div class="invoice overflow-auto">
        <div style="min-width: 600px">
            <header>
                <div class="row">
                    <div class="col company-details">
                        <h2 class="name">                            
                            AMA Tech Corp.
                        </h2>
                        <div>455 Foggy Heights, AZ 85004, India</div>
                        <div>(123) 456-789</div>
                        <div>amatechcorp@gmail.com</div>
                    </div>
                </div>
            </header>
            <main>
                <div class="row contacts">
                    <div class="col invoice-details">
                        <h1 class="invoice-id">INVOICE 1</h1>
                        <div class="date">Date of Invoice: 17/10/2020</div>
                    </div>
                </div>
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
                        <tr>
			                <td align = 'right' colspan = '3'>Total</td>
			                <td>2750</td>
		                 </tr>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                </div>
            </div>                          
            </main>
           <center><h1>Thank you!</h1></center>
            <footer>
                Invoice was created on a computer and is valid without the signature and seal.
            </footer>
        </div>
        <!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
        <div></div>
    </div>
</div>
</asp:Content>
 