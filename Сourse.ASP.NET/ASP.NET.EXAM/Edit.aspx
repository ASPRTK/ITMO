<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="Edit.aspx.cs" 
    Inherits="ASP.Zachet.TEST.Edit" 
    MasterPageFile="~/Site.Master" %>


<asp:Content ID="MainContent" 
    ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div>
        <h2>Cписок студентов</h2>

 <asp:LinqDataSource ID="LinqDataSource1" runat="server"  ContextTypeName="ASP.Zachet.TEST.SampleContext"  EnableDelete="True" EnableInsert="True" EnableUpdate="True" 
    TableName="Students" EntityTypeName="" OnSelecting="LinqDataSource1_Selecting">

</asp:LinqDataSource>
   
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
           
    <Columns>
  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
  <asp:BoundField DataField="Name" HeaderText="Имя" ReadOnly="True" SortExpression="Name" />
  <asp:BoundField DataField="Surname" HeaderText="Фамилия" ReadOnly="True" SortExpression="Surname" />
  <asp:BoundField DataField="Group" HeaderText="Группа" ReadOnly="True" SortExpression="Group" />            
  <asp:BoundField DataField="AverageMark" HeaderText="Оценка" ReadOnly="True" SortExpression="AverageMark" />
      
    </Columns>
</asp:GridView> 


        </div>

</asp:Content>






