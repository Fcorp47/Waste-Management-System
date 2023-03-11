<%@ Page Title="" Language="C#" MasterPageFile="~/Driver/driver.Master" AutoEventWireup="true" CodeBehind="driver_panel.aspx.cs" Inherits="WebApplication1.Driver.driver_panel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
   <center>
           <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>Best Route</strong>

                            </div>
                            <div class="card-body">
                                <img src="images/panelicon/Map.png" alt="Bin" width="120px" height="120px"/>
                                </br></br>                                
                                <a href="work.aspx"><button type="button" class="btn btn-outline-secondary btn-lg">Best Route & Work</button></a>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
   </center>
</asp:Content>
