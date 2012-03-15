<%@ Page Title="Просмотр записей" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Просмотр записей</h2>
    <p>
        Для отображения записи выберите день (просто нажав на него в календаре).</p>
    <p>
        &nbsp;Пользователь:
        <asp:Label ID="Label2" runat="server" ForeColor="#003399" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged">
            <SelectedDayStyle BackColor="#99CCFF" />
            <SelectorStyle BackColor="White" />
            <TitleStyle BackColor="#99CCFF" />
        </asp:Calendar>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Дата" Type="String"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Total for day:
        <asp:Label ID="Label15" runat="server" ForeColor="#003399"></asp:Label>
&nbsp;:
        <asp:Label ID="Label16" runat="server" ForeColor="#003399"></asp:Label>
&nbsp;self-deployment/
        <asp:Label ID="Label17" runat="server" ForeColor="#003399"></asp:Label>
&nbsp;:
        <asp:Label ID="Label18" runat="server" ForeColor="#003399"></asp:Label>
&nbsp;working/
        <asp:Label ID="Label19" runat="server" ForeColor="#003399"></asp:Label>
&nbsp;:
        <asp:Label ID="Label20" runat="server" ForeColor="#003399"></asp:Label>
&nbsp;extra/
        <asp:Label ID="Label21" runat="server" ForeColor="#003399"></asp:Label>
&nbsp;:
        <asp:Label ID="Label22" runat="server" ForeColor="#003399"></asp:Label>
&nbsp;team</p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Self-development" Type="String"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [proekt], [about], [hour], [minute] FROM [Table1] WHERE (([date] = @date) AND ([name1] = @name1) AND ([work_time] = @work_time))">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="date" 
                    PropertyName="SelectedDate" Type="String" />
                <asp:ControlParameter ControlID="Label2" Name="name1" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="Label3" Name="work_time" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Width="600px" 
            onrowdatabound="GridView1_RowDataBound1">
            <Columns>
                <asp:BoundField DataField="proekt" HeaderText="Project" SortExpression="proekt">
                <ControlStyle Width="100px" />
                <HeaderStyle Width="100px" />
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="about" HeaderText="Activity" SortExpression="about">
                <ControlStyle Width="400px" />
                <HeaderStyle Width="400px" />
                <ItemStyle Width="400px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="hour" SortExpression="hour">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("hour") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("hour") %>'></asp:Label>
                    </ItemTemplate>
                    <ControlStyle Width="50px" />
                    <HeaderStyle Width="50px" />
                    <ItemStyle Width="50px" />

                </asp:TemplateField>
                <asp:TemplateField HeaderText="minute" SortExpression="minute">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("minute") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("minute") %>'></asp:Label>
                    </ItemTemplate>
                    <ControlStyle Width="50px" />
                    <HeaderStyle Width="50px" />
                    <ItemStyle Width="50px" />
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Total:
        <asp:Label ID="Label7" runat="server"></asp:Label>
        &nbsp;:
        <asp:Label ID="Label8" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Working time"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [proekt], [hour], [minute], [about] FROM [Table1] WHERE (([date] = @date) AND ([name1] = @name1) AND ([work_time] = @work_time))">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="date" 
                    PropertyName="SelectedDate" Type="String" />
                <asp:ControlParameter ControlID="Label2" Name="name1" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="Label4" Name="work_time" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" 
         Width="600px" onrowdatabound="GridView2_RowDataBound">
            <Columns>
                <asp:BoundField DataField="proekt" HeaderText="Project" 
                    SortExpression="proekt" >
                <ControlStyle Width="100px" />
                <HeaderStyle Width="100px" />
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="about" HeaderText="Activity" 
                    SortExpression="about" >
                <ControlStyle Width="400px" />
                <HeaderStyle Width="400px" />
                <ItemStyle Width="400px" />
                </asp:BoundField>
                <asp:BoundField DataField="hour" HeaderText="hour" SortExpression="hour" >
                <ControlStyle Width="50px" />
                <HeaderStyle Width="50px" />
                <ItemStyle Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="minute" HeaderText="minute" 
                    SortExpression="minute" >
                <ControlStyle Width="50px" />
                <HeaderStyle Width="50px" />
                <ItemStyle Width="50px" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Total:
    <asp:Label ID="Label9" runat="server"></asp:Label>
&nbsp;:
    <asp:Label ID="Label10" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Extra time"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [proekt], [about], [hour], [minute] FROM [Table1] WHERE (([date] = @date) AND ([name1] = @name1) AND ([work_time] = @work_time))">
        <SelectParameters>
            <asp:ControlParameter ControlID="Calendar1" Name="date" 
                PropertyName="SelectedDate" Type="String" />
            <asp:ControlParameter ControlID="Label2" Name="name1" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="Label5" Name="work_time" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3" Width="600px" 
        onrowdatabound="GridView3_RowDataBound">
        <Columns>
            <asp:BoundField DataField="proekt" HeaderText="Project" 
                SortExpression="proekt" >
            <ControlStyle Width="100px" />
            <HeaderStyle Width="100px" />
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="about" HeaderText="Activity" 
                SortExpression="about" >
            <ControlStyle Width="400px" />
            <HeaderStyle Width="400px" />
            <ItemStyle Width="400px" />
            </asp:BoundField>
            <asp:BoundField DataField="hour" HeaderText="hour" SortExpression="hour" >
            <ControlStyle Width="50px" />
            <HeaderStyle Width="50px" />
            <ItemStyle Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="minute" HeaderText="minute" 
                SortExpression="minute" >
            <ControlStyle Width="50px" />
            <HeaderStyle Width="50px" />
            <ItemStyle Width="50px" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Total:
    <asp:Label ID="Label11" runat="server"></asp:Label>
&nbsp;:
    <asp:Label ID="Label12" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Team work"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [proekt], [about], [hour], [minute] FROM [Table1] WHERE (([date] = @date) AND ([name1] = @name1) AND ([work_time] = @work_time))">
        <SelectParameters>
            <asp:ControlParameter ControlID="Calendar1" Name="date" 
                PropertyName="SelectedDate" Type="String" />
            <asp:ControlParameter ControlID="Label2" Name="name1" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="Label6" Name="work_time" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource4" Width="600px" 
        onrowdatabound="GridView4_RowDataBound">
        <Columns>
            <asp:BoundField DataField="proekt" HeaderText="Project" 
                SortExpression="proekt" >
            <ControlStyle Width="100px" />
            <HeaderStyle Width="100px" />
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="about" HeaderText="Activity" 
                SortExpression="about" >
            <ControlStyle Width="400px" />
            <HeaderStyle Width="400px" />
            <ItemStyle Width="400px" />
            </asp:BoundField>
            <asp:BoundField DataField="hour" HeaderText="hour" SortExpression="hour" >
            <ControlStyle Width="50px" />
            <HeaderStyle Width="50px" />
            <ItemStyle Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="minute" HeaderText="minute" 
                SortExpression="minute" >
            <ControlStyle Width="50px" />
            <HeaderStyle Width="50px" />
            <ItemStyle Width="50px" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Total:
    <asp:Label ID="Label13" runat="server"></asp:Label>
&nbsp;:
    <asp:Label ID="Label14" runat="server"></asp:Label>
    </asp:Content>
