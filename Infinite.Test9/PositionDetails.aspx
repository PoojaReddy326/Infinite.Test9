<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PositionDetails.aspx.cs" Inherits="Infinite.Test9.PositionDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
        .container{
            align-items:center;
        }
    </style>
</head>
<body class="mt-4">
    <form id="form1" runat="server">
        <div class="container">
            <h1 >Create New Position</h1>
        <div class="mb-2 row">
        <div >
            <label class="form-label col-md-4">Position Code</label>
        </div>
        <div class="col-md-8">
            <asp:TextBox ID="TxtPositionCode" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Enter Position Code" ControlToValidate="TxtPositionCode" runat="server" />
        </div>
        </div>
        <div class="mb-2 row">
        <div >
            <label class="form-label col-md-4">Description</label>
        </div>
        <div class="col-md-8">
            <asp:TextBox ID="TxtDescription" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Enter Description" ControlToValidate="TxtDescription" runat="server" />
        </div>
        </div>
        <div class="mb-2 row">
        <div class="col-md-8">
            <label class="form-label col-md-4">Year</label>
        </div>
        <div class="col-md-8">
            <asp:DropDownList ID="DropDownyear" runat="server">
                <asp:ListItem Value="0">Select</asp:ListItem>
                <asp:ListItem Value="1">2024</asp:ListItem>
                <asp:ListItem Value="2">2025</asp:ListItem>
                <asp:ListItem Value="3">2026</asp:ListItem>
                <asp:ListItem Value="4">2027</asp:ListItem>
                <asp:ListItem Value="5">2028</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div >
            <asp:CustomValidator ForeColor="Red" Initialvalue="1" ErrorMessage="Please Select a Year" ControlToValidate="DropDownyear" runat="server" />
        </div>
        </div>
        <div class="mb-2 row">
        <div >
            <label class="form-label col-md-4">Budgeted Strength</label>
        </div>
        <div class="col-md-8">
            <asp:TextBox ID="TxtBudgetedstr" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Enter Budgeted Strength" ControlToValidate="TxtBudgetedstr" runat="server" />
        </div>
        </div>
        <div class="mb-2 row">
        <div >
            <label class="form-label col-md-4">Current Strength</label>
        </div>
        <div class="col-md-8">
            <asp:TextBox ID="TxtCurrentStr" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Please Enter Current Strength" ControlToValidate="TxtCurrentStr" runat="server" />
        </div>
        </div>
        <div class="mb-2">
<asp:Button Text="Submit" ID="BtnSubmit" runat="server" Onclick="BtnSubmit_Click" />
<asp:Button Text="Reset" ID="BtnReset" runat="server" CausesValidation="false" OnClick="BtnReset_Click"/>
<asp:Label ID="LblMessage" runat="server" ></asp:Label>
</div>
</div>
    </form>
</body>
</html>
