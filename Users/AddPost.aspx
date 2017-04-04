<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UsersMasterPage.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="AddPost.aspx.cs" Inherits="Users_AddPost" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <script>
          var roxyFileman = '/fileman/index.html';
          $(function () {
              CKEDITOR.replace('ContentPlaceHolder1_txtContent', {
                  filebrowserBrowseUrl: roxyFileman,
                  filebrowserImageBrowseUrl: roxyFileman + '?type=image',
                  removeDialogTabs: 'link:upload;image:upload'
              });
          });
    </script>
    <script src="../ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">

       <div class="modal-dialog" style="margin-top:0px !important;">
              <div class="modal-content modal-content-one">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                  <h6 style="font-family:'Comic Sans MS'">Cuộc sống là những điều thú vị , Hãy cảm nhận và lưu lại những khoảnh khắc ấy .</h6>
                     <div class="modal-title" style="width:100%; clear:both">
                       <textarea  id="editortitle" runat="server" type="text" class="form-control"
                              style="width:50%;font-size:16px; height:40px !important;" name="validate-length" 
                            placeholder="Tiêu đề " required></textarea>
						<textarea  id="editorDescription" runat="server" type="text" class="form-control"
                              style="width:50%;font-size:16px; height:70px !important;" name="validate-length" 
                            placeholder="Mô tả ngắn " required></textarea>
                       <div style="float:right; width:40% ; font-size:15px !important; margin-top:-110px;">
                            <div class="form-group">
            		<div class="input-group">
                        <asp:DropDownList runat="server" ID="ddlCatgory" CssClass="form-control" AutoPostBack="false"  >
                        
                        </asp:DropDownList>
						<span class="input-group-addon danger"></span>
					</div>
				</div>
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
                        <span class="image-preview-input-title">Browse</span>
                        <asp:FileUpload ID="upImage1" name="input-file-preview" runat="server" accept="image/png, image/jpeg, image/gif"  />
                        <%--<input type="file" id="upImage1" runat="server" accept="image/png, image/jpeg, image/gif" name="input-file-preview"/>--%> <!-- rename it -->
                    </div>
                </span>
            </div><!-- /input-group image-preview [TO HERE]--> 
              <asp:Label ID="lblImg1" Text="" CssClass="MQTT_Normal_Text" runat="server"></asp:Label>
            <br />
            <asp:TextBox ID="txtImage" runat="server" Width="0px" Visible="false"></asp:TextBox>
                        </div>
                  </div>
                   
                </div>
                <div class="modal-body">
                    <CKEditor:CKEditorControl ID="txtContent" CssClass="editor1" runat="server" Height="305"
                Width="99%" BasePath="~/ckeditor">
                        Nội dung ...

                    </CKEditor:CKEditorControl>
                </div>
                   <div class="article-button-update">
                       <asp:Button runat="server" CssClass="btn btn-info" Width="30%" Height="80%"  ID="btnSave" OnClick="btnSave_Click" Text="Lưu Lại" />
                     .  <button class="btn btn-danger">Cancel</button>
                 </div>
              </div>
    </div>
    


     <script>
         // Replace the <textarea id="editor1"> with a CKEditor
         // instance, using default configuration.
         CKEDITOR.replace('editorcontent');
         CKEDITOR.replace('editortitle');
            </script>
    <script src="css/ImageUpload.js"></script>
</asp:Content>

