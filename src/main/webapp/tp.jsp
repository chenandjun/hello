<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>图片放大</title>
    <style>
        table tr td img{width:60px;}
        table tr td{text-align:center; padding:5px;}
        table tr th{background:#ddd; height:36px; }
        table tr td{border-bottom:1px solid #ddd; border-left:1px solid #ddd; }
        table tr td:last-child{border-right:1px solid #ddd;}

        .bg-img{position: fixed;background-color:rgba(190,190,190,0.5);z-index:9999;}
        .tra-img{text-align:center;position:relative;top:50%;
            -webkit-transform:translateY(-50%);
            -moz-transform:translateY(-50%);
            -o-transform:translateY(-50%);
            -ms-transform:translateY(-50%);
            transform:translateY(-50%);
        }
        .zoom-in{
            cursor: -moz-zoom-in;
            cursor: -webkit-zoom-in;
            cursor: zoom-in;
        }
        .zoom-out{
            cursor: -moz-zoom-out;
            cursor: -webkit-zoom-out;
            cursor: zoom-out;
        }
    </style>
</head>
<body>
<table cellpadding="0" cellspacing="0" width="700">
    <thead>
    <tr>
        <th>序号</th><th>图片</th><th>说明</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td><img class="zoom-in" src="static/image/drone_001.jpg" /></td>
        <td>点击图片可放大</td>
    </tr>
    <tr>
        <td>2</td>
        <td><img class="zoom-in" src="static/image/drone_002.jpg" /></td>
        <td>点击图片可放大</td>
    </tr>
    <tr>
        <td>2</td>
        <td><img class="zoom-in" src="static/image/drone_003.jpg" /></td>
        <td>点击图片可放大</td>
    </tr>
    </tbody>
</table>
<script src="static/jquery/jquery.min.js"></script>
<script>
    //点击图片放大
    $(document).on("click", "table tr td img", function () {
        var img_content = $(this).attr("src");
        $("body").append(
            "<div class='bg-img'>"
            + "<div class='tra-img'>"
            + "<img src='" + img_content + "' class='zoom-out'>"
            + "</div></div>"
        );
        //bottom:'0',left:'0';会让图片从页面左下放出现，如果想从左上方出现，将bottom:'0'改成top:'0';
        $(".bg-img").animate({
            width: "100%",
            height: "100%",
            bottom: "0",
            left: "0",
        }, "normal")
    })
    //点击外层区域页面图片隐藏
    $(document).on("click", ".bg-img", function () {
        $(this).remove();
    })
</script>
</body>
</html>
