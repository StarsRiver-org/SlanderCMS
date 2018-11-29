# QzxyWebsite 基于thinkphp5.2
给学校做的网站-CMS管理系统-我的第一个个人项目
结构目录请看thinkphp(稍微不一样)

# 协议
* 本程序使用apache2.0开源协议（主要争对 application、template下的程序文件。）
* 你需要认真了解该协议的具体内容。
* 在此协议下，你可以使用或作为自己的站点使用，但是任何人未经允许，禁止用于商业/营销/宣传等。
* 如果你需要更多功能，提交issue即可。

# 使用说明
* 初次使用，请更新vender（composer）之后运行 ://yoursite/install进程来初始化程序。
* 修改config/config.php 全局常量SITE为你的域名值。（请不要写http: 或 https:,  以//开始。如 //www.youdomain.com）
 * 尽量不要使用 192.168.*** 或者 localhost作为域名值。当然你可以这么做，只是会出现一些不可预料的问题。

# 功能
* 仅仅是一个简单。。。的内容管理网站
* 文章管理
* 用户管理及完善的权限管理系统
* 板块及专题管理
* 用户面试管理
* 前端的各种自由展示就不说了。。
* 整合了阿里云短信发送功能，可以自己开发更多短信功能，比如登陆验证码(请先申请阿里云短信API服务，你只需要按照后台提供的选项填写相关参数即可使用。)

# 模块
* consoleboard //后台
* portal  //门户
* special  //专题
* enroll //面试
* portal下有几个文件，由于数据库为空，所以几乎处于废弃状态。可以看index注释来熟悉怎么用。

* 异步模块
* application下API组件里是一些公共接口，可以做一些简单的功能。本地化的小App放在 srt文件夹内，每一个文件夹都是单独的小应用，文件夹内包含有全部需要的文件，没有交叉链接，可以随意调整位置。
   * userenroll 对应 srt/join
   * quesbank 对应 srt/quesbank
* [这个是测试地址](http://qzxy.starsriver.club)
## quesbank说明
这个模块没有数据导入功能，建议通过excel格式的题库进行导入。如果有需求的可以联系我来补充这个功能。
