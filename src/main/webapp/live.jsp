<%--
  Created by IntelliJ IDEA.
  User: 15201
  Date: 2018/3/29
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>直播</title>
    <link rel="stylesheet" href="static/layui/css/layui.css" media="all" />
    <link href="static/video/css/video-js.css" rel="stylesheet">
    <style>
        html,
        body,
        .layui-fluid{
            height: 100%;
        }
        .layui-fluid div{
            height: 100%;
        }
        #myvideo{
            width: 100%;
        }
        .video_list li{
            list-style: none;
            width: 98%;
            height: 15%;
            border:solid 1px;
            margin-left: 2px;
            margin-bottom: 2px;
        }
    </style>
</head>
<body>
    <div class="layui-fluid">
        <div class="layui-col-md2">

        </div>
        <div class="layui-col-md8">
            <video id="myvideo" class="video-js vjs-default-skin" controls preload="auto" poster="static/image/login_bg.jpg" >
                <source src="rtmp://pili-live-rtmp.www.ican-smart.com/chen01/test001" type="rtmp/flv">
            </video>
            <script src="static/video/js/video.min.js"></script>
            <script src="https://unpkg.com/videojs-contrib-hls/dist/videojs-contrib-hls.js"></script>
            <script src="http://vjs.zencdn.net/5.19/lang/zh-CN.js"></script>
            <script src="http://vjs.zencdn.net/5.5.3/video.js"></script> <script>
                videojs.options.flash.swf = "static/video/js/video-js.swf";
            </script>
            <script>
                var player = videojs('myvideo');
                player.play();
            </script>
        </div>
        <div class="layui-col-md2" style="overflow:auto">
                <ul class="video_list" style="">
                    <li>
                        <video style="width: 100%;height: 100%;" poster="static/image/login_bg.jpg">
                            <source src="rtmp://live.hkstv.hk.lxdns.com/live/hks" type="rtmp/flv">
                        </video>
                    </li>
                    <li>
                        <video style="width: 100%;height: 100%;" poster="static/image/login_bg.jpg">
                            <source src="rtmp://live.hkstv.hk.lxdns.com/live/hks" type="rtmp/flv">
                        </video>
                    </li>
                    <li>
                        <video style="width: 100%;height: 100%;" poster="static/image/login_bg.jpg">
                            <source src="rtmp://live.hkstv.hk.lxdns.com/live/hks" type="rtmp/flv">
                        </video>
                    </li>
                    <li>
                        <video style="width: 100%;height: 100%;" poster="static/image/login_bg.jpg">
                            <source src="rtmp://live.hkstv.hk.lxdns.com/live/hks" type="rtmp/flv">
                        </video>
                    </li>
                </ul>
        </div>
    </div>

</body>
</html>
