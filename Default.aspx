<%@ Page Title=" TRANG CHỦ " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="row">
        <div class="col-xs-12 text-center menu-2">
            <div id="fh5co-logo">
                <h1>
                    <a href="index.html">NgheAnSunshine<span>.</span>
                        <small>Lưu giử dùm tôi những điều thú vị</small>
                    </a>
                </h1>
            </div>
        </div>
    </div>

    </div>
	</nav>
    <!-- Kết nói với site.master -->
    <aside id="fh5co-hero">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="flexslider animate-box">
                        <ul class="slides">
                            <% for (int i = 0; i < objTblPostTop.Rows.Count && i < 3; i++)
                               { %>
                            
                             <li style="background-image: url('images/post/<%=objTblPostTop.Rows[i]["PostImg"] %>' );">
                                <div class="overlay-gradient"></div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-10 col-md-offset-1 slider-text">
                                            <div class="slider-text-inner">
                                                <h1><%=objTblPostTop.Rows[i]["PostTitle"] %></h1>
                                                <h2><%=objTblPostTop.Rows[i]["PostDescription"] %> <a href="#duongdan" target="_blank">URL</a></h2>
                                                <p class="ct"><a href="/Detailt.aspx?post=<%=objTblPostTop.Rows[i]["PostId"] %>">Đọc thêm <i class="icon-arrow-right"></i></a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>


                             <% } %>

                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <%if (objTblPostTop.Rows.Count > 3)
                      { %>
                    <a href="#" class="featured text-center animate-box" style="background-image: url('images/post/<%=objTblPostTop.Rows[3]["PostImg"] %>');">
                        <div class="desc">
                            <span class="date"><%=objTblPostTop.Rows[3]["PostDayCreate"].ToString() %></span>
                            <h3><%=objTblPostTop.Rows[3]["PostTitle"] %></h3>
                            <span class="category"><%=objTblPostTop.Rows[3]["PostDescription"] %></span>
                        </div>
                    </a>
                    <%} %>
                     <%if (objTblPostTop.Rows.Count > 4)
                       { %>
                    <a href="#" class="featured text-center animate-box" style="background-image: url('images/post/<%=objTblPostTop.Rows[4]["PostImg"] %>');">
                        <div class="desc">
                            <span class="date"><%=objTblPostTop.Rows[4]["PostDayCreate"].ToString() %></span>
                            <h3 style="height:50px;overflow:hidden"><%=objTblPostTop.Rows[4]["PostTitle"] %></h3>
                            <span class="category"><p style="height:100px ; overflow:hidden"><%=objTblPostTop.Rows[4]["PostDescription"] %></p></span>
                        </div>
                    </a>
                    <%} %>
                </div>
            </div>
        </div>
    </aside>

    <div id="fh5co-blog-popular">
        <div class="container">
            <div class="row animate-box">
                <div class="col-md-12 col-md-offset-0 text-center fh5co-heading">
                    <h2><span>Nỗi bật </span></h2>
                </div>
            </div>
            <div class="row">
                <%foreach(System.Data.DataRow row in objTblPostHot.Rows) { %>

                <div class="col-md-3">
                    <div class="fh5co-blog animate-box">
                        <a href="#chitiet">
                            <img class="img-responsive" src="images/post/<%=row["PostImg"] %> " style="height:250px" alt=""></a>
                        <div class="blog-text">
                            <h3><a href="#"><%=row["PostTitle"] %> </a><small><%=row["PostAuthorId"] %></small></h3>
                        </div>
                    </div>
                </div>
                

                <%} %>
               
            </div>
        </div>
    </div>

    <div id="fh5co-content">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-padded-right">
                     <div class="row">
                        <%if(objTblPostTop1.Rows.Count == 1){ %>
                        <div class="col-md-12">
                            <div class="fh5co-blog animate-box">
                                <div class="title title-pin text-center">
                                    <span class="posted-on"><%=objTblPostTop1.Rows[0]["PostDayCreate"] %></span>
                                    <h3><a href="#">5 <i class="glyphicon glyphicon-star"></i> </a></h3>
                                    <span class="category"> Đặc Săc </span>
                                </div>
                                <a href="#">
                                    <img class="img-responsive" src="images/post/<%=objTblPostTop1.Rows[0]["PostImg"] %> " alt=""></a>
                                <div class="blog-text text-center">
                                    <p>
                                    <%=objTblPostTop1.Rows[0]["PostDescription"] %> 

                                    </p>
                                    <ul class="fh5co-social-icons">
                                        <li>Chia sẻ :</li>
                                        <li><a href="#"><i class="icon-twitter-with-circle"></i></a></li>
                                        <li><a href="#"><i class="icon-facebook-with-circle"></i></a></li>
                                        <li><a href="#"><i class="icon-linkedin-with-circle"></i></a></li>
                                        <li><a href="#"><i class="icon-dribbble-with-circle"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                         <%} %>

                         <%foreach(System.Data.DataRow row in objTblPostRandom.Rows){ %>
                        <div class="col-md-6">
                            <div class="fh5co-blog animate-box">
                                <div class="title text-center">
                                    <span class="posted-on"><%=row["PostDayCreate"] %></span>
                                    <h3 style="height:55px ; overflow:hidden"><a href="#"><%=row["PostTitle"] %> </a></h3>
                                    <span class="category"><%=row["PostCategoryId"] %></span>
                                </div>
                                <a href="#">
                                    <img class="img-responsive" style="height:250px" src="images/post/<%=row["PostImg"] %>" alt=""></a>
                                <div class="blog-text text-center">
                                    <p style="height:100px;overflow:hidden"><%=row["PostDescription"] %></p>
                                    <ul class="fh5co-social-icons">
                                        <li>Chia sẻ :</li>
                                        <li><a href="#"><i class="icon-twitter-with-circle"></i></a></li>
                                        <li><a href="#"><i class="icon-facebook-with-circle"></i></a></li>
                                        <li><a href="#"><i class="icon-linkedin-with-circle"></i></a></li>
                                        <li><a href="#"><i class="icon-dribbble-with-circle"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <% } %> 
                     

                    </div>

                 
                   
                </div>

                <aside id="sidebar">
                    <div class="col-md-3">
                        <div class="side animate-box">
                            <div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
                                <h2><span>About Me</span></h2>
                            </div>
                            <div class="fh5co-staff">
                                <img src="https://scontent.fhan2-2.fna.fbcdn.net/v/t1.0-9/12279172_744320285712502_6184775055195268340_n.jpg?oh=7c1fb4d1f7885dbb952cf969fb5f1715&oe=5969D358" alt="hiếu đẹp trai">
                                <h3>Phạm Hiếu</h3>
                                <strong class="role">Web Backend , Android Developer , BigData</strong>
                                <p>Admin Description </p>
                                <ul class="fh5co-social-icons">
                                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                                    <li><a href="#"><i class="icon-dribbble"></i></a></li>
                                    <li><a href="#"><i class="icon-github"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="side animate-box">
                            <div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
                                <h2><span>Bài viết mới  </span></h2>
                            </div>
                            <%foreach(System.Data.DataRow row in objTblPostNews.Rows){ %>

                               <div class="blog-entry">
                                <a href="Detailt.aspx?postId= ">
                                    <img src="images/post/<%=row["PostImg"] %>" class="img-responsive" alt="">
                                    <div class="desc">
                                        <span class="date"><%=row["PostDayCreate"] %></span>
                                        <h3 style="height:70px;overflow:hidden"><%=row["PostTitle"] %> </h3>
                                    </div>
                                </a>
                            </div>

                            <%} %>
                         
                           
                        </div>
                        <div class="side animate-box">
                            <div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
                                <h2><span>Danh mục </span></h2>
                            </div>
                            <ul class="category">
                                <li><a href="CategoryPage.aspx?PageId=1002"><i class="icon-check"></i>CODELIFE</a></li>
                                <li><a href="CategoryPage.aspx?PageId=1003"><i class="icon-check"></i>GIẢNG ĐƯỜNG</a></li>
                                <li><a href="CategoryPage.aspx?PageId=1004"><i class="icon-check"></i>ĂN NGỦ CHƠI</a></li>
                                <li><a href="CategoryPage.aspx?PageId=1005"><i class="icon-check"></i>TÌNH YÊU</a></li>
                                <li><a href="CategoryPage.aspx?PageId=1006"><i class="icon-check"></i>TỰ SƯỚNG</a></li>
                            </ul>
                        </div>
                        <div class="side animate-box">
                            <div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
                                <h2><span>Khoảng khắc</span></h2>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="insta" style="background-image: url(images/intagram/1.jpg);">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>

            </div>
        </div>
    </div>

    <div id="fh5co-instagram">
        <div class="container">
            <div class="row animate-box">
                <div class="col-md-12 col-md-offset-0 text-center fh5co-heading">
                    <h2><span>Instagram </span></h2>
                </div>
            </div>
        </div>
        <div class="row">
            <%foreach(System.Data.DataRow row in objTblIntagram.Rows) {%>
             <div class="col-md-3 nopadding animate-box" data-animate-effect="fadeIn">
                <div class="insta" style="background-image: url('images/intagram/<%=row["PostImg"]%>');"></div>
            </div>
            <%} %>
           
            <div class="col-md-3 nopadding animate-box" data-animate-effect="fadeIn">
                <div class="insta" style="background-image: url(images/insta-2.jpg);"></div>
            </div>
            <div class="col-md-3 nopadding animate-box" data-animate-effect="fadeIn">
                <div class="insta" style="background-image: url(images/insta-3.jpg);"></div>
            </div>
            <div class="col-md-3 nopadding animate-box" data-animate-effect="fadeIn">
                <div class="insta" style="background-image: url(images/insta-4.jpg);"></div>
            </div>
        </div>
    </div>
</asp:Content>

