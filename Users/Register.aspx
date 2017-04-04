<%@ Page Title="" Language="C#" MasterPageFile="~/Users/MasterPageTmp.master" enableEventValidation="true" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Users_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="container">
			<div class="row main">
				<asp:ScriptManager runat="server" ID="script">
				</asp:ScriptManager>
				<div class="main-login main-center">
                    <h6 class="title"> Đăng kí làm tác giả cùng NgheanSunshine.info</h6>
                   
                            <div class="form-horizontal" >
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Tên của bạn</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" runat="server" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Thư Điện Tử</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="email" runat="server" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>
                        <div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Điện thoại</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" runat="server" class="form-control" name="email" id="phone"  placeholder="Enter your Phone"/>
								</div>
							</div>
						</div>

                        <div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Địa chỉ</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" runat="server" class="form-control" name="email" id="address"  placeholder="Enter your Addess"/>
								</div>
							</div>
						</div>


						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Tài Khoản - Bút Ký</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" runat="server" class="form-control" name="username" id="username"  placeholder="Enter your NickName"/>
								</div>
							</div>
						</div>
                        <div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Slogen/Triết lý sống</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<textarea type="text" runat="server" class="form-control" name="username" id="slogen"  placeholder="I want to flying arow the world !!"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Mật Khẩu</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" runat="server" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Xác nhận Mật khẩu</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" runat="server" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group ">
                            <asp:Button  runat="server" ID="btnRegister" OnClick="btnRegister_Click" CssClass="btn btn-primary btn-lg btn-block login-button " Text="Đăng ký" />
						</div>
                      
						<div class="login-register">
                              <hr />
				            <a href="login.aspx">Đăng nhập</a>
				         </div>
                          
					</div>
                       
					
				</div>
			</div>
		</div>
</asp:Content>

