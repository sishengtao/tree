<!DOCTYPE HTML>

<html lang="zh-cn">
<head>
    <meta charset="UTF-8" />
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>易订货-应用中心</title>
    <link rel="stylesheet" href="https://res.dinghuo123.com/dist/ydh/css/c.css?v=1529401346974" />
</head>
<body>
<div id="ydh">

</div>
</body>
<script type="text/javascript" src="https://res.dinghuo123.com/dist/js/dev/growingio-pc.js"></script>
<script type="text/javascript">
    /*<![CDATA[*/
    _vds.push(['setCS1','YDH1','310706769'
    ]);
    _vds.push(['setCS2','YDH2',1311782
    ]);
    _vds.push(['setCS3','YDH3',''
    ]);
    _vds.push(['setCS4','YDH4',0
    ]);
    _vds.push(['setCS5','YDH5','0'
    ]);
    _vds.push(['setCS6','YDH6',1
    ]);
    _vds.push(['setCS7','YDH7','xiyou'
    ]);
    _vds.push(['setCS8','YDH8',''
    ]);
    _vds.push(['setCS9','YDH9',''
    ]);
    _vds.push(['setCS10','YDH10','1'
    ]);
    var SYSTEM = {
        "amountUnit":"￥",//货币
        'corp':'https://corp.dinghuo123.com',//current app url
        'portal':'https://www.dinghuo123.com',//portal url
        'res':'https://res.dinghuo123.com',//resource url
        'sso':'https://sso.dinghuo123.com',//sso url
        'ossimg_url':'https://oss.dinghuo123.com/',//ossurl
        'file':'https://file.dinghuo123.com',//ydh-file-web url[ydh]
        'customerName':'\u5BA2\u6237',//订货方名称
        'dbid':1311782,//订货方名称
        'userName':'310706769',
        'rightCodes':[225,226,227,228,229,1,2,3,4,5,9,11,12,14,15,16,17,18,19,20,21,22,23,24,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43,44,45,46,47,48,49,50,60,330,331,332,333,334,335,336,337,338,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,173,174,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224],//所有权限
        'processList':[0,1,2,3,4,6],//所有流程
        'usedShowstyleTemplateId':null,
        'draftShowstyleTemplateId':false,//草稿ID
        'serviceRemainderDays':3509,//服务到期时间
        'isDev':false,//是否为开发环境
        'isProfessionalEdition':false,
        //是否是专业版
        'isUltimateEdition':false,
        //是否是旗舰版
        'isydp':false,
        //是否易店铺
        //'themeCode':"blue",//当前使用的主题
        'order':{
            'isUseDisCount':true,//是否开启特价[ydh/agent]
            'isAddValueInvoice':'1',//是否可开启增值税发票[ydh/agent]
            'isEnabledInvoice':true,//是否开启发票[ydh/agent]
            'taxrate':'0',//普通发票税点
            'addValueTaxrate':'0',//增值税发票税点
            'isEnabledRatifyOrder':false,//是否开启订单核准[ydh]
            'isOrderDeliverDate':false,//交货日期是否为必填[ydh/agent]
            'isOrderFreight':true,//是否开启运费[ydh/agent]
            'orderFreightBillingMethod':'0',//计费方式 0 数量，1重量
            'isEnabledFreeDelivery':false,//是否满减运费
            'freeDeliveryThreshold':'0',//满减金额
            'isEnabledAdvancedPrint':false//是否启用高级打印
        },
        'product':{
            'productImgsUrl':'https://oss.dinghuo123.com/images/productImage/',// 商品图片url前缀
            'priceModel':null,//1 按照客户级别定价  2 按照客户单独定价[ydh]
            'isEnabledSecKill':false,//是否开启秒杀
            'isEnabledRewardActivity':false,//是否幸运大转盘
            'isUseProductWeight':false,// 是否启用商品重量统计[ydh/agent]
            'weightUnitName':null,//商品重量统计单位[ydh/agent]
            'isUseProductImage':true,//是否启用商品图片[ydh/agent]
            'isUseMinQuantity':true,//是否启用起订量[ydh/agent]
            'isUseMaxQuantity':false,//是否启用限定量[ydh/agent]
            'isUseMultiMarketPrice':false,//是否启用分级市场价仅供代理商端显示用[ydh]
            'isUseProductMulSpec':true,//是否使用多规格商品[ydh/agent]
            'isUseInventory':true,//是否开启库存[ydh/agent]
            'isUseProductBrand':true,//是否开启商品品牌[ydh/agent]
            'isEnabledInventoryCheck':false,//负库存不允许订货库存[agent]
            'inventoryAgentShowType':'0',//库存显示方式 0：不显示库存  2：显示库存有无 1：显示库存数量[agent]
            'isUseProductProperty':false,//是否启用商品自定义字段[ydh/agent]
            'property1Name':'',//属性1名称
            'property2Name':'',//属性2名称
            'property3Name':'',//属性3名称
            'property4Name':'',//属性4名称
            'property5Name':'',//属性5名称
            'property6Name':'',//属性6名称
            'property7Name':'',//属性7名称
            'property8Name':'',//属性8名称
            'property9Name':'',//属性9名称
            'property10Name':'',//属性10名称
            'customAttributeStitchWidth':'200',//自定义字段列表宽度
            'productTags':[{'createTime':null,'creator':null,'dbid':null,'id':null,'modifyTime':null,'status':'1','tagId':1,'tagName':'\u65B0\u54C1\u4E0A\u67B6','updator':null,'version':null},{'createTime':null,'creator':null,'dbid':null,'id':null,'modifyTime':null,'status':'1','tagId':2,'tagName':'\u70ED\u5356\u63A8\u8350','updator':null,'version':null},{'createTime':null,'creator':null,'dbid':null,'id':null,'modifyTime':null,'status':'1','tagId':3,'tagName':'\u6E05\u4ED3\u4F18\u60E0','updator':null,'version':null}],//商品标签
            //'productTags':'[{"id":1234561,"tagId":1,"name":"新品上架","status":"1"},{"id":1234562,"tagId":2,"name":"热卖推荐","status":"1"},{"id":1234563,"tagId":3,"name":"清仓优惠","status":"1"}]'//商品标签
            'isUseProductBrand':true//是否开启商品品牌[ydh/agent]
        },
        'customer':{
            'isEnabledCustomRegion':true//是否开启客户自定义区域
        },
        'setting':{
            'isEnabledFundAccount':true//如果启用了资金账号[agent]
        }

    };
    SYSTEM.version = '15294013469740506';
    /*]]>*/
