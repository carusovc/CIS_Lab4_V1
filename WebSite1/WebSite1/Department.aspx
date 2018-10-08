<%@ Page Title="Department Information Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>


<form>
   <div class="form-group">
    <label for="exampleFormControlSelect1">Department ID</label>
      <asp:SqlDataSource 
          ID="SqlDataSource2" 
          runat="server" 
          ConnectionString="<%$ ConnectionStrings:AdventureWorks2014ConnectionString %>" 
          SelectCommand="SELECT DepartmentID FROM HumanResources.Department ORDER BY DepartmentID">
      </asp:SqlDataSource>
      <asp:DropDownList 
          ID="DropDownList1" 
          runat="server" 
          DataSourceID="SqlDataSource1"
          DataTextField="DepartmentID" 
          DataValueField="DepartmentID">
      </asp:DropDownList>
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Department Name</label>
      <asp:TextBox ID="txtDeptName" runat="server" CssClass="form-control" placeholder="e.g. Engineering"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Group Name</label>
      <asp:TextBox ID="txtGroupName" runat="server" CssClass="form-control" placeholder="e.g. Sales and Marketing"></asp:TextBox>
    
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Department ID</label>
      <asp:SqlDataSource 
          ID="SqlDataSource1" 
          runat="server" 
          ConnectionString="<%$ ConnectionStrings:AdventureWorks2014ConnectionString %>" 
          SelectCommand="SELECT DepartmentID FROM HumanResources.Department ORDER BY DepartmentID">
      </asp:SqlDataSource>
      <asp:DropDownList 
          ID="DropDownDepartmentID" 
          runat="server" 
          DataSourceID="SqlDataSource1"
          DataTextField="DepartmentID" 
          DataValueField="DepartmentID">
      </asp:DropDownList>
  </div>

  <div class="form-group">
      <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
      <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
      <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
      <asp:Button ID="btnExit" runat="server" Text="Exit" OnClick="btnExit_Click" />
  </div>

</form>

    
</asp:Content>
