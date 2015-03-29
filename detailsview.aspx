<%@ Page Title="" Language="VB" MasterPageFile="~/movies.master" AutoEventWireup="false" CodeFile="DetailsView.aspx.vb" Inherits="DetailsView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


  <asp:SqlDataSource ID="Sql_Movies" runat="server" ConnectionString="<%$ ConnectionStrings:db_Movies %>" 
            SelectCommand="SELECT * FROM [samkoehn_hw7_movies]" >
            <SelectParameters>
                <asp:QueryStringParameter Name="Movie_ID" QueryStringField="Movie_ID" Type="Int32" />

            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Movie_ID" DataSourceID="Sql_Movies" Height="64px" Width="241px" style="margin-top: 1px">
            <Fields>
                <asp:BoundField DataField="Movie_ID" HeaderText="Movie_ID" SortExpression="Movie_ID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Movie_Name" HeaderText="Movie_Name" SortExpression="Movie_Name" />
                <asp:BoundField DataField="Movie_Year" HeaderText="Movie_Year" SortExpression="Movie_Year" />
                <asp:BoundField DataField="Movie_Month" HeaderText="Movie_Month" SortExpression="Movie_Month" />
                <asp:BoundField DataField="Movie_Day" HeaderText="Movie_Day" SortExpression="Movie_Day" />
                <asp:BoundField DataField="Movie_Viewers" HeaderText="Movie_Viewers" SortExpression="Movie_Viewers" />
            </Fields>
  </asp:DetailsView>
            
            
            </asp:Content>      