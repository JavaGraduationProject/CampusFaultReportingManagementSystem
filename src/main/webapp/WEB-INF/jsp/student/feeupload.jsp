<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>提交报修单_校园故障报修系统</title>
    <meta name="keywords"
          content="wilddog, WildDog, realtime, PaaS, BaaS, HTMl5, CoAP, Thread, REST, Javascript, DTLS, websockets, realtime sync, UDP, JSON, developer, B2B, SDK, iOS, Android, Mac OS, Windows, 野狗, 野狗实时, 野狗云, 实时应用, 实时同步, 实时数据库, 跨平台, 物联网, 构建实时应用, 受限网络, 传感网, 解决方案, 云平台, 云计算, 云服务, 公有云, 私有云, 开发者">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <meta name="format-detection" content="email=no"/>
    <meta name="format-detection" content="address=no"/>
    <meta name="format-detection" content="telephone=no"/>
    <!--[if lt IE 9]>
    <script type="text/javascript">
        window.location.href = "/outmen";
    </script>
    <![endif]-->
    <link rel="stylesheet" href="/bower_components/highlightjs/styles/color-brewer.css">
    <link rel="stylesheet" href="/css/base.css">
    <link rel="stylesheet" href="/css/fonts.css">
    <link rel="stylesheet" href="/css/header_public.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="stylesheet" href="/css/doc.css">
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
</head>

<body>
<div id="wrap">

    <%--引入页面头部--%>
    <%@include file="header.jsp" %>

    <div class="container main-body">
        <div class="col-md-2 menu">
            <li class="category  active">
                <div class="category-title"><a href="<c:url value="/student/dashboard"/>">报修单</a></div>
                <ul class="pages">
                    <li class="page "><a href="<c:url value="/student/dashboard"/>" class="unvisited">查看</a>
                    </li>
                    <li class="page"><a href="<c:url value="/student/commit"/>" class="unvisited">提交</a>
                    </li>
                </ul>
            </li>
            <li class="category ">
                <div class="category-title"><a href="<c:url value="/student/urgent"/>">催单</a></div>
                <ul class="pages">
                    <li class="page"><a href="<c:url value="/student/urgent"/>" class="unvisited">查看</a>
                    </li>
                </ul>
            </li>
            <li class="category ">
                <div class="category-title"><a href="<c:url value="/student/tobecanceled"/>">待取消报修单</a></div>
                <ul class="pages">
                    <li class="page "><a href="<c:url value="/student/tobecanceled"/>" class="unvisited">查看</a>
                    </li>
                </ul>
            </li>
              <li class="category ">
                <div class="category-title  active"><a href="<c:url value="/student/feelist"/>">水电缴费</a></div>
            </li>
             <li class="category ">
                <div class="category-title  active"><a href="<c:url value="/student/feeupload"/>">缴费</a></div>
            </li>
        </div>

        <div class="col-md-9 col-md-offset-1 layout-page">

            <section class="content">
                <h1> 缴水电费 </h1>
                <div class="func pull-right">

                </div>

                <div class="content-text">

                    <form class="form-horizontal" method="post" action="<c:url value="/student/uploadfee"/>"
                          enctype="multipart/form-data">
                        <fieldset  class="layui-elem-field layui-field-title" style="margin-top: 50px;">
                            <legend>缴水电费</legend>


                        <table class="layui-table" lay-size="lg">
                            <colgroup>
                                <col width="150">
                                <col width="400">
                            </colgroup>
                            <thead>
                            <tr>
                                <th>费用详情</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                             <tr>
                                <td>宿舍名</td>
                                <td><input type="text" readonly value="${doorname}" name="name"  placeholder="1#207" title="" style="width:100px;height:30px;"> </input></td>
                            </tr>
                            <tr>
                                <td>水费</td>
                                <td><input type="text"  name="water" title="" style="width:100px;height:30px;"> </input></td>
                            </tr>
                            <tr>
                                <td>电费</td>
                                <td><input type="text" name="power" class="input-xlarge" style="width:100px;height:30px;"></td>
                            </tr>

                            </tbody>
                        </table>
                        <input type="submit" title="hi" class="layui-btn layui-btn-fluid"></input>
                        </fieldset>


                    </form>

                </div>
            </section>
        </div>

        <div class="back-top-ab">
            <div class="back-top"><i class="wd-font">R</i></div>
        </div>
    </div>
</div>



<script src="/bower_components/jquery/dist/jquery.min.js"></script>
<!--
<script src="/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/bower_components/fitvids/jquery.fitvids.js"></script>
<script src="/bower_components/masonry/dist/masonry.pkgd.min.js"></script>
-->
<script src="/bower_components/highlightjs/highlight.pack.js"></script>
<script src="/scripts/raneto.js" type="text/javascript"></script>
<script src="/scripts/mobile.js" type="text/javascript"></script>
<script type="text/javascript">
    //        window.onload = loadOver;
    $(document).ready(function () {
        loadOver();
    })
</script>
<!-- Google Tag Manager -->
<script>
    window.addEventListener('load', function () {
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s),
                    dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                    '//www.wilddog.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-53PGC2');
    })
</script>
<!-- End Google Tag Manager -->
</body>


<script>
    function comitBtn() {
        $.ajax({
            url: "/student/commit",
            method: "POST",
            fileElementId: "img",
            dataType: "json",
            contentType: "json",
            success: function () {
                alert("nothing");
            }
        });
    }
</script>
<script>
    layui.use('upload', function() {
        var $ = layui.jquery
            , upload = layui.upload;

        upload.render({
            elem: '#test8'
            ,url: '/upload/'
            ,auto: false
            //,multiple: true
            ,bindAction: '#test9'
            ,done: function(res){
                console.log(res)
            }
        });
    });
</script>
</html>