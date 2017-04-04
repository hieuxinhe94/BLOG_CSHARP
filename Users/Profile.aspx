<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UsersMasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Users_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="col-md-1"></div>
<div class="col-md-9">
<div class="container">
    <div class="row user-menu-container square">
        <div class="col-md-7 user-details">
            <div class="row coralbg white">
                <div class="col-md-6 no-pad">
                    <div class="user-pad">
                        <h3>Welcome, <%=objTblUser.Rows[0]["UserName"].ToString() %></h3>
                        <h4 class="white"><i class="fa fa-check-circle-o"></i> <%=objTblUser.Rows[0]["UserAdress"].ToString() %></h4>
                        <h4 class="white"><i class="fa fa-twitter"></i>  <%=objTblUser.Rows[0]["UserPhone"].ToString() %></h4>
                        <button type="button" class="btn btn-labeled btn-info"  data-toggle="modal" data-target="#modal1" >
                            <span class="btn-label"><i class="fa fa-pencil"></i></span>Chỉnh sửa</button>
                    </div>
                </div>
                <div class="col-md-6 no-pad">
                    <div class="user-image">
                        <img src="../images/user/<%=objTblUser.Rows[0]["UserImg"].ToString() %>" class="img-responsive thumbnail"/>
                    </div>
                </div>
            </div>
            <div class="row overview">
                <div class="col-md-4 user-pad text-center">
                    <h3>Bài viết</h3>
                    <h4><%=countPostByUser %></h4>
                </div>
                <div class="col-md-4 user-pad text-center">
                    <h3>Star</h3>
                    <h4>1</h4>
                </div>
                <div class="col-md-4 user-pad text-center">
                    <h3>Tín dụng</h3>
                    <h4>000$</h4>
                </div>
            </div>
        </div>
        <div class="col-md-1 user-menu-btns">
            <div class="btn-group-vertical square" id="responsive">
                <a href="#" class="btn btn-block btn-default active">
                  <i class="fa fa-bell-o fa-3x">1</i>
                </a>
                <a href="#" class="btn btn-default">
                  <i class="fa fa-envelope-o fa-3x">2</i>
                </a>
                <a href="#" class="btn btn-default">
                  <i class="fa fa-laptop fa-3x">3</i>
                </a>
                <a href="#" class="btn btn-default">
                  <i class="fa fa-cloud-upload fa-3x">4</i>
                </a>
            </div>
        </div>
        <div class="col-md-4 user-menu user-pad">
            <div class="user-menu-content active">
                <h4>
                 Hoạt động gần đây
                </h4>
                <ul class="user-menu-list">
                    <%for(int i =0 ; i <  objTblUserPost.Rows.Count && i<3 ; i++ ){ %>
                     <li>
                        <h5><i class="fa fa-user coral"></i><%=objTblUserPost.Rows[i]["PostTitle"] %> <small><%=objTblUserPost.Rows[i]["PostDayCreate"] %>  </small></h5>
                    </li>
                    <%} %>
                   
                    <li>
                       <a href="ListPosts.aspx">
                            <span class="btn-label"><i class="fa fa-bell-o"></i></span>Xem toàn bộ hoạt động </a>
                    </li>
                </ul>
            </div>
            <div class="user-menu-content">
                <h3>
                 Thông báo mới
                </h3>
                <ul class="user-menu-list">
                    <%for(int i =0 ; i <  objTblUserComment.Rows.Count ; i++ ){ %>
                     <li>
                        <h5><i class=" coral"></i><%=objTblUserComment.Rows[i]["[CmtName]"] %> <small><%=objTblUserComment.Rows[i]["CmtDayCreate"] %>  </small></h5>
                    </li>
                    <%} %>
                 
                    <li>
                        <a href="Comment.aspx">
                            <span class="btn-label"><i class="fa fa-bell-o"></i></span>Xem toàn bộ  </a>
                    </li>
                </ul>
            </div>
            <div class="user-menu-content">
                <h3>
                    Thống kê đánh giá
                </h3>
                <div class="row">
                     <%for(int i =0 ; i <  objTblUserPost.Rows.Count && i < 3 ; i++ ){ %>
                    <div class="col-md-6">
                        <div class="view">
                            <div class="caption">
                                <p>1000 Views</p>
                                <a href="#" rel="tooltip" title="xem"><span class="fa fa-heart-o fa-2x"></span></a>
                                <a href="#" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                            </div>
                               <img src="../Images/Post/<%=objTblUserPost.Rows[i]["PostImg"] %>" class="img-responsive" style="height:150px;width:auto">
                        </div>
                        <div class="info">
                            <p class="small" style="text-overflow: ellipsis"><%=objTblUserPost.Rows[i]["PostTitle"] %></p>
                            <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted <%=objTblUserPost.Rows[i]["PostDayCreate"] %></p>
                        </div>
                        <div class="stats turqbg">
                            <span class="fa fa-heart-o"> <strong>...</strong></span>
                            <span class="fa fa-eye pull-right"> <strong>...</strong></span>
                        </div>
                    </div>
                    <%} %>
                </div>
            </div>
            <div class="user-menu-content">
                <h2 class="text-center">
                   Dự định của tôi
                </h2>
                <center><i class="fa fa-cloud-upload fa-4x"></i></center>
                <div class="share-links">
                    <center><button type="button" class="btn btn-lg btn-labeled btn-success" href="#" style="margin-bottom: 15px;">
                            <span class="btn-label"><i class="fa fa-bell-o"></i></span>Chức năng đang được xây dựng
                    </button></center>
                    <center><button type="button" class="btn btn-lg btn-labeled btn-warning" href="#">
                            <span class="btn-label"><i class="fa fa-bell-o"></i></span>Chức năng đang được xây dựng
                    </button></center>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>


    <!--open modal-->

     <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content modal-content-one">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                  <h4 class="modal-title" id="myModalLabel">Thông tin cá nhân</h4>
                </div>
                <div class="modal-body">
              

                  <div class="container">
	<div class="row">
		<h5 style="font-family:'Comic Sans MS'; color:red">Hãy cung cấp những điều làm cho bạn trở nên thú vị. </h5>
	</div>
    
    <div class="row">
        <div class="col-sm-offset-4 col-sm-4">
            <div>
				<div class="form-group">
        			<label for="validate-text">Bút danh</label>
					<div class="input-group">
						<input runat="server" type="text" class="form-control" name="validate-text" id="txtUserName" placeholder="Bút danh" required="required"/>
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
				<div class="form-group">
        			<label for="validate-email">Email</label>
					<div class="input-group" data-validate="email">
						<input runat="server" type="text" class="form-control" name="validate-email" id="txtEmail" placeholder="Email " required="required"/>
						
                        <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
                <div class="form-group">
        			<label for="validate-phone">Phone</label>
					<div class="input-group" data-validate="phone">
						<input runat="server" type="text" class="form-control" name="validate-email" id="txtPhone" placeholder="09 7777 7777 " required="required"/>
                        <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
                  <div class="form-group">
        			<label for="validate-text">Address</label>
					<div class="input-group" >
						<input runat="server" type="text" class="form-control" name="validate-adress" id="txtAdress" placeholder="<%# countPostByUser.ToString() %>" />
                        <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
    			<div class="form-group">
        			<label for="validate-password">Mật khẩu</label>
					<div class="input-group">
                      <input runat="server" type="password" class="form-control" name="validate-password" id="txtPassword"  placeholder="***** " required="required"/>
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
        		<div class="form-group">
        			<label for="validate-length">Slogen / Châm ngôn sống </label>
					<div class="input-group" data-validate="length" data-length="5">
						<textarea runat="server" type="text" class="form-control" name="validate-length" id="txtSlogen"
                             placeholder="" required></textarea>
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
                <div class="form-group">
            		<label for="validate-select">Giới tính</label>
					<div class="input-group">
                        <select class="form-control" name="validate-select" id="validate-select" placeholder="Validate Select" required>
                            <option value="">Select an item</option>
                            <option value="item_1">Nam</option>
                            <option value="item_2">Nữ</option>
                            <option value="item_3">Không rõ</option>
                        </select>
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
            <div class="col-xs-12 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">  
            <!-- image-preview-filename input [CUT FROM HERE]-->
            <div class="input-group image-preview">
                <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove"></span> Clear
                    </button>
                    <!-- image-preview-input -->
                    <div class="btn btn-default image-preview-input">
                        <span class="glyphicon glyphicon-folder-open"></span>
                        <span class="image-preview-input-title">Avatar</span>
                            <asp:FileUpload ID="upImage1" name="input-file-preview" runat="server" accept="image/png, image/jpeg, image/gif"  />
                       <!-- rename it -->
                    </div>
                </span>

            </div>
                  <asp:Label ID="lblImg1" Text="" CssClass="MQTT_Normal_Text" runat="server"></asp:Label>
            <br />
            <asp:TextBox ID="txtImage" runat="server" Width="0px" Visible="false"></asp:TextBox> <!-- /input-group image-preview [TO HERE]--> 
        </div>

                <button type="submit" runat="server" id="btnSubmit" onserverclick="btnSubmit_ServerClick" class="btn btn-primary col-xs-12" disabled>Hoàn thành</button>
            </div>
        </div>
    </div>
</div>
                </div>
                  <div class="row">    
     
    </div>
              </div>
         <script src="css/checkInput.js"></script>
         <script src="css/ImageUpload.js"></script>
          <script>

        $(document).ready(function () {
            var $btnSets = $('#responsive'),
            $btnLinks = $btnSets.find('a');

            $btnLinks.click(function (e) {
                e.preventDefault();
                $(this).siblings('a.active').removeClass("active");
                $(this).addClass("active");
                var index = $(this).index();
                $("div.user-menu>div.user-menu-content").removeClass("active");
                $("div.user-menu>div.user-menu-content").eq(index).addClass("active");
            });
        });

        $(document).ready(function () {
            $("[rel='tooltip']").tooltip();

            $('.view').hover(
                function () {
                    $(this).find('.caption').slideDown(250); //.fadeIn(250)
                },
                function () {
                    $(this).find('.caption').slideUp(250); //.fadeOut(205)
                }
            );
        });

    </script>

</asp:Content>

