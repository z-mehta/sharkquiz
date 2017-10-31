<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageQues.master" AutoEventWireup="true" CodeFile="Instructions.aspx.cs" Inherits="Instructions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div class="sidebar_box"  
        <img src="images/img/quiz.jpg" />
             
               
		</div>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/subject.xml">
    </asp:XmlDataSource>
    </div>
    
</asp:Content>

