<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:90:"G:\WebDesigne\APMServer\web\[QZ] qzxy.tyut.edu.cn\/template/default\portal\home\index.html";i:1526217318;s:85:"G:\WebDesigne\APMServer\web\[QZ] qzxy.tyut.edu.cn\/template/default\portal\frame.html";i:1524361728;s:93:"G:\WebDesigne\APMServer\web\[QZ] qzxy.tyut.edu.cn\/template/default\common\common_header.html";i:1524323132;s:93:"G:\WebDesigne\APMServer\web\[QZ] qzxy.tyut.edu.cn\/template/default\common\common_footer.html";i:1523367953;}*/ ?>
<!--[header start]--><!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" /><meta name="keywords" content="<?php if(isset($thread['keyword'])): ?><?php echo $thread['keyword']; endif; ?> 清泽 清泽官网 清泽心雨 清泽心雨官网 qzxy qzxywebsite 太原理工大学 太原理工 太原理工-清泽心雨 太原理工大学-清泽心雨" /><meta name="description" content="<?php if(isset($thread['descrip'])): ?>清泽资讯 - <?php echo $thread['descrip']; else: ?>清泽心雨网站是太原理工大学思想政治教育主题网站,网站以“突出思想政治教育,保证及时准确报道,拓展学生服务活动”为方针,利用网络优势和资源特色,走个性化道路。<?php endif; ?>" /><meta name="generator" content="StarsRiver" /><meta name="copyright" content="2017-2099 SR Inc." /><meta name="MSSmartTagsPreventParsing" content="True" /><!---link rel="stylesheet" type="text/css" href="<?php echo STATIC_ROOT; ?>/css/base.css"/--><link rel="stylesheet" type="text/css" href="<?php echo STATIC_ROOT; ?>/css/common.css"/><link rel="stylesheet" type="text/css" href="<?php echo STATIC_ROOT; ?>/css/fonts_zui.css"/><link rel="stylesheet" type="text/css" href="<?php echo STATIC_ROOT; ?>/css/skin/portal/common_header.css"/><link rel="stylesheet" type="text/css" href="<?php echo STATIC_ROOT; ?>/css/skin/portal/common_footer.css"/><title><?php if(isset($title)): ?><?php echo $title; elseif(isset($thread['title'])): ?>清泽心雨 - <?php echo $thread['title']; else: ?>太原理工大学 - 清泽心雨<?php endif; ?></title><!--[if lt IE 10]><div class="alert2 alert-danger">            您正在使用过时的浏览器. 请升级您的浏览器来获取更好的体验
            <a class="icon-ie updateexplor" href="http://download.microsoft.com/download/F/2/8/F2871AC4-E82B-4636-BB37-A5F2B14C8616/IE11-Windows6.1-x86-zh-cn.exe">x86版本</a><a class="icon-ie updateexplor" href="http://download.microsoft.com/download/5/6/F/56FD6253-CB53-4E38-94C6-74367DA2AB34/IE11-Windows6.1-x64-zh-cn.exe">x64版本</a></div><script src="<?php echo STATIC_ROOT; ?>/lib/ieonly/html5shiv.js"></script><script src="<?php echo STATIC_ROOT; ?>/lib/ieonly/respond.js"></script><![endif]--><script src="<?php echo STATIC_ROOT; ?>/js/jquery.js"></script></head><body><div class="header"><div class="container"><div class="empty"></div><a href="/portal" class="logo clearfloat"><img src="<?php echo STATIC_ROOT; ?>/img/common/logoo.png" alt="logo"></a><div class="mobile__nav"><span></span></div><input class="mobile__nav" type="checkbox" id="mobileNav"/><ul class="nav clearfloat" id="nav"><?php if(is_array($base['mainnav']) || $base['mainnav'] instanceof \think\Collection || $base['mainnav'] instanceof \think\Paginator): $i = 0; $__LIST__ = $base['mainnav'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$nav): $mod = ($i % 2 );++$i;if(!$nav['bel']): ?><li><a target="<?php if($nav['blank']): endif; ?>" href="<?php echo $nav['url']; ?>"><?php echo $nav['name']; ?></a><input class="mobile__subnav" type="checkbox" /><div class="subnav"><?php if(is_array($base['mainnav']) || $base['mainnav'] instanceof \think\Collection || $base['mainnav'] instanceof \think\Paginator): $i = 0; $__LIST__ = $base['mainnav'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$snav): $mod = ($i % 2 );++$i;if($snav['bel'] == $nav['id']): ?><a target="<?php if($snav['blank']): ?>_blank<?php endif; ?>" href="<?php echo $snav['url']; ?>"><?php echo $snav['name']; ?></a><?php endif; endforeach; endif; else: echo "" ;endif; ?></div></li><?php endif; endforeach; endif; else: echo "" ;endif; ?></ul><!--[if lte IE 8]><script type="text/javascript">                var mobileNav = document.getElementById('mobileNav');
                var headerNav = document.getElementById('nav');
                boxShow(mobileNav, headerNav);
                var mobileSubnav = headerNav.getElementsByTagName('input');
                var headerSubnav = [];
                for (var i = 0; i < mobileSubnav.length; i++) {
                    var __Subnav = mobileSubnav[i].nextSibling.nextSibling;
                    headerSubnav.push(__Subnav);
                }
                boxArrShow(mobileSubnav, headerSubnav);
                function boxShow(btn, box) {
                    btn.onclick = function() {
                        //display = block针对于mobileNav,height和overflow针对的是Subnav,但是我这样写会同时给他们俩都加上这些属性,不过不影响效果
                        if(box.style.display !== 'block') {
                            box.style.display = 'block';
                        } else {
                            box.style.display = 'none';
                        }
                        if(box.style.height !== 'auto' && box.style.overflow !== 'visible') {
                            box.style.height = 'auto';
                            box.style.overflow = 'visible';
                        } else {
                            box.style.height = '0';
                            box.style.overflow = 'hidden';
                        }
                    }
                }
                function boxArrShow(btnArr, boxArr) {
                    if (btnArr.length !== boxArr.length) return false;
                    for (var j = 0; j < btnArr.length; j++) {
                        boxShow(btnArr[j], boxArr[j]);
                    }
                }
            </script><![endif]--><div class="searchBox clearfloat"><div class="qzSearch"><input placeholder="请输入要搜索的内容"><span onclick="if(this.parentNode.querySelector('input').value)window.open('/search?keyword=' + this.parentNode.querySelector('input').value)"></span></div><div class="searchMenu"><?php if(is_array($base['searchnav']) || $base['searchnav'] instanceof \think\Collection || $base['searchnav'] instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($base['searchnav']) ? array_slice($base['searchnav'],0,5, true) : $base['searchnav']->slice(0,5, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$nav): $mod = ($i % 2 );++$i;?><a target="<?php if($nav['blank']): ?>_blank<?php endif; ?>" href="<?php echo $nav['url']; ?>"><?php echo $nav['name']; ?></a><?php endforeach; endif; else: echo "" ;endif; ?></div></div></div></div><!--[header end]--><!--[if lte IE 9]><script src="<?php echo STATIC_ROOT; ?>/js/portal/respond.src.js" type="text/javascript" charset="utf-8"></script><![endif]--><!--[if lte IE 8]><script src="<?php echo STATIC_ROOT; ?>/js/portal/mobileMenu(forIE8).js" charset="utf-8"></script><![endif]--><link rel="stylesheet" type="text/css" href="<?php echo STATIC_ROOT; ?>/css/skin/portal/home.css" /><section class="Slider"><div class="Slider"><div id="img-box" class="img-box"><!--用transition做的透明度过渡--><?php if(isset($banners['slider'])): if(is_array($banners['slider']) || $banners['slider'] instanceof \think\Collection || $banners['slider'] instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($banners['slider']) ? array_slice($banners['slider'],0,5, true) : $banners['slider']->slice(0,5, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$t): $mod = ($i % 2 );++$i;?><div class="Slider-box"><a href="#"><img src="<?php echo $t; ?>"/></a></div><?php endforeach; endif; else: echo "" ;endif; endif; ?></div><div class="arrow-box"><div id="arrowl" class="arrow-item arrow-l transition__opc__3s"></div><div id="arrowr" class="arrow-item arrow-r transition__opc__3s"></div></div><div id="pointsbox" class="Slider-pointsbox"><span class="now"></span><span></span><span></span><span></span><span></span></div></div><script src="<?php echo STATIC_ROOT; ?>/js/portal/showPicture.js"></script></section><section class="qzNews"><!-- 清泽要闻  (qzNews) --><div class="qzNews"><div class="container"><div class="columnContainer"><div class="columnName"><a>新闻聚焦</a><a class="more" href="/threads/more?cid=17">更多<span></span></a></div><ul class="newsContainer"><?php $k = 0; if(isset($xwjj)): if(is_array($xwjj) || $xwjj instanceof \think\Collection || $xwjj instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($xwjj) ? array_slice($xwjj,0,5, true) : $xwjj->slice(0,5, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$t): $mod = ($i % 2 );++$i;?><li class="newsItem"><a href="/threads/view?id=<?php echo $t['id']; ?>" class="newsItem_tit"><?php echo $t['title']; ?></a><span class="newsItem_date"><?php echo $t['time']; ?></span></li><?php endforeach; endif; else: echo "" ;endif; endif; ?></ul></div><div class="columnContainer"><div class="columnName"><a>清泽要闻</a><a class="more" href="/threads/more?cid=2">更多<span></span></a></div><ul class="newsContainer"><?php $k = 0; if(isset($new)): if(is_array($new) || $new instanceof \think\Collection || $new instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($new) ? array_slice($new,0,5, true) : $new->slice(0,5, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$t): $mod = ($i % 2 );++$i;?><li class="newsItem"><a href="/threads/view?id=<?php echo $t['id']; ?>" class="newsItem_tit"><?php echo $t['title']; ?></a><span class="newsItem_date"><?php echo $t['time']; ?></span></li><?php endforeach; endif; else: echo "" ;endif; endif; ?></ul></div></div></div></section><div class="main"><div class="container"><section class="qzMessage clearfloat"><!-- 信息中心 (qzMessage) --><div class="qzMessage clearfloat"><div class="columnName"><a>信息中心</a><a class="more" href="/threads/more?cid=3">更多<span></span></a></div><div class="columnContainer"><?php $k = 0; if(isset($info)): if(is_array($info) || $info instanceof \think\Collection || $info instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($info) ? array_slice($info,0,5, true) : $info->slice(0,5, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$info): $mod = ($i % 2 );++$i;?><div class="messageItem"><div class="messageItem_date"><span><?php echo date('m',$info['timestamp']) ?>月</span><span><?php echo date('d',$info['timestamp']) ?></span></div><div class="messageItem_msg"><a href="/threads/view?id=<?php echo $info['id']; ?>"><?php echo $info['title']; ?></a><span class="messageItem_icon" style="background: url('<?php echo STATIC_ROOT; ?>/img/portal/home/tower.png') no-repeat"></span></div></div><?php endforeach; endif; else: echo "" ;endif; endif; ?></div></div></section><section class="qzSubject clearfloat"><!-- 清泽专题 (qzSubject)--><div class="qzSubject clearfloat"><div class="columnName"><a href="#">清泽专题</a></div><div class="columnContainer"><?php $k = 0; if(isset($sp)): if(is_array($sp) || $sp instanceof \think\Collection || $sp instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($sp) ? array_slice($sp,0,4, true) : $sp->slice(0,4, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$topic): $mod = ($i % 2 );++$i;?><a href="/threads/view?id=<?php echo $topic['id']; ?>" class="subjectItem"><img src="<?php echo $topic['coverimg']; ?>" /></a><?php endforeach; endif; else: echo "" ;endif; endif; ?></div></div></section><section class="qzVideo clearfloat"><!-- 清泽微视 (qzVideo)--><div class="qzVideo clearfloat"><div class="columnName"><a href="#">清泽微视</a></div><div class="columnContainer"><div class="videoNews"><a href="//v.tyut.edu.cn" class="videoNews_pic" target="_blank"><img src="<?php echo STATIC_ROOT; ?>/img/common/qzws.jpg"/><span class="playButton"></span><h5>清泽微视</h5></a></div><div class="service"><a href="http://qgzx.tyut.edu.cn/" class="qgzx"><div class="serviceItem qgzx"><img src="<?php echo STATIC_ROOT; ?>/img/portal/home/work-study.png"/><h3>勤工助学</h3></div></a><a href="http://qgzx.tyut.edu.cn/sqa/admincdab/login.jsp" class="szcp"><div class="serviceItem szcp"><img src="<?php echo STATIC_ROOT; ?>/img/portal/home/quality.png"/><h3>素质测评</h3></div></a><a href="http://202.207.240.187/psy/" class="xlcc"><div class="serviceItem xlcc"><img src="<?php echo STATIC_ROOT; ?>/img/portal/home/psychological.png"/><h3>心理测查</h3></div></a><a href="http://qzxy.tyut.edu.cn/qzxy/2013/zizhuxt/" class="jzxt"><div class="serviceItem jzxt"><img src="<?php echo STATIC_ROOT; ?>/img/portal/home/reward.png"/><h3>奖助系统</h3></div></a><a href="http://link.tyut.edu.cn/" class="xyyx"><div class="serviceItem xyyx"><img src="<?php echo STATIC_ROOT; ?>/img/portal/home/school-mail.png"/><h3>校园邮箱</h3></div></a><a href="http://jwc.tyut.edu.cn/jxzl/xl.htm" class="xl"><div class="serviceItem xl"><img src="<?php echo STATIC_ROOT; ?>/img/portal/home/calendar.png"/><h3>校历</h3></div></a></div></div></div></section></div></div><section class="qzSights"><!-- 校园风光 (qzSights) --><div class="qzSights"><div class="container"><div class="columnName"><a href="#">校园风光</a></div><div class="columnContainer"><a href="#"><div class="sightsItem"><img src="<?php echo DATA_ROOT; ?>/catch/portal/home/01.png"></div></a><a href="#"><div class="sightsItem"><img src="<?php echo DATA_ROOT; ?>/catch/portal/home/02.png"></div></a><a href="#"><div class="sightsItem"><img src="<?php echo DATA_ROOT; ?>/catch/portal/home/03.png"></div></a><a href="#"><div class="sightsItem"><img src="<?php echo DATA_ROOT; ?>/catch/portal/home/04.png"></div></a><a href="#"><div class="sightsItem"><img src="<?php echo DATA_ROOT; ?>/catch/portal/home/05.png"></div></a><a href="#"><div class="sightsItem"><img src="<?php echo DATA_ROOT; ?>/catch/portal/home/06.png"></div></a><a href="#" class="last"><div class="sightsItem"><img src="<?php echo DATA_ROOT; ?>/catch/portal/home/07.png"></div></a><a href="#" class="last"><div class="sightsItem"><img src="<?php echo DATA_ROOT; ?>/catch/portal/home/08.png"></div></a></div></div></div></section><!--[footer start]--><div class="footer" style="background: #891619;"><div class="quickLink"><div class="container"><ul class="leftLink clearfloat"><?php if(is_array($base['foonav']) || $base['foonav'] instanceof \think\Collection || $base['foonav'] instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($base['foonav']) ? array_slice($base['foonav'],0,5, true) : $base['foonav']->slice(0,5, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$nav): $mod = ($i % 2 );++$i;?><li><a target="<?php if($nav['blank']): ?>_blank<?php endif; ?>" href="<?php echo $nav['url']; ?>"><?php echo $nav['name']; ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?></ul><div class="logo transition__opc__3s"><a href="#"><img src="<?php echo STATIC_ROOT; ?>/img/common/logoo.png" alt="logo"></a></div><ul class="rightLink clearfloat"><li class="icon-location-arrow"><a>山西省太原市迎泽西大街79号</a></li><li class="icon-group"><a>太原理工大学学工部（处）</a></li><li class="icon-envelope"><a>030024</a></li><li class="icon-phone"><a>0351-6014355</a></li><li class="icon-globe"><a>qzxy@tyut.edu.cn</a></li></ul></div></div><div class="copyright"><div class="linkicons"><div><a class="qq transition__opc__3s" href="#"></a></div><div><a class="wechat transition__opc__3s" href="#"></a><div class="linkicon__hover"><img src="<?php echo STATIC_ROOT; ?>/img/common/wechat__hover.jpg" alt=""></div></div><div><a class="weibo transition__opc__3s" href="#"></a></div><div><a class="qzvs transition__opc__3s" href="#"></a></div></div><p>Copyright@2014 <a href="#">qzxy.tyut.edu.cn</a> Reserved 太原理工大学版权所有 晋ICP证020029号 访问：<?php echo $base['allvisite']; ?></p></div></div></body></html><!--[footer end]-->