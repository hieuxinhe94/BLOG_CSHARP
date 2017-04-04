<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Users/UsersMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Users_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="css/usersStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
        <!--each tile should specify what page type it opens (to determine which animation) and the corresponding page name it should open-->
        <div class="dashboard clearfix">
            <ul class="tiles">
                <div class="col1 clearfix">
                    <li class="tile tile-big tile-1 slideTextUp" data-page-type="r-page" data-page-name="random-r-page">
                        <div><p class="glyphicon glyphicon-pencil"> </p></div>
                        <div> <p><a href="AddPost.aspx">Viết bài</a></p> </div>
                    </li>
                    <li class="tile tile-small tile tile-2 slideTextRight" data-page-type="s-page" data-page-name="random-restored-page">
                        <div><p><a href="Profile.aspx">Chỉnh sửa thông tin</a></p></div>
                        <div><p class="glyphicon glyphicon-user"></p></div>
                    </li>
                    <li class="tile tile-small last tile-2 slideTextRight" data-page-type="r-page" data-page-name="random-r-page">
                         <div><p><a href="ListPosts.aspx">Quản lý bài đăng</a></p></div>
                          <div><p class="glyphicon glyphicon-list"> </p></div>
                    </li>
                    <li class="tile tile-big tile-3 fig-tile" data-page-type="r-page" data-page-name="random-r-page">
                        <figure>
                            <img src="css/banner.png" />
                          
                            <figcaption class="tile-caption caption-left"> <p class="glyphicon glyphicon-circle-arrow-left"></p> </figcaption>
                        </figure>
                    </li>
                </div>
                <div class="col2 clearfix">
                    <li class="tile tile-big tile-5" data-page-type="r-page" data-page-name="random-r-page">
                        <div></div>
                          <div><p class="glyphicon glyphicon-comment"></p><p> <a href="Comment.aspx"> Các phản hồi</a></p></div>
                      
                    </li>
                    <li class="tile tile-big tile-6 slideTextLeft" data-page-type="r-page" data-page-name="random-r-page">
                        <div><p><span class="glyphicon glyphicon-gift"></span></p></div>
                        <div><p>Lợi nhuận</p></div>
                    </li>
                    <!--Tiles with a 3D effect should have the following structure:
                        1) a container inside the tile with class of .faces
                        2) 2 figure elements, one with class .front and the other with class .back-->
                    <li class="tile tile-small tile-7 rotate3d rotate3dX" data-page-type="r-page" data-page-name="random-r-page">
                        <div class="faces">
                            <div class="front"> <span class=""></span></div>
                            <div class="back"><p> </p></div>
                        </div>
                    </li>
                    <li class="tile tile-small last tile-8 rotate3d rotate3dY" data-page-type="r-page" data-page-name="random-r-page">
                        <div class="faces">
                            <div class="front"><span class=""></span></div>
                            <div class="back"><p></p></div>
                        </div>
                    </li>
                </div>
                <div class="col3 clearfix">
                    <li class="tile tile-2xbig tile-9 fig-tile" data-page-type="custom-page" data-page-name="random-r-page">
                        <figure>
                            <img src="css/userView.jpg" />
                          
                            <figcaption class="tile-caption caption-bottom">
                              <a href="AnalysisPost.aspx">  Thống kê : Lượng người dùng tiếp xúc với bài viết của bạn </a>
                        </figure>
                    </li>
                    <li class="tile tile-big tile-10" data-page-type="s-page" data-page-name="custom-page">
                        <div><p><a href="Report.aspx"> Báo cáo phản hồi </a></p></div>
                    </li>
                </div>
            </ul>
        </div><!--end dashboard-->
    

</asp:Content>

