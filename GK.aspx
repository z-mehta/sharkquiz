<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageQues.master" AutoEventWireup="true" CodeFile="GK.aspx.cs" Inherits="GK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Label ID="Label2" runat="server" Text="Available Time:10 minutes"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True" 
        Font-Italic="True" ForeColor="Lime" style="font-size: xx-large" Visible="False"></asp:Label>
    <br />
    <asp:Timer ID="Timer2" runat="server" Interval="1000" ontick="Timer2_Tick">
    </asp:Timer>
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
     &nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server" >
        <ContentTemplate>
    
    Current Time:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    End Time:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="1000" >
    </asp:Timer>

    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            &nbsp;<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            &nbsp;ques:&nbsp;<asp:Label ID="quesLabel" runat="server" Text='<%# Eval("ques") %>'></asp:Label>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ans") %>' Visible="false"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="ans" DataValueField="ans">
            </asp:RadioButtonList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QuiZConnectionString12 %>" 
                SelectCommand="SELECT * FROM [ansGK] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="idLabel" Name="id" PropertyName="Text" 
                        Type="Int32" DefaultValue="1" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QuiZConnectionString11 %>" 
        SelectCommand="SELECT [id], [ques],[ans] FROM [quesGK]"></asp:SqlDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
</asp:Content>

