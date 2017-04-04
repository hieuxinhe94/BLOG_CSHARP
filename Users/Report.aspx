<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UsersMasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Users_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    
<section id="contact" class="content-section text-center">
        <div class="contact-section">
            <div class="container">
              <h2>Báo cáo , phản hồi </h2>
              <p>Bạn có cảm thấy hay ho như Fackebook,Whatsapp,Twitter ?. Hãy cho chúng tôi nhận xét</p>
              <div class="row">
                <div class="col-md-8 col-md-offset-2">
                  <form class="form-horizontal">
                    <div class="form-group">
                      <label for="exampleInputName2">Tên </label>
                      <input type="text" class="form-control" id="exampleInputName2" placeholder="Hiệp sỹ bóng tối , Sát thủ bóng dâm ,... ">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail2">Email</label>
                      <input type="email" class="form-control" id="exampleInputEmail2" placeholder="hieuxinhe94@gmail.com">
                    </div>
                    <div class="form-group ">
                      <label for="exampleInputText">Lời nhắn nhủ</label>
                     <textarea  class="form-control" placeholder="I love you sooo much "></textarea> 
                    </div>
                    <button type="submit" class="btn btn-default">Hoàn thành</button>
                  </form>

                  <hr>
                    <h3>Hoặc </h3>
                  <ul class="list-inline banner-social-buttons">
                    <li><a href="#" class="btn btn-default btn-lg"><i class="fa fa-twitter"> <span class="network-name">Twitter</span></i></a></li>
                    <li><a href="#" class="btn btn-default btn-lg"><i class="fa fa-facebook"> <span class="network-name">Facebook</span></i></a></li>
                    <li><a href="#" class="btn btn-default btn-lg"><i class="fa fa-youtube-play"> <span class="network-name">Github</span></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
        </div>
      </section>
</asp:Content>