</script>

<script id="seajsnode" src="https://res.dinghuo123.com/dist/ydh/js/lib/sea.js"></script>
<script src="https://res.dinghuo123.com/dist/ydh/js/lib/seajs-preload.js"></script>
<script type="text/javascript">
    /*<![CDATA[*/
    seajs.config({
        base: "/",
        paths: {
            "data": 'https://res.dinghuo123.com/dist/ydh/js/data',
            "ctl": 'https://res.dinghuo123.com/dist/ydh/js/ctl/app-center',
            "lib": 'https://res.dinghuo123.com/dist/ydh/js/lib',
            "com": 'https://res.dinghuo123.com/dist/ydh/js/com',
            "mod": 'https://res.dinghuo123.com/dist/ydh/js/mod',
            "view": 'https://res.dinghuo123.com/dist/ydh/js/view/app-center',
            "lang": 'https://res.dinghuo123.com/dist/ydh/js/lib/lang',
            "css": 'https://res.dinghuo123.com/dist/ydh/css'
        },
        alias: {
            "seajs-text": "lib/seajs-text",
            "jquery": "lib/jquery-2.2.2",
            "uri": "lib/jquery.uriAnchor",
            "util": "lib/util",
            "icheck": "com/icheck/icheck",
            "slide": "com/jquery.SuperSlide/jquery.SuperSlide.2.1.1",
            "dialog": "com/artDialog/dialog",
            "spectrum": "com/spectrum/spectrum",
            "grid": "com/grid/js/jquery.jqGrid"
        },
        debug: true,
        preload: [
            "jquery",
            "seajs-text"
        ],
        map: [
            [".css", ".css?v=" + SYSTEM.version],
            [".js", ".js?v=" + SYSTEM.version]
        ]
    });
    /*]]>*/
</script>

<script type="text/javascript">
    /*<![CDATA[*/
    var _IE = (function () {
        var v = 3, div = document.createElement('div'), all = div.getElementsByTagName('i');
        while (
            div.innerHTML = '<!--[if gt IE ' + (++v) + ']><i></i><![endif]-->',
                all[0]
            ) ;
        return v > 4 ? v : false;
    }());
    if (!!_IE && _IE < 9) {
        window.location.href = SYSTEM.res + "/browser.html";
    }
    seajs.use("ctl/index-shell");
    /*]]>*/
</script>
<script>
    /*<![CDATA[*/
    (function (ji, a, x, i, n, j, s) {
        ji[n] = ji[n] || function () {
            (ji[n].n = ji[n].n || []).push(arguments);
        };
        v = new Date().getUTCDate();
        j = a.createElement(x), s = a.getElementsByTagName(x)[0];
        j.async = true;
        j.charset = "UTF-8";
        j.src = i + "?v=" + v + "&id=bnfzodzjeme3dw&appName=yykf434&appChannel=20001";
        s.parentNode.insertBefore(j, s);
    })(window, document, "script", "//web.jiaxincloud.com/mcs.js", "_JIAXIN");
    _JIAXIN();
    /*]]>*/
</script>
</html>
