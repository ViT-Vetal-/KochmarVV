<%@ Page Title="Добавить запись" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Добавление новых записей</h2>
    <p>
        Для добавления новой записи необходимо выбрать день (просто нажав на 
        него в 
        календаре) и заполнить остальные поля, после чего нажать кнопку &quot;добавить&quot;.<asp:Calendar 
            ID="Calendar1" runat="server">
            <DayHeaderStyle BackColor="White" BorderColor="#66CCFF" />
            <OtherMonthDayStyle BackColor="White" />
            <SelectedDayStyle BackColor="#99CCFF" />
            <TitleStyle BackColor="#99CCFF" />
        </asp:Calendar>
    </p>
<p>
        Пользователь:
        <asp:Label ID="Label1" runat="server" ForeColor="#003399" Text="Пользователь "></asp:Label>
&nbsp;&nbsp; Проект&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Phenix 2013</asp:ListItem>
            <asp:ListItem>JastAsk</asp:ListItem>
            <asp:ListItem>N/A</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp; Занятость
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Self-development</asp:ListItem>
            <asp:ListItem>Working time</asp:ListItem>
            <asp:ListItem>Extra time</asp:ListItem>
            <asp:ListItem>Team work</asp:ListItem>
        </asp:DropDownList>
&nbsp; Количество времени
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
        </asp:DropDownList>
&nbsp;:
        <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>40</asp:ListItem>
            <asp:ListItem>50</asp:ListItem>
        </asp:DropDownList>
    </p>
<p>
        &nbsp;Описание:</p>
<p>
        <asp:TextBox ID="TextBox1" runat="server" Height="73px" Rows="5" 
            TextMode="MultiLine" Width="297px"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [proekt], [work_time], [name1], [date], [about], [hour], [minute] FROM [Table1]" 
            InsertCommand="INSERT INTO Table1(proekt, work_time, name1, date, about, hour, minute) VALUES (@proekt, @work_time, @name1, @date, @about, @hour, @minute)">
            <InsertParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="date" 
                    PropertyName="SelectedDate"  Type="String"/>
                <asp:ControlParameter ControlID="Label1" Name="name1" PropertyName="Text" Type="String"/>
                <asp:ControlParameter ControlID="DropDownList1" Name="proekt" 
                    PropertyName="SelectedValue" Type="String"/>
                <asp:ControlParameter ControlID="DropDownList2" Name="work_time" 
                    PropertyName="SelectedValue" Type="String"/>
                <asp:ControlParameter ControlID="DropDownList3" Name="hour" 
                    PropertyName="SelectedValue" Type="String"/>
                <asp:ControlParameter ControlID="DropDownList4" Name="minute" 
                    PropertyName="SelectedValue" Type="String"/>
                <asp:ControlParameter ControlID="TextBox1" Name="about" PropertyName="Text" Type="String"/>
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Добавить" 
            onclick="Button1_Click" />
        &nbsp;</p>
</asp:Content>
