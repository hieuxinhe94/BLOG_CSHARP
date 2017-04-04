<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UsersMasterPage.master" AutoEventWireup="true" CodeFile="Comment.aspx.cs" Inherits="Users_Comment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    	<div class="row">
	<!-- Contenedor Principal -->
    <div class="comments-container">
		<h1>Nhận xét hàng đầu <a href="#">ngheansunshine.info</a></h1>

		<ul id="comments-list" class="comments-list">
			<%
                for (int i = 0; i < objTblPost.Rows.Count; i++ )
                {
                %>
              <li>
				<div class="comment-main-level">
					<!-- Avatar -->
					<div class="comment-avatar"><img src="http://i9.photobucket.com/albums/a88/creaticode/avatar_1_zps8e1c80cd.jpg" alt=""></div>
					<!-- Contenedor del Comentario -->
					<div class="comment-box">
						<div class="comment-head">
							<h6 class="comment-name by-author"><a href="#post"><%=objTblPost.Rows[i]["PostTitle"] %></a></h6>
							<span><%=objTblPost.Rows[i]["PostDayCreate"] %></span>
							<i class="fa fa-reply"></i>
							<i class="fa fa-heart"></i>
						</div>
						<div class="comment-content">
                       <%=objTblPost.Rows[i]["PostDescription"] %>
						</div>
					</div>
				</div>
                  	<ul class="comments-list reply-list">
                  <%Comments objComment = new Comments(); %>
                  <% objTblComment = objComment.getDataByInPost(objTblPost.Rows[i]["PostId"].ToString());        %>
                  <%for(int j=0 ; j< objTblComment.Rows.Count ; j++){ %>
					<li>
						<!-- Avatar -->
						<div class="comment-avatar"><img src="http://i9.photobucket.com/albums/a88/creaticode/avatar_2_zps7de12f8b.jpg" alt=""></div>
						<!-- Contenedor del Comentario -->
						<div class="comment-box">
							<div class="comment-head">
								<h6 class="comment-name"><a href="#post"><%=objTblPost.Rows[j]["CmtUser"] %> --<</a></h6>
								<span><%=objTblPost.Rows[j]["CmtDayCreate"] %> </span>
								<i class="fa fa-reply"></i>
								<i class="fa fa-heart"></i>
							</div>
							<div class="comment-content">
							<%=objTblPost.Rows[j]["CmtContent"] %>	</div>
						</div>
					</li>
                  <%} objComment = null; %>
                   </ul>
                <%
                }
                %>	
			</li>
            
          
				<!-- Respuestas de los comentarios -->
			

                   

	</div>
	</div>
</asp:Content>

