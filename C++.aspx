<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageQues.master" AutoEventWireup="true" CodeFile="C++.aspx.cs" Inherits="C__" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
   
    <asp:Label ID="Label1" runat="server" Text="Available time: 5mins" Visible="true"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
        ForeColor="Lime" style="font-size: xx-large" Text="Label" Visible="False"></asp:Label>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="1000">
    </asp:Timer>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
   

    Current Time<asp:Label ID="Label2" runat="server" Visible="true"></asp:Label>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    End Time<asp:Label ID="Label4" runat="server"></asp:Label>

     
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
    DataSourceID="SqlDataSource1">
        
    <ItemTemplate>
        &nbsp;<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>'></asp:Label>
        &nbsp;ques:&nbsp;<asp:Label ID="quesLabel" runat="server" Text='<%# Eval("ques") %>'></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ans") %>' Visible="false"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="ans" DataValueField="ans">
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QuiZConnectionString14 %>" 
            SelectCommand="SELECT * FROM [ansc++] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="idLabel" DefaultValue="1" Name="id" 
                    PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:QuiZConnectionString13 %>" 
    SelectCommand="SELECT [id], [ques],[ans] FROM [quesC++]"></asp:SqlDataSource>
    
     </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
    <br />

</asp:Content>

