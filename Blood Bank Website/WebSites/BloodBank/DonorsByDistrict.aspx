<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DonorsByDistrict.aspx.cs" Inherits="DonorsByDistrict" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-size: x-large;
            color: #800000;
            background-color: #FFFF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style8">
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="Blood Donors List" BorderColor="Maroon" Height="42px" Width="100%"></asp:Label>
        </strong>
    </p>
<p>
        <br />
        &nbsp;Search Donor: &nbsp;<asp:DropDownList ID="DistrictList" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="237px" AutoPostBack="True">
                <asp:ListItem>Select District</asp:ListItem>
                    <asp:ListItem>Bandarban</asp:ListItem>
                    <asp:ListItem>Bagerhat</asp:ListItem>
                    <asp:ListItem>Barguna</asp:ListItem>
                    <asp:ListItem>Barisal</asp:ListItem>
                    <asp:ListItem>Bhola</asp:ListItem>
                    <asp:ListItem>Bogra</asp:ListItem>
                    <asp:ListItem>Brahmanbaria</asp:ListItem>
                    <asp:ListItem>Chandpur</asp:ListItem>
                    <asp:ListItem>Chittagong</asp:ListItem>
                    <asp:ListItem>Chuadanga</asp:ListItem>
                    <asp:ListItem>Comilla</asp:ListItem>
                    <asp:ListItem>Cox&#39;s Bazar</asp:ListItem>
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Dinajpur</asp:ListItem>
                    <asp:ListItem>Faridpur</asp:ListItem>
                 
                    <asp:ListItem>Feni</asp:ListItem>
                    <asp:ListItem>Gaibandha</asp:ListItem>
                    <asp:ListItem>Gazipur</asp:ListItem>
                    <asp:ListItem>Gopalganj</asp:ListItem>
                    <asp:ListItem>Habiganj</asp:ListItem>
                    <asp:ListItem>Jamalpur</asp:ListItem>
                    <asp:ListItem>Jessore</asp:ListItem>
                    <asp:ListItem>Jhalokati</asp:ListItem>
                    <asp:ListItem>Jhenaidah</asp:ListItem>
                    <asp:ListItem>Joypurhat</asp:ListItem>
                    <asp:ListItem>Khagrachhari</asp:ListItem>
                    <asp:ListItem>Khulna</asp:ListItem>
                    <asp:ListItem>Kishoreganj</asp:ListItem>
                    <asp:ListItem>Kurigram</asp:ListItem>
                    <asp:ListItem>Kushtia</asp:ListItem>
                    <asp:ListItem>Lakshmipur</asp:ListItem>
                    <asp:ListItem>Lalmonirhat</asp:ListItem>
                    <asp:ListItem>Madaripur</asp:ListItem>
                    <asp:ListItem>Magura</asp:ListItem>
                    <asp:ListItem>Manikganj</asp:ListItem>
                    <asp:ListItem>Meherpur</asp:ListItem>
                    <asp:ListItem>Moulvibazar</asp:ListItem>
                    <asp:ListItem>Munshiganj</asp:ListItem>
                    <asp:ListItem>Mymensingh</asp:ListItem>
                    <asp:ListItem>Naogaon</asp:ListItem>
                    <asp:ListItem>Narail</asp:ListItem>
                    <asp:ListItem>Narayanganj </asp:ListItem>
                    <asp:ListItem>Narsingdi</asp:ListItem>
                    <asp:ListItem>Natore</asp:ListItem>
                    <asp:ListItem>Nawabganj</asp:ListItem>
                    <asp:ListItem>Netrakona</asp:ListItem>
                    <asp:ListItem>Nilphamari</asp:ListItem>
                    <asp:ListItem>Noakhali</asp:ListItem>
                    <asp:ListItem>Pabna</asp:ListItem>
                    <asp:ListItem>Panchagarh </asp:ListItem>
                    <asp:ListItem>Patuakhali</asp:ListItem>
                    <asp:ListItem>Pirojpur</asp:ListItem>
                    <asp:ListItem>Rajbari</asp:ListItem>
                    <asp:ListItem>Rajshahi </asp:ListItem>
                    <asp:ListItem>Rangamati</asp:ListItem>
                    <asp:ListItem>Rangpur</asp:ListItem>
                    <asp:ListItem>Satkhira</asp:ListItem>
                    <asp:ListItem>Shariatpur</asp:ListItem>
                    <asp:ListItem>Sherpur</asp:ListItem>
                    <asp:ListItem>Sirajganj</asp:ListItem>
                    <asp:ListItem>Sunamganj</asp:ListItem>
                    <asp:ListItem>Sylhet</asp:ListItem>
                    <asp:ListItem>Tangail </asp:ListItem>
                    <asp:ListItem>Thakurgaon</asp:ListItem>
        </asp:DropDownList>
    &nbsp;&nbsp;
        <asp:Button ID="ResetButton" runat="server" OnClick="ResetButton_Click" Text="Reset Search" />
&nbsp;
    </p>
    <asp:Panel ID="Panel2" runat="server">
        <asp:SqlDataSource ID="DistrictData" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT [Name], [Email], [District], [BloodGroup], [ContactNo] FROM [RegisteredDonor] WHERE ([District] = @District)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DistrictList" Name="District" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="DistrictGrid" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="DistrictData" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AllData" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="AllData" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT [Name], [Email], [District], [BloodGroup], [ContactNo] FROM [RegisteredDonor]"></asp:SqlDataSource>
    </asp:Panel>
    <p>
        &nbsp;</p>
</asp:Content>

