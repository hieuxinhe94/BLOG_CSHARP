<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Categorys.aspx.cs" Inherits="Admin_Categorys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    // quản lý chuyên mục bài viết,
    Thêm sửa xóa đây luôn

      <div class="row">
        <div class="col-xs-12 col-sm-offset-3 col-sm-6">
            <div class="panel panel-default">
                <div class="panel-heading c-list">
                    <span class="title">Chuyên mục thuộc trang</span>
                    <ul class="pull-right c-controls">
                        <li><a href="#themCategory" data-toggle="tooltip" data-placement="top" title="Thêm mới chuyên mục "><i class="glyphicon glyphicon-plus"></i></a></li>
                        <li><a href="#" class="hide-search" data-command="toggle-search" data-toggle="tooltip" data-placement="top" title="Tìm kiếm trong danh sách"><i class="glyphicon glyphicon-search"></i></a></li>
                    </ul>
                </div>
                
                <div class="row" style="display: none;">
                    <div class="col-xs-12">
                        <div class="input-group  c-search">
                            <input type="text" class="form-control" id="contact-list-search"/>
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search text-muted"></span></button>
                            </span>
                        </div>
                    </div>
                </div>
                
                <ul class="list-group" id="contact-list">
                   
                     <asp:DataList Width="100%" ID="ddlCategory" OnDeleteCommand="ddlCategory_DeleteCommand" runat="server" DataKeyField="CatId">
                     <EditItemStyle  Width="100%"  />
                            <ItemTemplate>
                             <li class="list-group-item">
                        <div class="col-xs-12 col-sm-3">
                            <img src="../" alt="<%#Eval("CatUrl").ToString() %>" class="img-responsive img-circle" />
                        </div>
                        <div class="col-xs-12 col-sm-9">
                            <span class="name"><%#Eval("CatName").ToString() %></span><br/>
                              <p> <span> <%#Eval("CatDescription") %></span></p> 
                            <p>Trạng thái <span> <%#Eval("CatState") %></span></p> 
                            <asp:LinkButton id="delete" CommandName="Delete" runat="server" Text="Disable" class="glyphicon glyphicon-trash" data-toggle="tooltip" title="Disables" ></asp:LinkButton>
                             <span class="glyphicon glyphicon-cog" data-toggle="tooltip" title="Edit">Edit</span>
                        
                           </div>
                        <div class="clearfix"></div>
                    </li>
                        </ItemTemplate>
                    </asp:DataList>

              
                   
                </ul>
            </div>
        </div>
	</div>
    
    <div id="themCategory" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="mySmallModalLabel">Thêm chuyên mục mới</h4>
                </div>
                <div class="modal-body">
                       <div class="input-group">
              <span class="input-group-addon" id="basic-addon"></span>
              <input type="text" class="form-control" placeholder="nhập Url " id="txtUrl" runat="server" aria-describedby="basic-addon"/>
            </div>
                                <div class="input-group">
              <span class="input-group-addon" id="basic-addon1"></span>
              <input type="text" class="form-control" placeholder="nhập tiêu đề" id="txtTitle" runat="server" aria-describedby="basic-addon1"/>
            </div>
                    <br />
                    <div class="input-group">
              <span class="input-group-addon" id="basic-addon2"></span>
              <input type="text" class="form-control" placeholder="nhập miêu tả" id="txtDescription" runat="server" aria-describedby="basic-addon1"/>
            </div>
                    <br />
                    <asp:Button CssClass="btn btn-primary" ID="btnSubmit" Text="Thêm" runat="server" OnClick="btnSubmit_Click" />
                    <br />
                   
                </div>
            </div>
        </div>
    </div>
    

    <script>
        $(function () {
            /* BOOTSNIPP FULLSCREEN FIX */
            if (window.location == window.parent.location) {
                $('#back-to-bootsnipp').removeClass('hide');
            }


            $('[data-toggle="tooltip"]').tooltip();

            $('#fullscreen').on('click', function (event) {
                event.preventDefault();
                window.parent.location = "...?";
            });
            $('a[href="#themCategory"]').on('click', function (event) {
                event.preventDefault();
                $('#themCategory').modal('show');
            })

            $('[data-command="toggle-search"]').on('click', function (event) {
                event.preventDefault();
                $(this).toggleClass('hide-search');

                if ($(this).hasClass('hide-search')) {
                    $('.c-search').closest('.row').slideUp(100);
                } else {
                    $('.c-search').closest('.row').slideDown(100);
                }
            })

            $('#contact-list').searchable({
                searchField: '#contact-list-search',
                selector: 'li',
                childSelector: '.col-xs-12',
                show: function (elem) {
                    elem.slideDown(100);
                },
                hide: function (elem) {
                    elem.slideUp(100);
                }
            })
        });


        /* Một đoạn script quá hay , quá đẳng cấp , có thời gian viết lại đoạn này nha */
        /*! jQuery Searchable v1.0.0 by Stidges (http://twitter.com/stidges) | MIT */
        !function (a) { function b(b, c) { this.$element = a(b), this.settings = a.extend({}, d, c), this.init() } var c = "searchable", d = { selector: "tbody tr", childSelector: "td", searchField: "#search", striped: !1, oddRow: {}, evenRow: {}, hide: function (a) { a.hide() }, show: function (a) { a.show() }, searchType: "default" }; b.prototype = { init: function () { this.$searchElems = a(this.settings.selector, this.$element), this.$search = a(this.settings.searchField), this.matcherFunc = this.getMatcherFunction(this.settings.searchType), this.bindEvents(), this.updateStriping() }, bindEvents: function () { var b = this; this.$search.on("change keyup", function () { b.search(a(this).val()), b.updateStriping() }), "" !== this.$search.val() && this.$search.trigger("change") }, updateStriping: function () { var b = this, c = ["oddRow", "evenRow"], d = this.settings.selector + ":visible"; this.settings.striped && a(d, this.$element).each(function (d, e) { a(e).css(b.settings[c[d % 2]]) }) }, search: function (b) { var c, d, e, f, g, h, i, j; if (0 === a.trim(b).length) return this.$searchElems.css("display", ""), void this.updateStriping(); for (d = this.$searchElems.length, c = this.matcherFunc(b), i = 0; d > i; i++) { for (h = a(this.$searchElems[i]), e = h.find(this.settings.childSelector), f = e.length, g = !0, j = 0; f > j; j++) if (c(a(e[j]).text())) { g = !1; break } g === !0 ? this.settings.hide(h) : this.settings.show(h) } }, getMatcherFunction: function (a) { return "fuzzy" === a ? this.getFuzzyMatcher : "strict" === a ? this.getStrictMatcher : this.getDefaultMatcher }, getFuzzyMatcher: function (a) { var b, c = a.split("").reduce(function (a, b) { return a + "[^" + b + "]*" + b }); return b = new RegExp(c, "gi"), function (a) { return b.test(a) } }, getStrictMatcher: function (b) { return b = a.trim(b), function (a) { return -1 !== a.indexOf(b) } }, getDefaultMatcher: function (b) { return b = a.trim(b).toLowerCase(), function (a) { return -1 !== a.toLowerCase().indexOf(b) } } }, a.fn[c] = function (d) { return this.each(function () { a.data(this, "plugin_" + c) || a.data(this, "plugin_" + c, new b(this, d)) }) } }(jQuery, window, document);

    </script>


</asp:Content>

