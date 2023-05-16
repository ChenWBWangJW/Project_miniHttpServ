<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta
      name="viewport"
      content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"
    />
    <title>百度产品大全</title>
    <style type="text/css">
      body {
        margin: 0;
        padding: 0;
        font-size: 14px;
        font-family: Arial, Helvetica, sans-serif;
        position: relative;
      }

      a {
        color: #0000cc;
      }

      a:link {
        color: #0000cc;
      }

      img,
      ul,
      li,
      h3,
      form,
      table {
        margin: 0;
        padding: 0;
        border: 0;
        list-style: none;
      }

      #head {
        width: 100%;
        box-shadow: 0 2px 15px 0 rgba(0, 0, 0, 0.1);
        position: relative;
      }

      .s_form:after {
        content: ".";
        display: block;
        height: 0;
        clear: both;
        visibility: hidden;
      }

      .s_form {
        zoom: 1;
        width: 1000px;
        height: 40px;
        padding: 15px 0;
        margin: 0 auto;
      }

      .logo {
        float: left;
        margin-top: 4px;
      }

      .logo img {
        width: 102px;
        height: 32px;
      }

      .fm {
        clear: none;
        position: relative;
        float: left;
        margin-left: 16px;
      }

      .s_ipt_wr {
        border: 2px solid #c4c7ce;
        border-radius: 10px 0 0 10px;
        background: #fff;
        display: inline-block;
        vertical-align: top;
        width: 590px;
        height: 36px;
        margin-right: 0px;
        border-right-width: 0px;
        overflow: hidden;
      }

      .s_ipt_wr:hover,
      .s_ipt_wr.ipthover {
        border-color: #999 transparent #b3b3b3 #999;
      }

      .s_ipt_wr.iptfocus {
        border-color: #4e6ef2 transparent #4e6ef2 #4e6ef2;
      }

      .i {
        width: 590px;
        height: 36px;
        font: 16px/18px arial;
        line-height: 22px\9;
        padding: 5px 10px 8px 7px;
        background: #fff;
        border: 0;
        outline: none;
        -webkit-appearance: none;
      }

      .btn_wr {
        width: auto;
        height: auto;
        *border-bottom: none;
        display: inline-block;
      }

      .btn {
        width: 112px;
        height: 40px;
        font-size: 17px;
        color: white;
        letter-spacing: 1px;
        background: #4e6ef2;
        border: none;
        padding: 0;
        border-bottom: 1px solid #2d78f4;
        outline: medium;
        *border-bottom: none;
        -webkit-appearance: none;
        -webkit-border-radius: 0 10px 10px 0;
        cursor: pointer;
      }

      .btn_h {
        background: #4661d9;
        *border-bottom: none;
      }

      #main {
        width: 1000px;
        padding: 0;
        margin: 0 auto;
      }

      .crumb {
        font-family: arial "Sim Sun";
        color: #666;
      }

      .crumb a {
        text-decoration: none;
        color: #0000d0;
      }

      .crumb a:hover {
        text-decoration: underline;
      }

      input {
        padding-top: 0;
        padding-bottom: 0;
        -moz-box-sizing: border-box;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
      }

      #u,
      #head,
      #tool,
      #search,
      #foot {
        font-size: 13px;
      }

      .seth {
        margin-left: 20px;
        display: none;
      }

      .seth a {
        color: #00c;
      }

      #help {
        margin-left: 24px;
      }

      .s_link {
        float: left;
        position: absolute;
        top: 50%;
        margin-top: -8px;
        right: 24px;
        width: 102px;
      }

      .s_link a {
        color: #222;
        text-decoration: none;
        float: left;
      }

      .s_link a:hover {
        color: #315efb;
      }

      .short-line {
        margin: 0 0 0 7px;
        color: #999999;
      }

      #tb_mr {
        color: #00c;
        cursor: pointer;
        position: relative;
        z-index: 298;
      }

      #tb_mr small {
        font-size: 11px;
      }

      #tb_mr b {
        font-weight: normal;
        text-decoration: underline;
      }

      #more {
        width: 58px;
        height: 100px;
        border: 1px solid #9a99ff;
        background: #fff;
        position: absolute;
        z-index: 298;
        left: 452px;
        top: 45px;
        *top: 46px;
        overflow: hidden;
        display: none;
        outline: none;
      }

      #more a {
        width: 53px;
        height: 25%;
        line-height: 24px;
        display: block;
        padding: 0 0 0 7px;
        color: #0001cf;
        text-decoration: none;
      }

      #more a span {
        font-family: "宋体";
      }

      #more a:hover {
        background: #d9e1f6;
      }

      #more div {
        height: 1px;
        overflow: hidden;
        background: #ccf;
        margin: 0 3px;
      }

      #page {
        white-space: nowrap;
      }

      #page {
        word-spacing: 4px;
      }

      #page .n {
        font-size: 16px;
      }

      .tools {
        width: 220px;
        position: absolute;
        top: 10px;
      }

      .tools a {
        text-decoration: none;
      }

      .tools a:hover {
        text-decoration: underline;
      }

      #mHolder {
        width: 62px;
        position: relative;
        z-index: 296;
        top: -18px;
        margin-left: 9px;
        margin-right: -12px;
        display: none;
      }

      #mCon {
        height: 18px;
        position: absolute;
        right: 7px;
        top: 3px;
        top: 6px\9;
        cursor: pointer;
        padding: 0 18px 0 0;
        line-height: 18px;
        background: url(//www.baidu.com/img/bg-1.0.0.gif) no-repeat right -133px;
        background-position: right -135px\9;
      }

      #mCon span {
        color: #00c;
        cursor: default;
        display: block;
      }

      #mCon .hw {
        text-decoration: underline;
        cursor: pointer;
      }

      #mMenu {
        width: 56px;
        border: 1px solid #9a99ff;
        position: absolute;
        right: 7px;
        top: 28px;
        display: none;
        background: #fff;
      }

      #mMenu a {
        width: 100%;
        height: 100%;
        color: #00c;
        display: block;
        line-height: 22px;
        text-indent: 6px;
        text-decoration: none;
      }

      #mMenu a:hover {
        background: #d9e1f6;
      }

      #mMenu .ln {
        height: 1px;
        background: #ccf;
        overflow: hidden;
        margin: 2px;
        font-size: 1px;
        line-height: 1px;
      }

      h3 {
        font-size: 16px;
        padding-bottom: 10px;
        margin: 30px 0 0 0;
        font-family: arial, "Sim Sun";
        font-weight: normal;
        color: #333;
        width: 1000px;
      }

      h3 sup {
        font: normal 14px arial, "Sim Sun";
        color: #fff;
        vertical-align: top;
        width: 32px;
        height: 18px;
        line-height: 18px;
        text-align: center;
        background-color: #ff6600;
        border-radius: 4px;
        margin: 2px 0 0 8px;
        display: inline-block;
      }

      h3.new {
        margin: 30px 0 0 0;
      }

      .l {
        float: left;
      }

      .con {
        float: left;
        width: 225px;
        margin: 0 20px 0 0;
        _overflow: hidden;
        _height: 66px;
        padding: 15px 0 16px 0;
        height: 34px;
      }

      .con_last {
        margin: 0;
      }

      .con a {
        margin-bottom: 4px;
        display: inline-block;
        font-family: arial "MicroSoft YaHei";
        font-weight: bold;
        color: #4662d9;
        text-decoration: none;
      }

      .con a:hover {
        text-decoration: underline;
      }

      .con span {
        font-family: arial, "Sim Sun";
        font-size: 12px;
        color: #666;
      }

      .abg {
        width: 24px;
        height: 24px;
        display: block;
        float: left;
        margin-right: 8px;
        overflow: hidden;
        background: url(img/more.png) no-repeat left -2244px;
      }

      .secr {
        width: 24px;
        height: 24px;
        display: block;
        float: left;
        margin-right: 8px;
        overflow: hidden;
        background: url(img/secr.gif) no-repeat;
      }

      .aipage {
        width: 24px;
        height: 24px;
        display: block;
        float: left;
        margin-right: 8px;
        overflow: hidden;
        background: url(img/aipage.gif) no-repeat;
      }

      .con .baipin {
        background: url(img/baipin.png) no-repeat;
        background-size: 24px 24px;
      }

      .con .wangpanqiye {
        background: url(img/wangpanqiye.png) no-repeat;
        background-size: 24px 24px;
      }

      .con .yikexiangce {
        background: url(img/yikexiangce.png) no-repeat;
        background-size: 24px 24px;
      }

      .con .aiqicha {
        background: url(img/aiqicha.jpg) no-repeat;
        background-size: 24px 24px;
      }

      .con .xiaodu {
        background: url(img/xiaodu.gif) no-repeat;
        background-size: 24px 24px;
      }

      .con .anquan {
        background: url(img/anquan.png) no-repeat;
        background-size: 24px 24px;
      }

      .con .baifubao {
        background: url(img/baifubao.gif) no-repeat;
        background-size: 24px 24px;
      }

      .con .finance {
        background: url(img/finance.gif) no-repeat;
        background-size: 24px 24px;
      }

      .con .ydapp {
        background: url(img/ydapp.gif) no-repeat;
        background-size: 24px 24px;
      }

      .con .fanyiapp {
        background: url(img/fanyiapp.gif) no-repeat;
        background-size: 24px 24px;
      }

      .con .aifanfan {
        background: url(img/aifanfan.png) no-repeat;
        background-size: 24px 24px;
      }

      .con .baiduyingxiao {
        background: url(img/baiduyingxiao.png) no-repeat;
        background-size: 24px 24px;
      }

      .con .youjia {
        background: url(img/youjia.png) no-repeat;
        background-size: 24px 24px;
      }

      .con .jiankang {
        background: url(img/jiankang.png) no-repeat;
        background-size: 24px 24px;
      }

      .con .jiaoyu {
        background: url(img/jiaoyu.png) no-repeat;
        background-size: 24px 24px;
      }

      .gameplatform {
        background: url(img/gamelogo.jpg) no-repeat;
        background-size: 24px 24px;
      }

      .wangpannewlogo {
        background: url(img/wangpanlogo.png) no-repeat;
        background-size: 24px 24px;
        border-radius: 4px;
        border: 1px solid rgba(17, 16, 16, 0.05);
      }

      .baiduresou {
        background: url(img/baiduresou.png) no-repeat;
        background-size: 24px 24px;
      }

      .yueduqi {
        background-position: left -2244px;
      }

      .yidongyingyong {
        background-position: left top;
      }

      .jdo {
        background-position: left -2142px;
      }

      .yi {
        background-position: left -1802px;
      }

      .car {
        background-position: left -1734px;
      }

      .web {
        background-position: left -1700px;
      }

      .video {
        background-position: left -1292px;
      }

      .map {
        background: url(img/map.jpg) no-repeat;
        background-size: 24px 24px;
      }

      .newslogo {
        background: url(img/news.png) no-repeat;
        background-size: 24px 24px;
      }

      .image {
        background-position: left -714px;
      }

      .dict {
        background-position: left -476px;
      }

      .u_tool {
        background-position: left -884px;
      }

      .tuan {
        background-position: left -1564px;
      }

      .hao123 {
        background-position: left -612px;
      }

      .site_nav {
        background-position: left -1360px;
      }

      .lvyou {
        background-position: left -2108px;
      }

      .zhidao {
        background-position: left -2040px;
      }

      .baike {
        background-position: left -238px;
      }

      .tieba {
        background-position: left -1156px;
      }

      .xinzhi {
        background-position: left -2210px;
      }

      .hi {
        background-position: left -646px;
      }

      .wenku {
        background-position: left -1666px;
      }

      .zhangmen {
        background-position: left -1054px;
      }

      .shenbian {
        background-position: left -1258px;
      }

      .jingyan {
        background-position: left -816px;
      }

      .cang {
        background-position: left -340px;
      }

      .youxi {
        background-position: left -1904px;
      }

      .ting {
        background-position: left -1462px;
      }

      .youxizixun {
        background-position: left -1938px;
      }

      .search_mobile {
        background-position: left -1836px;
      }

      .baidu_mobile {
        background-position: left -1836px;
      }

      .kuaisou {
        background-position: left -136px;
      }

      .map_mobile {
        background-position: left -986px;
      }

      .open {
        background-position: left -1122px;
      }

      .zhanzhang {
        background-position: left -2006px;
      }

      .tongji {
        background-position: left -1496px;
      }

      .lianmeng {
        background-position: left -1632px;
      }

      .tuiguang {
        background-position: left -1598px;
      }

      .guanjia {
        background-position: left -578px;
      }

      .data {
        background-position: left -442px;
      }

      .zhishu {
        background-position: left -748px;
      }

      .yingyong {
        background-position: left -68px;
      }

      .yingyin {
        background-position: left -170px;
      }

      .hi {
        background-position: left -680px;
      }

      .tool {
        background-position: left -306px;
      }

      .ime {
        background-position: left -1428px;
      }

      .qian {
        background-position: left -1190px;
      }

      .liubanlv {
        background-position: left -272px;
      }

      .fanyi {
        background-position: left -102px;
      }

      .xunren {
        background-position: left -1768px;
      }

      .gongyi {
        background-position: left -544px;
      }

      .jijinhui {
        background-position: left -374px;
      }

      .mangdao {
        background-position: left -408px;
      }

      .laonian {
        background-position: left -34px;
      }

      .zhuanli {
        background-position: left -2074px;
      }

      .qiyi {
        background-position: left -1224px;
      }

      .youa {
        background-position: left -1870px;
      }

      .leju {
        background-position: left -850px;
      }

      .tiankong {
        background-position: left -1394px;
      }

      .skygame {
        background-position: left -2278px;
      }

      .developer {
        background-position: left -2312px;
      }

      .mobileexplore {
        background-position: left -2346px;
      }

      .leju {
        background-position: left -2414px;
      }

      .mobilesearch {
        background-position: left -2448px;
      }

      .zhangshangbaidu {
        background-position: left -2482px;
      }

      .mobile-tongxunlu {
        background-position: left -2516px;
      }

      .liulanqi {
        background-position: left -2550px;
      }

      .fenxiang {
        background-position: left -2584px;
      }

      .yunzhineng {
        background-position: left -2618px;
      }

      .ydtongji {
        background-position: left -2652px;
      }

      .kaifazhe {
        background-position: left -2720px;
      }

      .baiduxiangche {
        background-position: left -2754px;
      }

      .wangpan {
        background-position: left -2788px;
      }

      .xiaoyuan {
        background-position: left -2822px;
      }

      .ting2 {
        background-position: left -2890px;
      }

      /**/
      .attr_879 {
        background-position: left -9428px;
      }

      .attr_878 {
        background-position: left -9394px;
      }

      .attr_877 {
        background-position: left -9360px;
      }

      .attr_876 {
        background-position: left -9326px;
      }

      .attr_875 {
        background-position: left -9292px;
      }

      .attr_873 {
        background-position: left -9164px;
      }

      .attr_872 {
        background-position: left -9198px;
      }

      .attr_871 {
        background-position: left -8994px;
      }

      .attr_870 {
        background-position: left -8960px;
      }

      .attr_869 {
        background-position: left -8892px;
      }

      .attr_868 {
        background-position: left -8858px;
      }

      .attr_860 {
        background-position: left -8246px;
      }

      .attr_859 {
        background-position: left -8172px;
      }

      .attr_858 {
        background-position: left -8036px;
      }

      .attr_857 {
        background-position: left -9028px;
      }

      .attr_855 {
        background-position: left -7900px;
      }

      .attr_854 {
        background-position: left -9062px;
      }

      .attr_851 {
        background-position: left -7594px;
      }

      .attr_850 {
        background-position: left -7560px;
      }

      .attr_849 {
        background-position: left -7492px;
      }

      .attr_848 {
        background-position: left -7424px;
      }

      .attr_845 {
        background-position: left -7220px;
      }

      .attr_843 {
        background-position: left -6574px;
      }

      .attr_842 {
        background-position: left -6540px;
      }

      .attr_841 {
        background-position: left -6506px;
      }

      .attr_840 {
        background-position: left -6472px;
      }

      .attr_839 {
        background-position: left -6438px;
      }

      .attr_838 {
        background-position: left -6404px;
      }

      .attr_835 {
        background-position: left -6316px;
      }

      .attr_833 {
        background-position: left -6248px;
      }

      .attr_831 {
        background-position: left -6180px;
      }

      .attr_830 {
        background-position: left -6146px;
      }

      .attr_827 {
        background-position: left -6044px;
      }

      .attr_824 {
        background-position: left -5908px;
      }

      .attr_823 {
        background-position: left -7526px;
      }

      .attr_821 {
        background-position: left -5806px;
      }

      .attr_819 {
        background-position: left -5738px;
      }

      .attr_816 {
        background-position: left -5704px;
      }

      .attr_813 {
        background-position: left -5500px;
      }

      .attr_809 {
        background-position: left -5942px;
      }

      .attr_806 {
        background-position: left -5263px;
      }

      .attr_805 {
        background-position: left -7186px;
      }

      .attr_804 {
        background-position: left -5195px;
      }

      .attr_803 {
        background-position: left -5127px;
      }

      .attr_802 {
        background-position: left -8104px;
      }

      .attr_800 {
        background-position: left -8070px;
      }

      .attr_795 {
        background-position: left -4777px;
      }

      .attr_794 {
        background-position: left -4743px;
      }

      .attr_793 {
        background-position: left -4709px;
      }

      .attr_792 {
        background-position: left -4675px;
      }

      .attr_791 {
        background-position: left -4811px;
      }

      .attr_790 {
        background-position: left -4505px;
      }

      .attr_789 {
        background-position: left -5093px;
      }

      .attr_787 {
        background-position: left -4301px;
      }

      .attr_786 {
        background: url("img/qqyy.gif") no-repeat center;
      }

      .attr_784 {
        background: url("img/qqyy.gif") no-repeat center;
      }

      .attr_783 {
        background-position: left -4132px;
      }

      .attr_782 {
        background-position: left -4098px;
      }

      .attr_775 {
        background-position: left -3792px;
      }

      .attr_771 {
        background-position: left -3452px;
      }

      .attr_767 {
        background-position: left -3316px;
      }

      .attr_766 {
        background-position: left -3282px;
      }

      .attr_720 {
        background-position: left -6880px;
      }

      .attr_701 {
        background-position: left -3928px;
      }

      .ydtongji {
        background-position: left -2652px;
      }

      .kaifazhe {
        background-position: left -8280px;
      }

      .lvyou {
        background-position: left -6778px;
      }

      .zhishu {
        background-position: left -748px;
      }

      .jingyan {
        background-position: left -6744px;
      }

      .ime {
        background-position: left -7322px;
      }

      .guanjia {
        background-position: left -578px;
      }

      .image {
        background-position: left -6948px;
      }

      .tuiguang {
        background-position: left -1598px;
      }

      .mobileexplore {
        background-position: left -2346px;
      }

      .news {
        background-position: left -6914px;
      }

      .zhidao {
        background-position: left -7118px;
      }

      .lianmeng {
        background-position: left -1632px;
      }

      .tieba {
        background: url(./img/teiba.png) no-repeat center;
        background: url(./img/teiba@2x.png) no-repeat center / contain;
      }

      .gongyi {
        background-position: left -544px;
      }

      .tongji {
        background-position: left -1496px;
      }

      .ime_mobile {
        background: url(./img/ime_mobile.png);
      }

      .baike {
        background-position: left -9975px;
      }

      .wangpan {
        background-position: left -2788px;
      }

      .yingyin {
        background-position: left -170px;
      }

      .zhanzhang {
        background-position: left -2006px;
      }

      .yingyong {
        background-position: left -68px;
      }

      .video {
        background-position: left -7016px;
      }

      .site_nav {
        background-position: left -6846px;
      }

      .liulanqi {
        background-position: left -4539px;
      }

      .fanyi {
        background-position: left -102px;
      }

      .open {
        background-position: left -1122px;
      }

      .youxi {
        background-position: left -1904px;
      }

      .web {
        background-position: left -1700px;
      }

      .hao123 {
        background-position: left -4437px;
      }

      .wenku {
        background-position: left -7050px;
      }

      .ime {
        background-position: left -9564px;
      }

      .baijiahaologo {
        background: url(img/baijiahao.png) no-repeat;
        background-size: cover;
      }

      .con .haokan {
        background: url(img/haokan.gif) no-repeat;
      }

      .con .duxiaoshi {
        background: url(img/duxiaoshi@1x.png) no-repeat;
        background-size: cover;
      }

      .wangpan {
        background-position: left -9701px;
      }

      .attr_851 {
        background-position: left -9667px;
      }

      .translate {
        background-position: left -9735px;
      }

      .ai {
        background-position: left -9770px;
      }

      .quzheng {
        background-position: left -9805px;
      }

      .lvshi {
        background-position: left -9840px;
      }

      .guanxingpan {
        background: url(img/guanxingpan.png) no-repeat;
        background-size: cover;
      }

      .bit {
        background-position: left -9941px;
      }

      .yingxiao_center {
        background-position: left -10009px;
      }

      .trust {
        background-position: left -10080px;
      }

      .juejin {
        background: url(img/juejin.png) no-repeat;
        background-size: 24px 24px;
      }

      .baipin {
        background-position: left -10149px;
      }

      .baiji {
        background-position: left -10182px;
      }

      .bear {
        background-position: left -10250px;
      }

      .cl {
        clear: both;
        height: 0px;
        line-height: 0px;
        font-size: 0px;
        overflow: hidden;
      }

      .footer {
        height: 42px;
        line-height: 42px;
        border-top: 1px solid #ebebeb;
        background-color: #f8f8f8;
        text-align: center;
        color: #666;
        font-size: 12px;
        margin-top: 40px;
        width: 100%;
      }

      .footer a {
        color: #666;
      }


      .con .nuomi {
        background-position: 0px -25px;
      }

      .con .image {
        background-position: 0px -50px;
      }

      .con .tuiguang {
        background-position: 0px -100px;
      }

      .con .wenku {
        background-position: 0px -125px;
      }

      .con .zhidao {
        background-position: 0px -150px;
      }

      .con .nuomi,
      .con .image,
      .con .tuiguang,
      .con .wenku,
      .con .zhidao {
        background-image: url(./img/more_z.png);
        background-size: 24px;
      }
    </style>

    <style type="text/css">
      @media (max-width: 1024px) {
        body {
          position: relative;
        }

        h3 {
          width: 100%;
        }

        h3,
        h3.new {
          margin-top: 15px;
        }

        #head {
          padding: 0 10px;
          width: auto;
          border-bottom: 0;
        }

        #main {
          margin: 0 10px;
          width: auto;
        }

        #foot {
          width: auto;
        }

        .i {
          width: 100%;
          height: 36px;
        }

        .s_form {
          width: 100%;
          height: auto;
          position: relative;
        }

        .fm {
          margin: 0 142px 0 108px;
          float: none;
        }

        .s_ipt_wr {
          margin-right: 90px;
          display: block;
          width: auto;
          height: auto;
          box-sizing: border-box;
        }

        .btn_wr {
          position: absolute;
          right: 0;
          top: 0;
        }

        .btn {
          height: 40px;
          width: 90px;
        }

        .logo {
          position: absolute;
          margin-top: 0px;
        }

        .tools {
          width: auto;
          min-width: 30px;
          top: 0;
          right: -52px;
        }

        .s_link {
          right: 14px;
        }

        .crumb a {
          line-height: 40px;
          display: inline-block;
        }

        .con {
          padding: 8px 0 15px;
          position: relative;
        }

        .con_last {
          margin: 0 20px 0 0;
        }

        .con .abg {
          margin-bottom: 0;
        }

        .con .secr {
          margin-bottom: 0;
        }

        .con .aipage {
          margin-bottom: 0;
        }

        div[id^="sd"] {
          top: 39px !important;
          z-index: 1;
        }

        div[id^="sd"] td {
          line-height: 28px !important;
        }

        .con div:last-child > a {
          margin: 2px 0 0;
          padding: 0;
          position: absolute;
          padding: 0 0 15px 30px;
          display: block;
          width: 80%;
          text-overflow: ellipsis;
          white-space: nowrap;
          overflow: hidden;
        }

        .con span {
          height: 15px;
          overflow: hidden;
          display: inline-block;
          text-overflow: ellipsis;
          white-space: nowrap;
          width: 100%;
        }
      }

      @media (max-width: 740px) {
        .con {
          margin: 0;
          width: 33.3%;
        }

        .con span {
          height: 15px;
          overflow: hidden;
          display: inline-block;
          text-overflow: ellipsis;
          white-space: nowrap;
          width: 100%;
        }
      }

      @media (max-width: 512px) {
        .tools {
          right: 0;
        }

        div[id^="sd"] {
          top: 69px !important;
        }

        .logo img {
          width: 70px;
        }

        .fm {
          margin: 0 122px 0 80px;
        }

        .con .abg {
          display: none;
        }

        .con .secr {
          display: none;
        }

        .con .aipage {
          display: none;
        }

        .con {
          width: 50%;
          margin: 0;
        }

        .con span {
          height: 15px;
          overflow: hidden;
          display: inline-block;
          text-overflow: ellipsis;
          white-space: nowrap;
          width: 100%;
          margin-top: 4px;
        }

        .con div:last-child > a {
          margin: 2px 0 0;
          padding: 0;
          position: absolute;
          padding: 0 0 18px 0;
          display: block;
          width: 95%;
        }
      }
    </style>
  </head>
  <body>
    <div id="head">
      <div id="s_fm" class="s_form">
        <a href="http://www.baidu.com" class="logo">
          <img
            src="https://www.baidu.com/img/flexible/logo/pc/privacy.gif"
            border="0"
            alt="到百度首页"
            onMouseDown="nsclick('logo')"
          />
        </a>
        <form name="f" action="//www.baidu.com/s" class="fm">
          <input type="hidden" name="bs" value="lv" />
          <input type="hidden" name="f" value="8" />
          <input type="hidden" name="rsv_bp" value="1" />
          <input type="hidden" name="rsv_spt" value="3" />
          <span
            id="header_input"
            class="s_ipt_wr"
            onmousedown="this.className='s_ipt_wr iptfocus'"
            ><input
              name="wd"
              id="kw"
              class="i"
              value=""
              maxlength="100" /></span
          ><span class="btn_wr"
            ><input
              type="submit"
              id="su"
              value="百度一下"
              class="btn"
              onmouseover="this.className='btn btn_h'"
              onmousedown="this.className='btn btn_h'"
              onmouseout="this.className='btn'" /></span
          ><span class="tools"
            ><span id="mHolder">
              <div id="mCon"><span>输入法</span></div>
              <ul id="mMenu">
                <li><a href="#" name="ime_hw">手写</a></li>
                <li><a href="#" name="ime_py">拼音</a></li>
                <li class="ln"></li>
                <li><a href="#" name="ime_cl">关闭</a></li>
              </ul> </span
            ><span class="seth" id="seth"
              ><a href="#" onClick="h(this);">把本页设为主页</a
              ><span class="short-line">|</span></span
            ></span
          >
        </form>
      </div>
      <div class="s_link">
        <a target="_blank" href="http://www.baidu.com/">百度首页</a>
        <a
          id="help"
          target="_blank"
          href="http://www.baidu.com/search/jiqiao.html"
          onMouseDown="nsclick('help')"
          >帮助</a
        >
      </div>
    </div>
    <div id="main">
      <div id="content">
        <!--新上线产品列表-->
        <h3 class="new">新上线<sup>最新</sup></h3>

        <div class="con">
          <div>
            <a
              href="https://aiqicha.baidu.com/?from=allp"
              class="abg aiqicha"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://aiqicha.baidu.com/?from=allp" target="_blank"
              >爱企查</a
            >
            <br />
            <span>专业查企业，就上爱企查</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://dumall.baidu.com/?utm_source=baidu&utm_medium=all-products"
              class="abg xiaodu"
              target="_blank"
            ></a>
          </div>
          <div>
            <a
              href="https://dumall.baidu.com/?utm_source=baidu&utm_medium=all-products"
              target="_blank"
              >小度商城</a
            >
            <br />
            <span>小度AI产品的家</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a href="http://secr.baidu.com/" class="secr" target="_blank"></a>
          </div>
          <div>
            <a href="http://secr.baidu.com/" target="_blank">简单搜索</a>
            <br />
            <span>极速轻便的搜索app</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://haokan.baidu.com"
              class="abg haokan"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://haokan.baidu.com" target="_blank">好看视频</a
            ><br /><span>专业短视频聚合平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://yingxiao.baidu.com"
              class="abg yingxiao_center"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://yingxiao.baidu.com" target="_blank">百度营销中心</a
            ><br /><span>百度商业产品服务平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a href="http://bit.baidu.com/" class="abg bit" target="_blank"></a>
          </div>
          <div>
            <a href="http://bit.baidu.com/" target="_blank">百度技术学院</a
            ><br /><span>做技术的学习者，让我们更强</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://quanmin.baidu.com/"
              class="abg duxiaoshi"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://quanmin.baidu.com/" target="_blank">度小视</a
            ><br /><span>发个视频，让别人知道</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://aipage.baidu.com/"
              class="aipage"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://aipage.baidu.com/" target="_blank">百度智能门户</a
            ><br /><span>智能化网站建设&小程序开发平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://aifanfan.baidu.com/"
              class="abg aifanfan"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://aifanfan.baidu.com/" target="_blank">爱番番</a
            ><br /><span>一站式智能营销销售加速器</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://e.baidu.com/ebaidu/home?refer=888"
              class="abg baiduyingxiao"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://e.baidu.com/ebaidu/home?refer=888" target="_blank"
              >商业推广</a
            ><br /><span>获得新客户和合作伙伴</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://pan.baidu.com/disk/main#/certification/web/introduction?from=header"
              class="abg wangpanqiye"
              target="_blank"
            ></a>
          </div>
          <div>
            <a
              href="https://pan.baidu.com/disk/main#/certification/web/introduction?from=header"
              target="_blank"
              >百度网盘企业版</a
            ><br /><span>企业级文件极速传输工具</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://photo.baidu.com?from=bdcpdq"
              class="abg yikexiangce"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://photo.baidu.com?from=bdcpdq" target="_blank"
              >一刻相册</a
            ><br /><span>无限空间云相册</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://www.yoojia.com?sa=allp"
              class="abg youjia"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://www.yoojia.com?sa=allp" target="_blank">有驾</a
            ><br /><span>真车评，懂行情</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://jiankang.baidu.com/widescreen/home"
              class="abg jiankang"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://jiankang.baidu.com/widescreen/home" target="_blank"
              >百度健康</a
            ><br /><span>你身边的健康管家</span>
          </div>
        </div>
        <div class="cl"></div>

        <!--搜索服务产品列表-->
        <h3>搜索服务</h3>
        <div class="con">
          <div>
            <a
              href="http://fanyi-pro.baidu.com/?from=bdmore"
              class="abg translate"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://fanyi-pro.baidu.com/?from=bdmore" target="_blank"
              >百度人工翻译</a
            ><br /><span>权威精准人工翻译</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a href="http://www.baidu.com/" class="abg web" target="_blank"></a>
          </div>
          <div>
            <a href="http://www.baidu.com/" target="_blank">网页</a><br /><span
              >搜索海量网络资料、资源</span
            >
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://video.baidu.com/"
              class="abg video"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://video.baidu.com/" target="_blank">视频</a
            ><br /><span>搜索海量网络视频</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://fanyi.baidu.com/"
              class="abg fanyi"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://fanyi.baidu.com/" target="_blank">百度翻译</a
            ><br /><span>轻松解决语言差异困扰</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a href="http://map.baidu.com/" class="abg map" target="_blank"></a>
          </div>
          <div>
            <a href="http://map.baidu.com/" target="_blank">地图</a><br /><span
              >搜索功能完备的网络地图</span
            >
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://news.baidu.com/"
              class="abg newslogo"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://news.baidu.com/" target="_blank">新闻</a><br /><span
              >搜索浏览新闻资讯</span
            >
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://image.baidu.com/"
              class="abg image"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://image.baidu.com/" target="_blank">图片</a
            ><br /><span>搜索海量网络图片</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://stu.baidu.com"
              class="abg attr_792"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://stu.baidu.com" target="_blank">百度识图</a
            ><br /><span>以图搜信息，发现更多可能！</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://xueshu.baidu.com/ "
              class="abg attr_842"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://xueshu.baidu.com/ " target="_blank">百度学术</a
            ><br /><span>提供海量中英文文献检索！</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://zhaopin.baidu.com?zp_fr=cpdq"
              class="abg baipin"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://zhaopin.baidu.com?zp_fr=cpdq" target="_blank"
              >百度百聘</a
            ><br /><span>上百度百聘，搜全网好工作</span>
          </div>
        </div>

        <div class="cl"></div>

        <!--导航服务-->
        <h3>导航服务</h3>
        <div class="con">
          <div>
            <a
              href="http://www.hao123.com/"
              class="abg hao123"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://www.hao123.com/" target="_blank">hao123</a
            ><br /><span>网址导航</span>
          </div>
        </div>

        <div class="cl"></div>

        <!--社区服务-->
        <h3>社区服务</h3>
        <div class="con">
          <div>
            <a
              href="http://quzheng.baidu.com/"
              class="abg quzheng"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://quzheng.baidu.com/" target="_blank">百度取证</a
            ><br /><span>电子数据取证/公正平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://baijiahao.baidu.com/"
              class="abg baijiahaologo"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://baijiahao.baidu.com/" target="_blank">百家号</a
            ><br /><span>内容变现和粉丝管理</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://duer.baidu.com/"
              class="abg attr_877"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://duer.baidu.com/" target="_blank">DUEROS</a
            ><br /><span>每个人贴心的秘书</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://anquan.baidu.com/bbs/"
              class="abg anquan"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://anquan.baidu.com/forum" target="_blank"
              >百度安全社区</a
            ><br /><span>百度安全产品交流论坛</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://wenku.baidu.com/"
              class="abg wenku"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://wenku.baidu.com/" target="_blank">文库</a
            ><br /><span>阅读、下载、分享文档</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://pan.baidu.com/"
              class="abg wangpannewlogo"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://pan.baidu.com/" target="_blank">百度网盘</a
            ><br /><span>文件备份、分享、同步工具</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://baike.baidu.com/"
              class="abg baike"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://baike.baidu.com/" target="_blank">百科</a
            ><br /><span>查询、贡献网络百科全书</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://tieba.baidu.com/"
              class="abg tieba"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://tieba.baidu.com/" target="_blank">贴吧</a
            ><br /><span>自由分享话题、参与讨论</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://zhidao.baidu.com/"
              class="abg zhidao"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://zhidao.baidu.com/" target="_blank">知道</a
            ><br /><span>寻找答案、回答问题</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://jingyan.baidu.com/"
              class="abg jingyan"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://jingyan.baidu.com/" target="_blank">经验</a
            ><br /><span>实用生活指南</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://www.baifubao.com/"
              class="abg baifubao"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://www.dxmpay.com/" target="_blank">度小满支付</a
            ><br /><span>安全可信赖的支付工具</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://test.baidu.com"
              class="abg attr_771"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://test.baidu.com" target="_blank">百度众测</a
            ><br /><span>用户体验中心</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://www.combofin.com/?channel=baidumore"
              class="abg attr_789"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://www.combofin.com/?channel=baidumore" target="_blank"
              >康波•财经</a
            ><br /><span>综合金融服务平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://cbbs.baidu.com"
              class="abg attr_795"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://cbbs.baidu.com" target="_blank">百度社团赞助平台</a
            ><br /><span>互联网产品粉丝互动</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://baobao.baidu.com"
              class="abg attr_876"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://baobao.baidu.com" target="_blank">宝宝知道</a
            ><br /><span>更专业的母婴孕育知识社区</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://trust.baidu.com/"
              class="abg trust"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://trust.baidu.com/" target="_blank">百度信誉</a
            ><br /><span>权威信誉信息认证平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://juejin.baidu.com"
              class="abg juejin"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://juejin.baidu.com" target="_blank">地图掘金</a
            ><br /><span>众包用户赚零花钱平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://easylearn.baidu.com"
              class="abg jiaoyu"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://easylearn.baidu.com" target="_blank">百度教育</a
            ><br /><span>专注做教育的知识内容平台</span>
          </div>
        </div>
        <div class="cl"></div>

        <!--游戏娱乐-->
        <h3>游戏娱乐</h3>
        <div class="con">
          <div>
            <a
              href="http://game.91.com/"
              class="abg attr_870"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://game.91.com/" target="_blank">hao123游戏•手游</a
            ><br /><span>手游资讯、开测、礼包、下载</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://youxi.baidu.com/"
              class="abg youxi"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://youxi.baidu.com/" target="_blank">百度游戏</a
            ><br /><span>玩游戏、看资讯、找同伴</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://app.baidu.com/"
              class="abg yingyong"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://app.baidu.com/" target="_blank">百度移动开放平台</a
            ><br /><span>轻松找到所需高质量应用</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://g.baidu.com/"
              class="abg gameplatform"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://g.baidu.com/" target="_blank">百度游戏开放平台</a
            ><br /><span>共建开发者生态开放平台</span>
          </div>
        </div>

        <div class="cl"></div>

        <!--移动服务-->
        <h3>移动服务</h3>
        <div class="con">
          <div>
            <a
              href="http://h5.baidu.com/"
              class="abg attr_878"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://h5.baidu.com/" target="_blank">百度 H5</a
            ><br /><span>可视化 H5 页面制作工具</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://8.baidu.com/content/resource/app/index.html"
              class="abg finance"
              target="_blank"
            ></a>
          </div>
          <div>
            <a
              href="https://8.duxiaoman.com/content/resource/app/index.html"
              target="_blank"
              >度小满理财</a
            ><br /><span>投资生钱，随时交易</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://srf.baidu.com"
              class="abg ime_mobile"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://srf.baidu.com" target="_blank">百度手机输入法</a
            ><br /><span>AI语音输入，更快更准</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://as.baidu.com/a/bdsuite"
              class="abg ydapp"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://shouji.baidu.com" target="_blank">百度手机助手</a
            ><br /><span>更新更全安卓手机应用</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://fanyi.baidu.com/appdownload/download.html"
              class="abg fanyiapp"
              target="_blank"
            ></a>
          </div>
          <div>
            <a
              href="http://fanyi.baidu.com/appdownload/download.html"
              target="_blank"
              >百度翻译App</a
            ><br /><span>您的掌上翻译专家</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://shoujiweishi.baidu.com/"
              class="abg attr_790"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://shoujiweishi.baidu.com/" target="_blank"
              >百度手机卫士</a
            ><br /><span>手机防吸费，防骚扰</span>
          </div>
        </div>

        <div class="cl"></div>

        <!--站长服务-->
        <h3>站长与开发者服务</h3>
        <div class="con">
          <div>
            <a
              href="https://cdp.baidu.com"
              class="abg guanxingpan"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://cdp.baidu.com" target="_blank">观星盘</a
            ><br /><span>全链AI营销数据平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://ai.baidu.com/index/"
              class="abg ai"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://ai.baidu.com/index/" target="_blank">百度大脑</a
            ><br /><span>百度人工智能开放平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://open.baidu.com/"
              class="abg open"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://open.baidu.com/" target="_blank">百度数据开放平台</a
            ><br /><span>站长提交资源的绿色通道</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://zhanzhang.baidu.com/"
              class="abg zhanzhang"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://zhanzhang.baidu.com/" target="_blank"
              >百度搜索资源平台</a
            ><br /><span>让百度更了解你的网站</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://tongji.baidu.com/"
              class="abg tongji"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://tongji.baidu.com/" target="_blank">百度统计</a
            ><br /><span>获取网站流量的专业分析</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://union.baidu.com/"
              class="abg lianmeng"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://union.baidu.com/" target="_blank">百度联盟</a
            ><br /><span>与百度合作，变得更强</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://e.baidu.com?refer=889"
              class="abg baiduyingxiao"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://e.baidu.com?refer=889" target="_blank">百度营销</a
            ><br /><span>营销新模式-让客户主动找到你</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://top.baidu.com/"
              class="abg baiduresou"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://top.baidu.com/" target="_blank">百度热搜</a
            ><br /><span>你的搜索 成就热点</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://index.baidu.com/"
              class="abg zhishu"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://index.baidu.com/" target="_blank">百度指数</a
            ><br /><span>搜索权威的关键词数据分析</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://mtj.baidu.com"
              class="abg ydtongji"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://mtj.baidu.com" target="_blank">百度移动统计</a
            ><br /><span>专业的移动应用统计</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://developer.baidu.com/"
              class="abg kaifazhe"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://developer.baidu.com/" target="_blank"
              >百度开发者中心</a
            ><br /><span>开发者一站式服务平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://ce.baidu.com/?from=more"
              class="abg attr_819"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://ce.baidu.com/?from=more" target="_blank"
              >百度云观测</a
            ><br /><span>网站健康监测中心</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://open2.baidu.com/"
              class="abg attr_821"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://open2.baidu.com/" target="_blank"
              >百度商业服务市场</a
            ><br /><span>全新SEM工具在线集市</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://yuqing.baidu.com/ "
              class="abg attr_823"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://yuqing.baidu.com/ " target="_blank">百度舆情</a
            ><br /><span>互联网口碑分析工具</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://jingsuan.baidu.com"
              class="abg attr_827"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://jingsuan.baidu.com" target="_blank">百度精算</a
            ><br /><span>大数据广告效果衡量平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://su.baidu.com"
              class="abg attr_809"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://su.baidu.com" target="_blank">百度云加速</a
            ><br /><span>为站长提供安全防护和加速服务</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="https://cloud.baidu.com/"
              class="abg attr_851"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="https://cloud.baidu.com/" target="_blank">百度智能云</a
            ><br /><span>百度全系列云计算产品</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://yuyin.baidu.com/"
              class="abg attr_854"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://yuyin.baidu.com/" target="_blank">百度语音</a
            ><br /><span>语音识别合成技术开放</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://ssp.baidu.com/"
              class="abg attr_855"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://ssp.baidu.com/" target="_blank">百度SSP媒体服务</a
            ><br /><span>媒体收益管理与优化服务</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://push.baidu.com/"
              class="abg attr_858"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://push.baidu.com/" target="_blank">百度云推送</a
            ><br /><span>免费专业的推送服务平台</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://mtc.baidu.com/"
              class="abg attr_871"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://mtc.baidu.com/" target="_blank"
              >百度移动云测试中心</a
            ><br /><span>移动应用测试服务平台</span>
          </div>
        </div>

        <div class="cl"></div>

        <!--软件工具-->
        <h3>软件工具</h3>
        <div class="con">
          <div>
            <a
              href="http://naotu.baidu.com"
              class="abg attr_830"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://naotu.baidu.com" target="_blank">百度脑图工具</a
            ><br /><span>在线脑图编辑工具</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://im.baidu.com/"
              class="abg attr_767"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://im.baidu.com/" target="_blank">如流</a><br /><span
              >新一代智能办公平台</span
            >
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://shurufa.baidu.com/"
              class="abg ime"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://shurufa.baidu.com/" target="_blank">百度输入法</a
            ><br /><span>流畅输入，更懂中文</span>
          </div>
        </div>
        <div class="con">
          <div>
            <a
              href="http://wubi.baidu.com/"
              class="abg attr_791"
              target="_blank"
            ></a>
          </div>
          <div>
            <a href="http://wubi.baidu.com/" target="_blank">百度五笔输入法</a
            ><br /><span>百度五笔输入法PC版</span>
          </div>
        </div>

        <div class="cl"></div>
      </div>
      <div class="cl"></div>
    </div>
    <div class="footer">
      &copy; <span id="footer_year_time"></span> Baidu
      <a href="http://www.baidu.com/duty/" target="_blank">使用百度前必读</a>
    </div>
    <script type="text/javascript">
      function addEV(o, e, f) {
        if (window.attachEvent) {
          o.attachEvent("on" + e, f);
        } else if (window.addEventListener) {
          o.addEventListener(e, f, false);
        }
      }

      function G(id) {
        return document.getElementById(id);
      }

      (function () {
        var maincon = document.getElementById("content");
        var links = maincon.getElementsByTagName("a");
        var len = links.length;
        var host =
          "https:" == document.location.protocol
            ? "https://sp1.baidu.com/8qUJcD3n0sgCo2Kml5_Y_D3"
            : "http://nsclick.baidu.com";
        for (var i = 0; i < len; i++) {
          addEV(links[i], "mousedown", request);
        }
        function request(e) {
          var e = e || window.event;
          var tar = e.target || e.srcElement;
          if (tar.tagName.toLowerCase() == "img") {
            tar = tar.parentNode;
          }
          var logurl = encodeURIComponent(tar.href);
          var clicktxt = tar.innerHTML;
          var img = (window["BD_PS_SUG" + +new Date()] = new Image());
          img.src =
            host +
            "/v.gif?pid=306&pro=" +
            "more" +
            "&url=" +
            logurl +
            "&this=" +
            clicktxt +
            "&type=0" +
            "&t=" +
            +new Date();
        }
        let year = new Date().getFullYear();
        document.getElementById("footer_year_time").innerHTML = year;

        var homepage = "http://www.baidu.com/more/";
        var isIE = navigator.userAgent.indexOf("MSIE") != -1 && !window.opera;
        var ran = Math.random() * 100;
        if (isIE) {
          try {
            var span = document.createElement("span");
            span.style.behavior = "url(#default#homepage)";
            span.style.display = "none";
            document.body.appendChild(span);

            var hpFlag = span.isHomePage(homepage);

            //如果未设置则显示设置按钮
            if (!hpFlag) {
              var seth = G("seth");
              var help = G("help");
              if (seth) {
                seth.style.display = "inline";
                help.style.marginLeft = 7 + "px";
              }
            }
          } catch (e) {}
        }

        function getNode() {
          var contents = [];
          var childs = document.getElementById("content").childNodes;
          var con = [];
          for (var i in childs) {
            var tmp = childs[i];
            if (
              tmp.nodeName &&
              tmp.nodeName.toLowerCase() === "h3" &&
              con.length > 0
            ) {
              contents.push(con);
              con = [];
            } else if (
              tmp.nodeName &&
              tmp.nodeName.toLowerCase() === "div" &&
              tmp.className.toLowerCase().indexOf("con") !== -1
            ) {
              con.push(tmp);
            }
          }
          if (con.length > 0) {
            contents.push(con);
          }
          return contents;
        }
        var nodes = getNode();
        for (var i in nodes) {
          for (var j in nodes[i]) {
            if ((parseInt(j) + 1) % 4 == 0) {
              nodes[i][j].className += " con_last";
            }
          }
        }
      })();

      function h(obj) {
        obj.style.behavior = "url(#default#homepage)";
        obj.setHomePage("http://www.baidu.com/more/");
      }

      var _bdhmProtocol =
        "https:" == document.location.protocol ? " https://" : " http://";
      document.write(
        unescape(
          "%3Cscript src='" +
            _bdhmProtocol +
            "hm.baidu.com/h.js%3F9f14aaa038bbba8b12ec2a4a3e51d254' type='text/javascript'%3E%3C/script%3E"
        )
      );

      function nsclick(tab) {
        var p = encodeURIComponent(window.document.location.href),
          img = (window["BD_PS_C" + new Date().getTime()] = new Image());
        img.src =
          host +
          "/v.gif?pid=306&pj=more&tab=" +
          tab +
          "&path=" +
          p +
          "&type=0" +
          "&t=" +
          new Date().getTime();
        return true;
      }

      // 输入框颜色切换
      document.body.onclick = function (e) {
        if (e.target && e.target.id !== "kw") {
          document.getElementById("header_input").className = "s_ipt_wr";
        }
      };
    </script>
    <script src="//www.baidu.com/js/bdsug.js?v=1.0.3.0"></script>
  </body>
</html>
