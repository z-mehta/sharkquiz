<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageQues.master" AutoEventWireup="true" CodeFile="HTML.aspx.cs" Inherits="HTML" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div><asp:Label ID="Label2" runat="server" Text="Available time: 10 mins"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        Current Time:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;End Time:
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </div>

    <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="1000">
        </asp:Timer>   
    <asp:Label ID="Label1" runat="server" Text="Label" visible="false"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Qid" 
    DataSourceID="SqlDataSource1">
        
    <ItemTemplate>
        &nbsp;<asp:Label ID="QidLabel" runat="server" Text='<%# Eval("Qid") %>'></asp:Label>
        Ques:&nbsp;<asp:Label ID="QuesLabel" runat="server" Text='<%# Eval("Ques") %>'></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ans") %>'></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="ans" DataValueField="ans">
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DaTaConnectionString3 %>" 
            SelectCommand="SELECT * FROM [ansHTML] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="QidLabel" DefaultValue="1" Name="id" 
                    PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DaTaConnectionString2 %>" 
    SelectCommand="SELECT [Qid], [Ques],[ans] FROM [html]"></asp:SqlDataSource>
    <br />
    </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
   </div>
  
</asp:Content>

