<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            
            <td><h2>Customer Registeration</h2></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td><style type="text/css">
    .auto-style3 {
        width: 210px;
    }
    .auto-style4 {
                        width: 215px;
                    }
                    .auto-style5 {
                        width: 114px;
                    }
                    .auto-style7 {
                        width: 341px;
                    }
                </style>

<table style="width: 76%;" class="table">
    <tr>
        <td class="auto-style5">Name</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" ValidationGroup="group1"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="* Field required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="group1"></asp:RequiredFieldValidator>
        </td>
        
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Age</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="group1"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="* Enter age in numeric" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d\d" ValidationGroup="group1"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">D.O.B.</td>
        <td class="auto-style7">
            <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="group1">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" ValidationGroup="group1">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem>Mar</asp:ListItem>
                <asp:ListItem>Apr</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>Jun</asp:ListItem>
                <asp:ListItem>Jul</asp:ListItem>
                <asp:ListItem>Aug</asp:ListItem>
                <asp:ListItem>Sep</asp:ListItem>
                <asp:ListItem>Oct</asp:ListItem>
                <asp:ListItem>Nov</asp:ListItem>
                <asp:ListItem>Dec</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server" ValidationGroup="group1">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ForeColor="Red" InitialValue="Select" ValidationGroup="group1">*</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ForeColor="Red" InitialValue="Select" ValidationGroup="group1">*</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList3" ForeColor="Red" InitialValue="Select" ValidationGroup="group1">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Email ID</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="group1"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="* Email not correct" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="group1"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Gender</td>
        <td class="auto-style7">
&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" ValidationGroup="group1">
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mobile No.</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="group1"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="* Number not valid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(((\+?\(91\))|0|((00|\+)?91))-?)?[7-9]\d{9}$" ValidationGroup="group1"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Address</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ForeColor="Red" ValidationGroup="group1">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Password</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="group1" Type="password" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="#FF3300" ValidationGroup="group1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Confirm Password</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="group1" Type="password"></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="* Password not matched" ForeColor="Red" SetFocusOnError="True" ValidationGroup="group1"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style7">
            <asp:Button ID="Button1" runat="server" Text="Sign up" CssClass="button" OnClick="Button1_Click" ValidationGroup="group1" />
        </td>
    </tr>
</table>
                &nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

