<%@ Page Title="" Language="VB" MasterPageFile="~/movies.master" AutoEventWireup="false" CodeFile="detailsview.aspx.vb" Inherits="admin_detailsview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:SqlDataSource ID="Sql_Movies" runat="server" ConnectionString="<%$ ConnectionStrings:db_Movies %>" DeleteCommand="DELETE FROM [samkoehn_hw7_movies] WHERE [Movie_ID] = @Movie_ID" InsertCommand="INSERT INTO [samkoehn_hw7_movies] ([Movie_Name], [Movie_Year], [Movie_Month], [Movie_Day], [Movie_Viewers]) VALUES (@Movie_Name, @Movie_Year, @Movie_Month, @Movie_Day, @Movie_Viewers)" SelectCommand="SELECT * FROM [samkoehn_hw7_movies]" UpdateCommand="UPDATE [samkoehn_hw7_movies] SET [Movie_Name] = @Movie_Name, [Movie_Year] = @Movie_Year, [Movie_Month] = @Movie_Month, [Movie_Day] = @Movie_Day, [Movie_Viewers] = @Movie_Viewers WHERE [Movie_ID] = @Movie_ID">
            <DeleteParameters>
                <asp:Parameter Name="Movie_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Movie_Name" Type="String" />
                <asp:Parameter Name="Movie_Year" Type="Decimal" />
                <asp:Parameter Name="Movie_Month" Type="String" />
                <asp:Parameter Name="Movie_Day" Type="Decimal" />
                <asp:Parameter Name="Movie_Viewers" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Movie_Name" Type="String" />
                <asp:Parameter Name="Movie_Year" Type="Decimal" />
                <asp:Parameter Name="Movie_Month" Type="String" />
                <asp:Parameter Name="Movie_Day" Type="Decimal" />
                <asp:Parameter Name="Movie_Viewers" Type="Decimal" />
                <asp:Parameter Name="Movie_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="lbl_deleted" runat="server"></asp:Label>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Movie_ID" DataSourceID="Sql_Movies" Height="64px" Width="241px">
            <Fields>
                <asp:BoundField DataField="Movie_Name" HeaderText="Movie Name" SortExpression="Movie_Name" />
                <asp:BoundField DataField="Movie_Year" HeaderText="Movie Year" SortExpression="Movie_Year" />
                <asp:BoundField DataField="Movie_Month" HeaderText="Movie Month" SortExpression="Movie_Month" />
                <asp:BoundField DataField="Movie_Day" HeaderText="Movie Day" SortExpression="Movie_Day" />
                <asp:BoundField DataField="Movie_Viewers" HeaderText="Movie Viewers" SortExpression="Movie_Viewers" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>



</asp:Content>

