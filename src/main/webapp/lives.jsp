<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
    <title>直播</title>
    <link rel="stylesheet" href="static/layui/css/layui.css" media="all" />
    <link href="static/video/css/video-js.css" rel="stylesheet" >
    <link rel="stylesheet" href="static/mycss/liveht.css" media="all" />
    <style>
        .onevideod{
            width: 1000px;
            margin:0 auto;
        }
        #myvideoa{
            width: 480px;
            height: 200px;
        }
        #myvideob{
            width: 480px;
            height: 200px;
        }
        #myvideoc{
            width: 480px;
            height: 200px;
        }
        #myvideod{
            width: 480px;
            height: 200px;
        }
        td{
            border:medium double rgb(240,248,255)
        }

    </style>
</head>
<body>
        <div class="onevideod">
            <table>
                <tr>
                    <td>
                        <video id="myvideoa" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="auto">
                            <source src="" type="rtmp/flv">
                        </video>
                    </td>
                    <td>
                        <video id="myvideob" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="auto" >
                            <source src="rtmp://pili-live-rtmp.www.ican-smart.com/chen01/testtwo" type="rtmp/flv">
                        </video>
                    </td>
                </tr>
                <tr>
                    <td>
                        <video id="myvideoc" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="auto" >
                            <source src="rtmp://pili-live-rtmp.www.ican-smart.com/chen01/test001uu" type="rtmp/flv">
                        </video>
                    </td>
                    <td>
                        <video id="myvideod" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="auto" >
                            <source src="rtmp://pili-live-rtmp.www.ican-smart.com/chen01/testfour" type="rtmp/flv">
                        </video>
                    </td>
                </tr>
            </table>
            <script src="static/video/js/video.min.js"></script>
            <script src="https://unpkg.com/videojs-contrib-hls/dist/videojs-contrib-hls.js"></script>
            <script src="http://vjs.zencdn.net/5.19/lang/zh-CN.js"></script>
            <script src="http://vjs.zencdn.net/5.5.3/video.js"></script>
            <script>
                videojs.options.flash.swf = "static/video/js/video-js.swf";
            </script>
            <script>
                var playera = videojs('#myvideoa');
                playera.play();
                var playerb = videojs('#myvideob');
                playerb.play();
                var playerc = videojs('#myvideoc');
                playerc.play();
                var playerd = videojs('#myvideod');
                playerd.play();
            </script>
        </div>

</body>
</html>
