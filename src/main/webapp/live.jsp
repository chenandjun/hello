<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<head>
    <title>直播</title>
    <link href="static/video/css/video-js.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="static/mycss/liveht.css" media="all" />
    <link rel="stylesheet" href="static/layui/css/layui.css" media="all" />
    <style>
        .wrapper {
            width: 680px;
            margin:0 auto;
        }
        #myvideo{
            width: 680px;
            height: 320px;
        }
        .wrapperone{
            width: 840px;
            margin:0 auto;
        }
        .video_list li{
            float: left;
            text-align:center;
            list-style: none;
            margin-right: 10px;
            margin-top: 10px;
        }
    </style>
</head>
<body>

        <div class="wrapper">
            <button class="layui-btn" style="width: 100px;">开启对讲</button>
            <video id="myvideo" class="video-js" controls preload="auto" data-setup="{}">
                <source src="rtmp://pili-live-rtmp.www.ican-smart.com/chen01/test001uu" type="rtmp/flv">
            </video>
            <script src="static/video/js/video.min.js"></script>
            <script src="https://unpkg.com/videojs-contrib-hls/dist/videojs-contrib-hls.js"></script>
            <script src="http://vjs.zencdn.net/5.19/lang/zh-CN.js"></script>
            <script src="http://vjs.zencdn.net/5.5.3/video.js"></script>
            <script>
                videojs.options.flash.swf = "static/video/js/video-js.swf";
            </script>
            <script>
                var player = videojs('myvideo');
                player.play();
            </script>
        </div>
        <div class="wrapperone">
            <ul class="video_list">
                <li>
                    <div class="box">
                        <div class="he_border1">
                            <img class="he_border1_img" src="static/image/drone_001.jpg" alt="Image 01">
                            <div class="he_border1_caption">
                                <h3 class="he_border1_caption_h">Helloweba</h3>
                                <img class="he_border1_caption_p" src="static/image/bofang.png">
                                <a class="he_border1_caption_a" href="#" target="_blank"></a>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="box">
                        <div class="he_border1">
                            <img class="he_border1_img" src="static/image/drone_002.jpg" alt="Image 01">
                            <div class="he_border1_caption">
                                <h3 class="he_border1_caption_h">Helloweba</h3>
                                <img class="he_border1_caption_p" src="static/image/bofang.png">
                                <a class="he_border1_caption_a" href="#" target="_blank"></a>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="box">
                        <div class="he_border1">
                            <img class="he_border1_img" src="static/image/drone_003.jpg" alt="Image 01">
                            <div class="he_border1_caption">
                                <h3 class="he_border1_caption_h">Helloweba</h3>
                                <img class="he_border1_caption_p" src="static/image/bofang.png">
                                <a class="he_border1_caption_a" href="#" target="_blank"></a>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="box">
                        <div class="he_border1">
                            <img class="he_border1_img" src="static/image/drone_004.jpg" alt="Image 01">
                            <div class="he_border1_caption">
                                <h3 class="he_border1_caption_h">Helloweba</h3>
                                <img class="he_border1_caption_p" src="static/image/bofang.png">
                                <a class="he_border1_caption_a" href="#" target="_blank"></a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>

</body>
<script language="javascript" type="text/javascript">
    $(function () {
        var v = document.getElementById("myvideo");
        document.getElementById("message").innerHTML = "Start: " + v.buffered.start(0) + " End: " + v.buffered.end(0);
    });
</script>
</html>
