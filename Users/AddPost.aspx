<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UsersMasterPage.master" AutoEventWireup="true" CodeFile="AddPost.aspx.cs" Inherits="Users_AddPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <script src="../ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">


       <div class="modal-dialog">
              <div class="modal-content modal-content-one">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                  <h4 class="modal-title" id="myModalLabel"> Tiêu đề :  </h4> 
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
    


     <script>
         // Replace the <textarea id="editor1"> with a CKEditor
         // instance, using default configuration.
         CKEDITOR.replace('editor1');
            </script>
    <script src="css/ImageUpload.js"></script>
</asp:Content>

