<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageQues.master" AutoEventWireup="true" CodeFile="RegisterPage.aspx.cs" Inherits="RegisterPage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 24px;
            font-size: x-large;
        }
        .style2
        {
            width: 137px;
            height: 46px;
        }
        .style3
        {
            height: 24px;
            width: 141px;
        }
        .style4
        {
            width: 141px;
            height: 46px;
        }
        .style5
        {
            height: 47px
        }
        .style6
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table 
            
        style="width: 50%; border-style: solid; border-width: 1px; margin-left: 0px; margin-right: 0px;" 
        align="center">
            <tr>
                <td class="style1" colspan="2" align="center">
                    &nbsp; &nbsp;<span class="style6">ENTER 
                    YOUR DETAILS:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px; height: 26px;">
                    First Name*:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="267px" Height="20px" 
                       ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Full name is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    E-mail*:</td>
                <td style="margin-left: 40px" class="style4">
                    <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="267px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Email is required">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Email id is not correct" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="height: 24px; width: 137px">
                    Contact No:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="266px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Contact no is equired">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox3" Display="Dynamic" 
                        ErrorMessage="Shud be of 10 digits" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px">
                    Age:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox4" runat="server" Width="264px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Age is required">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox4" Display="Dynamic" 
                        ErrorMessage="Age shud be between 14-35" MaximumValue="35" MinimumValue="14" 
                        Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="height: 24px; width: 137px">
                    Address:</td>
                <td class="style3">
                    &nbsp;<asp:TextBox ID="TextBox12" runat="server" Width="262px" 
                        style="margin-left: 0px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox12" ErrorMessage="Address is required">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px; height: 26px;">
                    city:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox6" runat="server" Width="261px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="City is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px">
                    State:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox7" runat="server" Width="260px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="State is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px">
                    country:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox8" runat="server" Width="259px" Height="16px" 
                        style="margin-bottom: 2px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Country is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="height: 24px; width: 137px">
                    User Name*:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox9" runat="server" Width="262px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Username is required">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="This expression does not validate" 
                        ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px">
                    Password*:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox10" runat="server" style="margin-right: 0px" 
                        Width="263px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox10" Display="Dynamic" 
                        ErrorMessage="Password necessary..."></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                        runat="server" ControlToValidate="TextBox10" 
                        ErrorMessage="password should be of 8 t0 10 characters" 
                        ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" 
                        Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Confirm Password*:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox11" runat="server" Width="263px" TextMode="Password" 
                        CausesValidation="True"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox10" ControlToValidate="TextBox11" 
                        ErrorMessage="password did not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;<asp:Button ID="Button1" runat="server" Text="Register" 
                        onclick="Button1_Click" BackColor="#66CCFF" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>
</asp:Content>

