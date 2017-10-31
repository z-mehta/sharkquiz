<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageQues.master" AutoEventWireup="true" CodeFile="networking.aspx.cs" Inherits="networking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Label ID="Label2" runat="server" Text="Available time: 10 mins"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
        ForeColor="Lime" style="font-size: xx-large" Text="Label" Visible="False"></asp:Label>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

    <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
    </asp:Timer>
    <div>Current Time:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        EndTime:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="qid" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            &nbsp;ques
            <asp:Label ID="qidLabel" runat="server" Text='<%# Eval("qid") %>'></asp:Label>
            : <asp:Label ID="quesLabel" runat="server" Text='<%# Eval("ques") %>'></asp:Label>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("ans") %>' Visible="false"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="ans" DataValueField="ans">
            </asp:RadioButtonList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QuiZConnectionString7 %>" 
                SelectCommand="SELECT * FROM [ansnet] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="qidLabel" DefaultValue="1" Name="id" 
                        PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <br />
        </ItemTemplate>
         
         </asp:DataList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QuiZConnectionString5 %>" 
        SelectCommand="SELECT [qid], [ques],[ans] FROM [quesnet]"></asp:SqlDataSource>
    
        </ContentTemplate>
    </asp:UpdatePanel>
   
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
   
</asp:Content>

