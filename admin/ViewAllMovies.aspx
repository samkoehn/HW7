<%@ Page Title="" Language="VB" MasterPageFile="~/movies.master" AutoEventWireup="false" CodeFile="ViewAllMovies.aspx.vb" Inherits="ViewAllMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
</asp:Content> 

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    
        <asp:SqlDataSource ID="sql_Movies" runat="server" ConnectionString="<%$ ConnectionStrings:db_Movies %>" DeleteCommand="DELETE FROM [samkoehn_hw7_movies] WHERE [Movie_ID] = @Movie_ID" InsertCommand="INSERT INTO [samkoehn_hw7_movies] ([Movie_Name], [Movie_Year], [Movie_Month], [Movie_Day], [Movie_Viewers]) VALUES (@Movie_Name, @Movie_Year, @Movie_Month, @Movie_Day, @Movie_Viewers)" SelectCommand="SELECT * FROM [samkoehn_hw7_movies]" UpdateCommand="UPDATE [samkoehn_hw7_movies] SET [Movie_Name] = @Movie_Name, [Movie_Year] = @Movie_Year, [Movie_Month] = @Movie_Month, [Movie_Day] = @Movie_Day, [Movie_Viewers] = @Movie_Viewers WHERE [Movie_ID] = @Movie_ID">
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
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/newMovies.aspx">Add A New Movie</asp:HyperLink>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Movie_ID" DataSourceID="sql_Movies">
            <Columns>
                <asp:BoundField DataField="Movie_ID" HeaderText="Movie_ID" SortExpression="Movie_ID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Movie_Name" HeaderText="Movie_Name" SortExpression="Movie_Name" />
                <asp:BoundField DataField="Movie_Year" HeaderText="Movie_Year" SortExpression="Movie_Year" />
                <asp:BoundField DataField="Movie_Month" HeaderText="Movie_Month" SortExpression="Movie_Month" />
                <asp:BoundField DataField="Movie_Day" HeaderText="Movie_Day" SortExpression="Movie_Day" />
                <asp:BoundField DataField="Movie_Viewers" HeaderText="Movie_Viewers" SortExpression="Movie_Viewers" />
                <asp:HyperLinkField DataNavigateUrlFields="Movie_ID" DataNavigateUrlFormatString="detailsview.aspx?Movie_ID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
        <br />
 

</asp:Content>

