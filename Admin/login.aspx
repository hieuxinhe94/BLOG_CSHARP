<%@ Page Title="Welcome Admin, Let`t Login" Language="C#" MasterPageFile="~/Users/MasterPageTmp.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Users_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container login_body">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">
            <h4>Welcome back. HIẾU PHẠM</h4>
            <input type="text" id="txtUserName" runat="server" class="form-control input-sm chat-input" placeholder="username" />
            <hr/>
            <input type="text" id="txtUserPassword" runat="server" class="form-control input-sm chat-input" placeholder="password" />
            <br/>
                 <input type="text" id="txtUserPassword2" runat="server" class="form-control input-sm chat-input" placeholder="mật khẩu cấp 2" />
            <br/>
                <label runat="server" id="lblResult" style="font-family:'Comic Sans MS';font-size:10px;color:red" class=" well-sm"></label>
           
            <div class="login_wrapper">

            <span class="group-btn">  
                <a href="#" runat="server" id="btnLogin" onserverclick="btnLogin_ServerClick" class="btn btn-primary btn-md">Đăng nhập <i class="fa fa-sign-in"></i></a>
            </span>

            </div>
                 <div class="login_wrapper">
                 <br/>
                   
            </div>
            </div>
        
        </div>
    </div>
</div>

</asp:Content>

