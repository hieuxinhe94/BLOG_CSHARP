<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UsersMasterPage.master" AutoEventWireup="true" CodeFile="ListPosts.aspx.cs" Inherits="Users_ListPosts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script src="../ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="clear:both;margin-top:30px"></div>
    <div class="container" >
	<div class="row">
       <div class="row">
                <% if(objArticle.Rows.Count<0){ %>
                    <div class="well well-lg info">
                        Bạn chưa sở hữu bài viết nào , Mời bắt đầu ...
                    </div>
                <%} %>
                <%else{ %>
                <% for(int i = 0 ; i < objArticle.Rows.Count;i++){ %>
                  <article class="col-md-4">  
                    <figure class="col-lg-12">
                   
				<a href=""><img class="img img-responsive article-img" style="height:250px;width:auto" src="../images/Post/<%=objArticle.Rows[i]["PostImg"].ToString() %>"></a>
				<figcaption class="article-caption"><h1 class="article-title">
                    <a href=""><%=objArticle.Rows[i]["PostTitle"].ToString() %></a></h1>
				</figcaption>
				</figure>
				<div class="article-intro col-lg-12" style="padding-top: 10px;">
				<strong><%=objArticle.Rows[i]["PostDescription"].ToString() %>..</strong>
				</div>
				<div class="article-button-row">
                    <button class="btn btn-info" data-toggle="modal" data-target="#modal<%=i%>" >Cập nhật</button>
                    <button class="btn btn-danger"> Xóa</button>
                 </div>
				</article>

                   <div class="modal fade" id="modal<%=i%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content modal-content-one">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                  <h4 class="modal-title" id="myModalLabel"> <%=objArticle.Rows[i]["PostTitle"].ToString() %> -<small> <a href="#">chỉnh sửa nhiều hơn</a> </small></h4>
                </div>
                <div class="modal-body">
              <textarea id="editor1"  style="width:99%; height:400px;">
                   <%=objArticle.Rows[i]["PostContent"].ToString() %>
              </textarea>
                    
                      
                </div>
                   <div class="article-button-update">
                    <button class="btn btn-info" data-toggle="modal" data-target="#modal<%=i%>" >Cập nhật</button>
                 </div>
              </div>
            </div>
          </div>


                <%} %>
              
                <%} %>

                <!-- view modal--->
         

            
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

