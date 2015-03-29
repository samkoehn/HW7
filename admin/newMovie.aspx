<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newMovie.aspx.vb" Inherits="newMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Movies %>" DeleteCommand="DELETE FROM [samkoehn_hw7_movies] WHERE [Movie_ID] = @Movie_ID" InsertCommand="INSERT INTO [samkoehn_hw7_movies] ([Movie_Name], [Movie_Year], [Movie_Month], [Movie_Day], [Movie_Viewers]) VALUES (@Movie_Name, @Movie_Year, @Movie_Month, @Movie_Day, @Movie_Viewers)" SelectCommand="SELECT * FROM [samkoehn_hw7_movies]" UpdateCommand="UPDATE [samkoehn_hw7_movies] SET [Movie_Name] = @Movie_Name, [Movie_Year] = @Movie_Year, [Movie_Month] = @Movie_Month, [Movie_Day] = @Movie_Day, [Movie_Viewers] = @Movie_Viewers WHERE [Movie_ID] = @Movie_ID">
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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Movie_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Movie_ID" HeaderText="Movie_ID" InsertVisible="False" ReadOnly="True" SortExpression="Movie_ID" />
                <asp:BoundField DataField="Movie_Name" HeaderText="Movie_Name" SortExpression="Movie_Name" />
                <asp:BoundField DataField="Movie_Year" HeaderText="Movie_Year" SortExpression="Movie_Year" />
                <asp:BoundField DataField="Movie_Month" HeaderText="Movie_Month" SortExpression="Movie_Month" />
                <asp:BoundField DataField="Movie_Day" HeaderText="Movie_Day" SortExpression="Movie_Day" />
                <asp:BoundField DataField="Movie_Viewers" HeaderText="Movie_Viewers" SortExpression="Movie_Viewers" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
    
    </div>
    </form>
</body>
</html>
