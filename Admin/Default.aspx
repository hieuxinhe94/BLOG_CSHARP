<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-1" id="user-profil">
        
    </div>


    <div class="container-2">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                        <h2>Dashboard<small>Trong ngày</small></h2>
                        <ol class="breadcrumb">
                            <li class="active"><i class="fa fa-dashboard"></i>Dashboard</li>
                            <li class="pull-right">
                                <div id="reportrange" class="btn btn-green btn-square date-picker">
                                    <i class="fa fa-calendar"></i>
                                    <span class="date-range">February 15, 2017 - March 16, 2017</span> <i class="fa fa-caret-down"></i>
                                </div>
                            </li>
                        </ol>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading dark-blue">
                                <i class="fa fa-users fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content dark-blue">
                            <div class="circle-tile-description text-faded">
                                Thành viên
                            </div>
                            <div class="circle-tile-number text-faded">
                               x/<%=countAllUser %>
                                <span id="sparklineA"></span>
                            </div>
                            <a href="ListUsers.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading green">
                                <i class="fa fa-money fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content green">
                            <div class="circle-tile-description text-faded">
                               Click Quảng cáo
                            </div>
                            <div class="circle-tile-number text-faded">
                                $32,384/10000
                            </div>
                            <a href="Analysis.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading orange">
                                <i class="fa fa-bell fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content orange">
                            <div class="circle-tile-description text-faded">
                                Bài đăng mới
                            </div>
                            <div class="circle-tile-number text-faded">
                                <%=countAllPost %> New
                            </div>
                            <a href="ListPost.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading blue">
                                <i class="fa fa-tasks fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content blue">
                            <div class="circle-tile-description text-faded">
                                Khách truy cập
                            </div>
                            <div class="circle-tile-number text-faded">
                             <%=countAllVisistor %> Visistor
                                <span id="sparklineB"></span>
                            </div>
                            <a href="ListVisistor.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading red">
                                <i class="fa fa-shopping-cart fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content red">
                            <div class="circle-tile-description text-faded">
                                Bình luận
                            </div>
                            <div class="circle-tile-number text-faded">
                             <%=countAllComment %> Comments
                                <span id="sparklineC"></span>
                            </div>
                            <a href="ListComments.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading purple">
                                <i class="fa fa-comments fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content purple">
                            <div class="circle-tile-description text-faded">
                                Report 
                            </div>
                            <div class="circle-tile-number text-faded">
                               <%=countAllRepost %> Reports
                                <span id="sparklineD"></span>
                            </div>
                            <a href="ListTaskToDo.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="page-title">
                        <h2>Dashboard<small>Trong tháng này ...</small></h2>
                        <ol class="breadcrumb">
                            <li class="active"><i class="fa fa-dashboard"></i>Dashboard</li>
                            <li class="pull-right">
                                <div id="reportrange" class="btn btn-green btn-square date-picker">
                                    <i class="fa fa-calendar"></i>
                                    <span class="date-range">February  2017 - March  2017</span> <i class="fa fa-caret-down"></i>
                                </div>
                            </li>
                        </ol>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading dark-blue">
                                <i class="fa fa-users fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content dark-blue">
                            <div class="circle-tile-description text-faded">
                                Thành viên
                            </div>
                            <div class="circle-tile-number text-faded">
                                265/1000
                                <span id="sparklineA"></span>
                            </div>
                            <a href="ListUsers.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading green">
                                <i class="fa fa-money fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content green">
                            <div class="circle-tile-description text-faded">
                                Lợi nhuận
                            </div>
                            <div class="circle-tile-number text-faded">
                                $32,384/10000
                            </div>
                            <a href="Analysis.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading orange">
                                <i class="fa fa-bell fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content orange">
                            <div class="circle-tile-description text-faded">
                                Bài đăng mới
                            </div>
                            <div class="circle-tile-number text-faded">
                                90 New
                            </div>
                            <a href="ListPost.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading blue">
                                <i class="fa fa-tasks fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content blue">
                            <div class="circle-tile-description text-faded">
                                Khách truy cập
                            </div>
                            <div class="circle-tile-number text-faded">
                                1000/100000
                                <span id="sparklineB"></span>
                            </div>
                            <a href="ListVisistor.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading red">
                                <i class="fa fa-shopping-cart fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content red">
                            <div class="circle-tile-description text-faded">
                                Bình luận
                            </div>
                            <div class="circle-tile-number text-faded">
                                240/2000
                                <span id="sparklineC"></span>
                            </div>
                            <a href="ListComments.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <div class="circle-tile">
                        <a href="#">
                            <div class="circle-tile-heading purple">
                                <i class="fa fa-comments fa-fw fa-3x"></i>
                            </div>
                        </a>
                        <div class="circle-tile-content purple">
                            <div class="circle-tile-description text-faded">
                                Report 
                            </div>
                            <div class="circle-tile-number text-faded">
                                16
                                <span id="sparklineD"></span>
                            </div>
                            <a href="ListTaskToDo.aspx" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>




        </div>
        <!-- page-wrapper END-->
    </div>
    <!-- container-1 END-->



</asp:Content>

