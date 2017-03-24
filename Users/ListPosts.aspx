<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UsersMasterPage.master" AutoEventWireup="true" CodeFile="ListPosts.aspx.cs" Inherits="Users_ListPosts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script src="../ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="clear:both;margin-top:30px"></div>
    <div class="container" >
	<div class="row">
       <div class="row">
		        <article class="col-md-4">
    			<figure class="col-lg-12">
				<a href=""><img class="img img-responsive article-img" src="http://farm1.staticflickr.com/258/18511405422_d7c67c0ff8_k.jpg"></a>
				<figcaption class="article-caption"><h1 class="article-title"><a href="">Your article title goes here</a></h1>
				</figcaption>
				</figure>
				<div class="article-intro col-lg-12" style="padding-top: 10px;">
				<strong>Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor..</strong>
				</div>
				<div class="article-button-row">
                    <button class="btn btn-info" data-toggle="modal" data-target="#modal1" >Cập nhật</button>
                    <button class="btn btn-danger"> Xóa</button>
                 </div>
				</article>
                <!-- view modal--->
            <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content modal-content-one">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                  <h4 class="modal-title" id="myModalLabel">Introduction Popup</h4>
                </div>
                <div class="modal-body">
              <textarea id="editor1"  style="width:99%; height:400px;">

                    MODAL POPUP CONTENT .....
              </textarea>
                    
                      
                </div>
                   <div class="article-button-update">
                    <button class="btn btn-info" data-toggle="modal" data-target="#modal1" >Cập nhật</button>
                    <button class="btn btn-danger">Cancel</button>
                 </div>
              </div>

               

            </div>
          </div>

                
                <article class="col-md-4">
        		<figure class="col-lg-12">
				<a href=""><img class="img img-responsive article-img" src="http://farm1.staticflickr.com/354/18141136234_6aee6ac0ea_k.jpg"></a>
				<figcaption class="article-caption"><h1 class="article-title"><a href="">Your article title goes here</a></h1>
				</figcaption>
				</figure>

				<div class="article-intro col-lg-12" style="padding-top: 10px;">
				<strong>Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor..</strong>
				</div>
				<div class="article-button-row">
                    <button class="btn btn-info">Cập nhật</button>
                    <button class="btn btn-danger">Xóa</button>
                 </div>
				</article>

            <article class="col-md-4">
        		<figure class="col-lg-12">
				<a href=""><img class="img img-responsive article-img" src="http://farm1.staticflickr.com/354/18141136234_6aee6ac0ea_k.jpg"></a>
				<figcaption class="article-caption"><h1 class="article-title"><a href="">Your article title goes here</a></h1>
				</figcaption>
				</figure>

				<div class="article-intro col-lg-12" style="padding-top: 10px;">
				<strong>Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor..</strong>
				</div>
				<div class="article-button-row">
                    <button class="btn btn-info">Cập nhật</button>
                    <button class="btn btn-danger">Xóa</button>
                 </div>
				</article>
                </div>
                
                <hr>
                
                <div class="row">
                <article class="col-md-4">
        		<figure class="col-lg-12">
				<a href=""><img class="img img-responsive article-img" src="http://farm1.staticflickr.com/510/18737505996_98a20bf592_k.jpg"></a>
				<figcaption class="article-caption"><h1 class="article-title"><a href="">Your article title goes here</a></h1>
				</figcaption>
				</figure>
				<div class="article-intro col-lg-12" style="padding-top: 10px;">
				<strong>Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor..</strong>
				</div>
				<div class="article-button-row">
                    <button class="btn btn-info">Cập nhật</button>
                    <button class="btn btn-danger">Xóa</button>
                 </div>
				</article>
                
                <article class="col-md-4">
        		<figure class="col-lg-12">
				<a href=""><img class="img img-responsive article-img" src="http://farm1.staticflickr.com/346/18328027128_704280cd4c_k.jpg"></a>
				<figcaption class="article-caption"><h1 class="article-title"><a href="">Your article title goes here</a></h1>
				</figcaption>
				</figure>

				<div class="article-intro col-lg-12" style="padding-top: 10px;">
				<strong>Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor..</strong>
				</div>
				<div class="article-button-row">
                    <button class="btn btn-info">Cập nhật</button>
                    <button class="btn btn-danger">Xóa</button>
                 </div>
				</article>

                     <article class="col-md-4">
        		<figure class="col-lg-12">
				<a href=""><img class="img img-responsive article-img" src="http://farm1.staticflickr.com/354/18141136234_6aee6ac0ea_k.jpg"></a>
				<figcaption class="article-caption"><h1 class="article-title"><a href="">Your article title goes here</a></h1>
				</figcaption>
				</figure>

				<div class="article-intro col-lg-12" style="padding-top: 10px;">
				<strong>Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor..</strong>
				</div>
			 <div class="article-button-row">
                    <button class="btn btn-info">Cập nhật</button>
                    <button class="btn btn-danger">Xóa</button>
                 </div>
                         	</article>
                   
                </div>
	</div>
</div>

    <div style="clear:both"></div>

    
     <script>
         // Replace the <textarea id="editor1"> with a CKEditor
         // instance, using default configuration.
         CKEDITOR.replace('editor1');
            </script>
    <script src="css/ImageUpload.js"></script>
</asp:Content>

