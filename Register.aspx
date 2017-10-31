<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 26px;
            width: 345px;
        }
        .style2
        {
            width: 345px;
        }
        .style3
        {
            height: 24px;
            width: 345px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table 
            style="width: 50%; border-style: solid; border-width: 1px" align="center">
            <tr>
                <td class="colsa" colspan="2" align="center" style="height: 24px">
                    &nbsp; &nbsp; ALL FIELDS ARE REQUIRED&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px; height: 26px;">
                    Full Name:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="274px" 
                       ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Full name is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px">
                    E-mail:</td>
                <td style="margin-left: 40px" class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="267px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Email is required">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Email id is not correct" 
                        ValidationExpression="Email"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="height: 24px; width: 137px">
                    Contact No:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="266px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Contact no is equired">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px">
                    Age:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox4" runat="server" Width="264px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Age is required">*</asp:RequiredFieldValidator>
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
                <td class="style1">
                    <asp:TextBox ID="TextBox6" runat="server" Width="261px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="City is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px">
                    State:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox7" runat="server" Width="260px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="State is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px">
                    country:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox8" runat="server" Width="259px" Height="16px" 
                        style="margin-bottom: 2px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Country is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="height: 24px; width: 137px">
                    User Name:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox9" runat="server" Width="262px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Username is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px">
                    Password:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox10" runat="server" style="margin-right: 0px" 
                        Width="263px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="colsa" style="width: 137px">
                    Confirm Password:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox11" runat="server" Width="263px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox10" ControlToValidate="TextBox11" 
                        ErrorMessage="password did not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="colsa" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;<asp:Button ID="Button1" runat="server" Text="Register" 
                        onclick="Button1_Click" BackColor="#66CCFF" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>

</asp:Content>

