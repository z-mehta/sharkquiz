<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageQues.master" AutoEventWireup="true" CodeFile="forgotpwd.aspx.cs" Inherits="forgotpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


  <div>
    
    <fieldset>
     <legend>Forgot Password</legend>
     <asp:Label ID="lblEmail" runat="server" Text="Email Address: " />
     <asp:TextBox ID="txtEmail" runat="server"/>

     <asp:RequiredFieldValidator ID="RV1" runat="server" 
                                ControlToValidate="txtEmail" 
                                ErrorMessage="Please Enter EmailID" 
                                SetFocusOnError="True">
    </asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    <asp:ValidationSummary ID="ValidationSummary1"
                     runat="server" CssClass="error"  
             ShowMessageBox="True" ShowSummary="False"/>                     
    <asp:Label ID="lblMessage" runat="server" Text=""/>
    </fieldset> 
   
 </div>
  



</asp:Content>

