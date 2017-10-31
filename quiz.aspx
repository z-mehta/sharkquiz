<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageQues.master" AutoEventWireup="true" CodeFile="quiz.aspx.cs" Inherits="quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></div>--%>
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label6" runat="server" Text="Labl" Font-Size="XX-Large" Font-Italic="True" 
            Font-Bold="True" ForeColor="#99FF33" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
</div>

<div><asp:Label ID="Label2" runat="server" Text="Available time: 2 mins"></asp:Label>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="10000">
            </asp:Timer>
            Current time:&nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            End time:
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="qid" 
                DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    &nbsp;ques
                    <asp:Label ID="qidLabel" runat="server" Text='<%# Eval("qid") %>' />
                    :
                    <asp:Label ID="quesLabel" runat="server" Text='<%# Eval("ques") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ans") %>' Visible="False"></asp:Label>
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="false" 
                        DataSourceID="SqlDataSource2" DataTextField="ans" DataValueField="ans" 
                        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    </asp:RadioButtonList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:QuiZConnectionString2 %>" 
                        SelectCommand="SELECT [qid], [ans] FROM [ansC] WHERE ([qid] = @qid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="qidLabel" DefaultValue="1" Name="qid" 
                                PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QuiZConnectionString %>" 
                SelectCommand="SELECT [qid], [ques],[ans] FROM [quesC]"></asp:SqlDataSource>
                
    
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click1" />

      
</asp:Content>

