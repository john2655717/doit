<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="練習課本1.TEST.doit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div >

            <asp:Table ID="Tb1" runat="server">
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2"  >
                        查詢<br/>
                　      名稱:<asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" AutoPostBack="true" Width="50px"></asp:TextBox>(請輸入姓)
                    </asp:TableCell>
                    <asp:TableCell Width="100px"></asp:TableCell>
                    <asp:TableCell >
                         加入名稱<br/>
                         編號:<asp:TextBox ID="TextBox1" runat="server" Width="70px" ></asp:TextBox>
                         名稱:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                         備註:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                         <asp:TextBox ID="TextBox5" runat="server" Visible="false"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="加　入" OnClick="Button1_Click" />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow >
                    <asp:TableCell VerticalAlign="Top">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource3">
                            <Columns>
                                <asp:BoundField DataField="name" SortExpression="name" HeaderText="name" ReadOnly="True"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:doit %>' SelectCommand="SELECT * FROM [select]" OldValuesParameterFormatString="original_{0}">
                        </asp:SqlDataSource>
                    </asp:TableCell>

                    <asp:TableCell VerticalAlign="Top">

                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="name">
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                            </Columns>
                        </asp:GridView>
                        <asp:Button ID="Button2" runat="server" Text="複製上面的名稱" OnClick="Button2_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doit %>" SelectCommand="SELECT * FROM [select] WHERE ([fackname] = @fackname)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox4" Name="fackname" PropertyName="Text" Type="String" />
                           </SelectParameters>
                        </asp:SqlDataSource>

                    </asp:TableCell>
                   <asp:TableCell Width="100px"></asp:TableCell>
                    <asp:TableCell VerticalAlign="Top">
                        <asp:GridView ID="GV1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="name">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                                <asp:BoundField DataField="Id" HeaderText="編號" ReadOnly="True" SortExpression="Id"></asp:BoundField>
                                <asp:BoundField DataField="name" HeaderText="名稱" SortExpression="name"></asp:BoundField>

                                <asp:BoundField DataField="null1" HeaderText="備註" SortExpression="null1"></asp:BoundField>
                                <asp:BoundField DataField="null2" SortExpression="null2"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="name" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:doit %>' DeleteCommand="DELETE FROM [name] WHERE [Id] = @original_Id AND [name] = @original_name AND (([null1] = @original_null1) OR ([null1] IS NULL AND @original_null1 IS NULL)) AND (([null2] = @original_null2) OR ([null2] IS NULL AND @original_null2 IS NULL))" InsertCommand="INSERT INTO [name] ([Id], [name], [null1], [null2]) VALUES (@Id, @name, @null1, @null2)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [name]" UpdateCommand="UPDATE [name] SET [name] = @name, [null1] = @null1, [null2] = @null2 WHERE [Id] = @original_Id AND [name] = @original_name AND (([null1] = @original_null1) OR ([null1] IS NULL AND @original_null1 IS NULL)) AND (([null2] = @original_null2) OR ([null2] IS NULL AND @original_null2 IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="original_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_null1" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_null2" Type="Int32"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="null1" Type="String"></asp:Parameter>
                                <asp:Parameter Name="null2" Type="Int32"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="null1" Type="String"></asp:Parameter>
                                <asp:Parameter Name="null2" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="original_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_null1" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_null2" Type="Int32"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </asp:TableCell>

                </asp:TableRow>
            </asp:Table>


            
            
            <br />
        
        
    </form>
</body>
</html>
