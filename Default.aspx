<%@ Page Title=" TRANG CHỦ " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    <aside id="fh5co-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="flexslider animate-box">
						<ul class="slides">
					   	<li style="background-image: url(images/img_bg_1.jpg);">
					   		<div class="overlay-gradient"></div>
					   		<div class="container-fluid">
					   			<div class="row">
						   			<div class="col-md-10 col-md-offset-1 slider-text">
						   				<div class="slider-text-inner">
						   					<h1>Tiêu đề -</h1>
												<h2> Miêu tả ngắn bài post <a href="#duongdan" target="_blank">URL</a></h2>
												<p class="ct"><a href="#">Đọc thêm <i class="icon-arrow-right"></i></a></p>
						   				</div>
						   			</div>
						   		</div>
					   		</div>
					   	</li>
					   	<li style="background-image: url(images/img_bg_2.jpg);">
					   		<div class="overlay-gradient"></div>
					   		<div class="container-fluid">
					   			<div class="row">
						   			<div class="col-md-10 col-md-offset-1 slider-text">
						   				<div class="slider-text-inner">
						   					<h1>Tiêu đề -</h1>
												<h2> Miêu tả ngắn bài post <a href="#duongdan" target="_blank">URL</a></h2>
												<p class="ct"><a href="#">Đọc thêm <i class="icon-arrow-right"></i></a></p>
						   				</div>
						   			</div>
						   		</div>
					   		</div>
					   	</li>
					   	<li style="background-image: url(images/img_bg_3.jpg);">
					   		<div class="overlay-gradient"></div>
					   		<div class="container-fluid">
					   			<div class="row">
						   			<div class="col-md-10 col-md-offset-1 slider-text">
						   					<div class="slider-text-inner">
						   					<h1>Tiêu đề -</h1>
												<h2> Miêu tả ngắn bài post <a href="#duongdan" target="_blank">URL</a></h2>
												<p class="ct"><a href="#">Đọc thêm <i class="icon-arrow-right"></i></a></p>
						   				</div>
						   			</div>
						   		</div>
					   		</div>
					   	</li>		   	
					  	</ul>
				  	</div>
				</div>
				<div class="col-md-4">
					<a href="#" class="featured text-center animate-box" style="background-image: url(images/img_bg_3.jpg);">
						<div class="desc">
							<span class="date">Ngày tháng đăng tải</span>
							<h3>Tiêu đề bài viết</h3>
							<span class="category">Mô tả ngắn gọn / tác giả</span>
						</div>
					</a>
					<a href="#" class="featured text-center animate-box" style="background-image: url(images/img_bg_2.jpg);">
						<div class="desc">
							<span class="date">Ngày tháng đăng tải</span>
							<h3>Tiêu đề bài viết</h3>
							<span class="category">Mô tả ngắn gọn / tác giả</span>
						</div>
					</a>
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
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#chitiet"><img class="img-responsive" src="images/blog-1.jpg" alt=""></a>
						<div class="blog-text">
									<h3><a href="#">Tiêu đề bài viết </a> <small>tác giả</small></h3>
						</div> 
					</div>
				</div>
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" src="images/blog-2.jpg" alt=""></a>
						<div class="blog-text">
									<h3><a href="#">Tiêu đề bài viết </a> <small>tác giả</small></h3>
						</div> 
					</div>
				</div>
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" src="images/blog-1.jpg" alt=""></a>
						<div class="blog-text">
									<h3><a href="#">Tiêu đề bài viết </a> <small>tác giả</small></h3>
						</div> 
					</div>
				</div>
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" src="images/blog-2.jpg" alt=""></a>
						<div class="blog-text">
								<h3><a href="#">Tiêu đề bài viết </a> <small>tác giả</small></h3>
						</div> 
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-content">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-padded-right">
					<div class="row">
						<div class="col-md-12">
							<div class="fh5co-blog animate-box">
								<div class="title title-pin text-center">
									<span class="posted-on">Thời gian - Daycreate</span>
									<h3><a href="#">Bài viết gim lên</a></h3>
									<span class="category">Tên Danh mục </span>
								</div>
								<a href="#"><img class="img-responsive" src="images/blog-1.jpg" alt=""></a>
								<div class="blog-text text-center">
									<p>

                                        Mô tả kha khá cho bài viết quan trọng

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
						<div class="col-md-6">
							<div class="fh5co-blog animate-box">
								<div class="title text-center">
									<span class="posted-on">Thời gian - Daycreate</span>
									<h3><a href="#">Tiêu đề ngắn gọn </a></h3>
									<span class="category">Danh mục</span>
								</div>
								<a href="#"><img class="img-responsive" src="images/blog-2.jpg" alt=""></a>
								<div class="blog-text text-center">
									<p>Mô tả ngắn gọn bài viết</p>
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
                        	<div class="col-md-6">
							<div class="fh5co-blog animate-box">
								<div class="title text-center">
									<span class="posted-on">Thời gian - Daycreate</span>
									<h3><a href="#">Tiêu đề ngắn gọn </a></h3>
									<span class="category">Danh mục</span>
								</div>
								<a href="#"><img class="img-responsive" src="images/blog-2.jpg" alt=""></a>
								<div class="blog-text text-center">
									<p>Mô tả ngắn gọn bài viết</p>
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
                        	<div class="col-md-6">
							<div class="fh5co-blog animate-box">
								<div class="title text-center">
									<span class="posted-on">Thời gian - Daycreate</span>
									<h3><a href="#">Tiêu đề ngắn gọn </a></h3>
									<span class="category">Danh mục</span>
								</div>
								<a href="#"><img class="img-responsive" src="images/blog-2.jpg" alt=""></a>
								<div class="blog-text text-center">
									<p>Mô tả ngắn gọn bài viết</p>
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
                        	<div class="col-md-6">
							<div class="fh5co-blog animate-box">
								<div class="title text-center">
									<span class="posted-on">Thời gian - Daycreate</span>
									<h3><a href="#">Tiêu đề ngắn gọn </a></h3>
									<span class="category">Danh mục</span>
								</div>
								<a href="#"><img class="img-responsive" src="images/blog-2.jpg" alt=""></a>
								<div class="blog-text text-center">
									<p>Mô tả ngắn gọn bài viết</p>
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
					
					</div>
				</div>
				
				<aside id="sidebar">
					<div class="col-md-3">
						<div class="side animate-box">
							<div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
								<h2><span>About Me</span></h2>
							</div>
							<div class="fh5co-staff">
								<img src="images/user-2.jpg" alt="hiếu đẹp trai">
								<h3>Phạm Hiếu</h3>
								<strong class="role"> Web Backend , Android Developer , BigData</strong>
								<p> Admin Description </p>
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
								<h2><span>Bài viết mới đây </span></h2>
							</div>
							<div class="blog-entry">
								<a href="#">
									<img src="images/blog-1.jpg" class="img-responsive" alt="">
									<div class="desc">
										<span class="date">Thời gian - Daycreate</span>
										<h3>Tiêu đề ngắn gọn </h3>
									</div>
								</a>
							</div>
							<div class="blog-entry">
								<a href="#">
									<img src="images/blog-2.jpg" class="img-responsive" alt="">
									<div class="desc">
										<span class="date">Thời gian - Daycreate</span>
										<h3>Tiêu đề ngắn gọn </h3>
									</div>
								</a>
							</div>
							<div class="blog-entry">
								<a href="#">
									<img src="images/blog-1.jpg" class="img-responsive" alt="">
									<div class="desc">
									<span class="date">Thời gian - Daycreate</span>
										<h3>Tiêu đề ngắn gọn </h3>
									</div>
								</a>
							</div>
						</div>
						<div class="side animate-box">
							<div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
								<h2><span> Danh mục </span></h2>
							</div>
							<ul class="category">
								<li><a href="#"><i class="icon-check"></i>CODELIFE</a></li>
								<li><a href="#"><i class="icon-check"></i>GIẢNG ĐƯỜNG</a></li>
								<li><a href="#"><i class="icon-check"></i>ĂN NGỦ CHƠI</a></li>
								<li><a href="#"><i class="icon-check"></i>TÌNH YÊU</a></li>
								<li><a href="#"><i class="icon-check"></i>TỰ SƯỚNG</a></li>
							</ul>
						</div>
						<div class="side animate-box">
							<div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
								<h2><span>Khoảng khắc</span></h2>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="insta" style="background-image: url(images/insta-1.jpg);">
										
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
			<div class="col-md-3 nopadding animate-box" data-animate-effect="fadeIn">
				<div class="insta" style="background-image: url(images/insta-1.jpg);"></div>
			</div>
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

