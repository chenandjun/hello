<%--
  Created by IntelliJ IDEA.
  User: chen_
  Date: 2018/7/17
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>生成pdf下载</title>
    <style type="text/css">
        .handle{
            margin: 0 auto;
            width: 500px;
            text-align: center;
            margin-bottom: 20px;
        }
        .download{
            cursor: pointer;
            padding: 4px 30px;
            border: 1px solid #008CCA;
            background: #01B9FF;
            color: #FFF;
            border-radius: 8px;
        }
        .download:active{
            background: #008CCA;
        }
        .page{
            margin: 0 auto;
            width: 1000px;
            border: solid 1px #000000;
        }
        .title{
            margin: 0 auto;
            width: 500px;
            text-align: center;
        }
        .content{
            margin: 0 auto;
            width: 800px;
            text-align: left;
        }
        .content img{
            max-width: 800px;
        }
    </style>
</head>
<body>
<!--参考 http://blog.csdn.net/pwc1996/article/details/70141383-->
<div class="handle"><span id="download-paper" class="download">下载为pdf</span></div>
<div class="page">
        <p>
            语言优美：所谓优美，就是指散文的语言清新明丽(也美丽)，生动活泼，富于音乐感，行文如涓涓流水，叮咚有声，如娓娓而谈，情真意切。所谓凝练，是说散文的语言简洁质朴，自然流畅，寥寥数语就可以描绘出生动的形象，勾勒出动人的场景，显示出深远的意境。散文力求写景如在眼前，写情沁人心脾。
            <img src="static/image/drone_001.jpg">
        </p>
        <p>
            形散神聚：”形散“既指题材广泛、写法多样，又指结构自由、不拘一格；“神聚”既指中心集中，又指有贯穿全文的线索。散文写人写事都只是表面现象，从根本上说写的是情感体验。情感体验就是“不散的神”，而人与事则是“散”的可有可无、可多可少的“形”。

        </p>
        <p>
            散文素有“美文”之称，它除了有精神的见解、优美的意境外，还有清新隽永、质朴无华的文采。经常读一些好的散文，不仅可以丰富知识、开阔眼界，培养高尚的思想情操，还可以从中学习选材立意、谋篇布局和遣词造句的技巧，提高自己的语言表达能力。

        </p>
        <p>
            至于“形”的含义，《乐记》里有“在天成象，在地成形”的话。钱钟书先生释为“‘形’者，完成之定状”。钱先生还引述亚里士多德论“自然”有五层含义。其四，是“相形之下，尚未成形之原料”，也就是“有质而无形”的状态；其五，是“止境宿归之形”。这种由“原质”，“原料”而“成形”的说法用之于文章写作，也如钱先生所阐述的，“春来花鸟，具‘形’之天然物色也，而性癖耽吟者反目为‘诗料’”。指明做为“诗料”的“形”，即包括着“题材”的内。“吟安佳句，具‘形’之词章也”。指明做为诗文的“形”即指“词章”，包括语言、结构等。我在上文所论“形”的概念，也具有同这里所引说法的一致性。
            
        </p>
</div>

<script src="http://www.sqbang.cc/MyNote/js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
<script src="http://www.sqbang.cc/MyNote/js/pdf_download/html2canvas.js" type="text/javascript" charset="utf-8"></script>
<script src="http://www.sqbang.cc/MyNote/js/pdf_download/jspdf.debug.js" type="text/javascript" charset="utf-8"></script>
<script src="http://www.sqbang.cc/MyNote/js/pdf_download/renderPDF.js" charset="utf-8"></script>
<script src="http://www.sqbang.cc/MyNote/js/pdf_download/paper_download.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    var imgArray = $('.page')[0].getElementsByTagName('img');
    var down = new downLoad(imgArray);
    down.init(document.getElementById('download-paper'),$('.page')[0],'pdf文件名称','a4');
</script>
</body>
</html>
