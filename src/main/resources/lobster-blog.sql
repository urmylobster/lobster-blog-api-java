-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: lobster_blog
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `post_author` varchar(10) NOT NULL COMMENT '作者',
  `post_content` longtext NOT NULL COMMENT '内容',
  `post_title` varchar(40) DEFAULT NULL,
  `post_isdeleted` int NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Alex','http 超文本传输协议，一种网络协议，是客户端和服务器端请求和应答的TCP标准，\n可以使传输更加高效\nhttps 在http加入ssl层，建立安全通道，保证了互联网通信的真实性','网络-http和https的基本概念',0),(2,'Alex','head：类似于 get 请求，只不过返回的响应中没有具体的内容，用户获取报头\noptions：允许客户端查看服务器的性能，比如说服务器支持的请求方式等等。','网络-HTTP请求-HEAD和OPTIONS方式',0),(3,'Alex','请求的返回头里面，用于浏览器解析的重要参数就是 OSS 的 API 文档里面的返回 http头，决定用户下载行为的参数。\n下载的情况下：\n1. x-oss-object-type:\nNormal\n2. x-oss-request-id:\n598D5ED34F29D01FE2925F41\n3. x-oss-storage-class:\nStandard','网络-一个图片url访问后直接下载怎样实现',0),(4,'Alex','http2.0 是基于 1999 年发布的 http1.0 之后的首次更新。\n1.提升访问速度（可以对于，请求资源所需时间更少，访问速度更快，相比 http1.0）\n2.允许多路复用：多路复用允许同时通过单一的 HTTP/2 连接发送多重请求-响应信息。\n改善了：在 http1.1 中，浏览器客户端在同一时间，针对同一域名下的请求有一定数量限制（连接数量），超过限制会被阻塞。\n3.二进制分帧：HTTP2.0 会将所有的传输信息分割为更小的信息或者帧，并对他们进行二\n4.进制编码\n5.首部压缩\n6.服务器端推送','网络-HTTP2.0的内容',0),(5,'Alex','1.400 状态码：请求无效\n产生原因：\n前端提交数据的字段名称和字段类型与后台的实体没有保持一致\n前端提交到后台的数据应该是 json 字符串类型，但是前端没有将对象 JSON.stringify\n转化成字符串。\n解决方法：\n对照字段的名称，保持一致性\n将 obj 对象通过 JSON.stringify 实现序列化\n2.401 状态码：当前请求需要用户验证\n3.403 状态码：服务器已经得到请求，但是拒绝执行','网络-400-401-403状态码含义',0),(6,'Alex','fetch 发送 post 请求的时候，总是发送 2 次。第一次状态码是 204，第二次才成功？\n原因很简单\n因为你用 fetch 的 post 请求的时候\n导致 fetch 第一次发送了一个Options 请求，\n询问服务器是否支持修改的请求头\n如果服务器支持，则在第二次中发送真正的请求。','网络-fetch发送2次请求的原因',0),(7,'Alex','与localStorage和sessionStorage共同点：\n都是保存在浏览器端，并且是同源的\nCookie：cookie 数据始终在同源的 http 请求中携带（即使不需要），即 cookie 在浏览器和服务器间来回传递。\n而 sessionStorage 和 localStorage 不会自动把数据发给服务器，仅在本地保存。\ncookie 数据还有路径（path）的概念，可以限制 cookie 只属于某个路径下,存储的大小很小只有 4K 左右。 \n（key：可以在浏览器和服务器端来回传递，存储容量小，只有大约 4K 左右）','网络-cookie与存储区别联系',0),(8,'Alex','sessionStorage：仅在当前浏览器窗口关闭前有效，自然也就不可能持久保持，\nlocalStorage：始终有效，窗口或浏览器关闭也一直保存，因此用作持久数据；\ncookie 只在设置的 cookie 过期时间之前一直有效，即使窗口或浏览器关闭。\n（key：本身就是一个会话过程，关闭浏览器后消失，session 为一个会话，当页面不同即使是\n<b>同一页面打开两次</b>，也被视为同一次会话）\nlocalStorage：localStorage 在所有<b>同源窗口</b>中都是共享的；\ncookie 也是在所有<b>同源窗口</b>中都是共享的。\n（key：同源窗口都会共享，并且不会失效，不管窗口或者浏览器关闭与否都会始终生效）','网络-cookie和存储的有效范围和时间',0),(9,'Alex','1.指定版本：比如1.2.2，遵循“大版本.次要版本.小版本”的格式规定，安装时只安装指定版本。\n2.波浪号（tilde）+指定版本：比如~1.2.2，表示安装1.2.x的最新版本（不低于1.2.2），但是不安装1.3.x，也就是说安装时不改变大版本号和次要版本号。\n3.插入号（caret）+指定版本：比如ˆ1.2.2，表示安装1.x.x的最新版本（不低于1.2.2），但是不安装2.x.x，也就是说安装时不改变大版本号。\n需要<b>注意</b>的是，如果大版本号为0，则插入号的行为与波浪号相同，这是因为此时处于开发阶段，即使是次要版本号变动，也可能带来程序的不兼容。\n4.latest：安装最新版本。','工程架构-package.json的dependencies支持',0),(10,'GitHub','src 和 href 都是用来引用外部的资源，它们的区别如下：\nsrc： 表示对资源的引用，它指向的内容会嵌入到当前标签所在的位置。src 会将其指向的资源下载并应⽤到⽂档内，如请求 js 脚本。当浏览器解析到该元素时，会暂停其他资源的下载和处理，直到将该资源加载、编译、执⾏完毕，所以⼀般 js 脚本会放在页面底部。\nhref： 表示超文本引用，它指向一些网络资源，建立和当前元素或本文档的链接关系。当浏览器识别到它他指向的⽂件时，就会并行下载资源，不会停⽌对当前⽂档的处理。 常用在 a、link 等标签上。','HTML-1.src和href 的区别',0),(11,'GitHub','如果没有 defer 或 async 属性，浏览器会立即加载并执行相应的脚本。它不会等待后续加载的文档元素，读取到就会开始加载和执行，这样就阻塞了后续文档的加载。\n下图可以直观的看出三者之间的区别:\n<img src=\"https://camo.githubusercontent.com/136e7b9583286dcdbf767f9e7a4056326187f18781463c61f5837621dd4fe89e/68747470733a2f2f63646e2e6e6c61726b2e636f6d2f79757175652f302f323032302f706e672f313530303630342f313630333534373236323730392d35303239633465342d343266352d346664342d626362622d6330653065336134306635612e706e67\" />\n\n其中蓝色代表 js 脚本网络加载时间，红色代表 js 脚本执行时间，绿色代表 html 解析。\n\n1.defer 和 async 属性都是去异步加载外部的 JS 脚本文件，它们都不会阻塞页面的解析，其区别如下：\n\n2.执行顺序 多个带 async 属性的标签，不能保证加载的顺序；多个带 defer 属性的标签，按照加载顺序执行；\n3.脚本是否并行执行：\nasync 属性，表示后续文档的加载和执行与 js 脚本的加载和执行是并行进行的，即异步执行；\ndefer 属性，加载后续文档的过程和 js 脚本的加载(此时仅加载不执行)是并行进行的(异步)，js 脚本需要等到文档所有元素解析完成之后才执行，DOMContentLoaded 事件触发执行之前。','HTML-4.script标签中defer和async 的区别',0),(12,'GitHub','语义化是指 根据内容的结构化（内容语义化），选择合适的标签（代码语义化）。通俗来讲就是用正确的标签做正确的事情。\n\n语义化的优点如下：\n\n对机器友好，带有语义的文字表现力丰富，更适合搜索引擎的爬虫爬取有效信息，有利于 SEO。除此之外，语义类还支持读屏软件，根据文章可以自动生成目录；\n对开发者友好，使用语义类标签增强了可读性，结构更加清晰，开发者能清晰的看出网页的结构，便于团队的开发与维护。\n常见的语义化标签：\n<header></header>  头部\n<nav></nav>  导航栏\n<section></section>  区块（有语义化的div）\n<main></main>  主要区域\n<article></article>  主要内容\n<aside></aside>  侧边栏\n<footer></footer>  底部','HTML-2. 对HTML语义化的理解',0),(13,'GitHub','DOCTYPE 是 HTML5 中一种标准通用标记语言的文档类型声明，它的目的是告诉浏览器（解析器）应该以什么样（html 或 xhtml）的文档类型定义来解析文档，不同的渲染模式会影响浏览器对 CSS 代码甚⾄ JavaScript 脚本的解析。它必须声明在 HTML ⽂档的第⼀⾏。\n\n浏览器渲染页面的两种模式（可通过 document.compatMode 获取，比如，语雀官网的文档类型是CSS1Compat）：\n\nCSS1Compat：标准模式（Strick mode），默认模式，浏览器使用 W3C 的标准解析渲染页面。在标准模式中，浏览器以其支持的最高标准呈现页面。\nBackCompat：怪异模式(混杂模式)(Quick mode)，浏览器使用自己的怪异模式解析渲染页面。在怪异模式中，页面以一种比较宽松的向后兼容的方式显示。','HTML-3.DOCTYPE(文档类型)的作⽤',0),(14,'GitHub','meta 标签由 name 和 content 属性定义，用来描述网页文档的属性，比如网页的作者，网页描述，关键词等，除了 HTTP 标准固定了一些name作为大家使用的共识，开发者还可以自定义 name。\n常用的 meta 标签：\n（1）charset，用来描述 HTML 文档的编码类型：\n<meta charset=\"UTF-8\" >\n（2） keywords，页面关键词：\n<meta name=\"keywords\" content=\"关键词\" />\n（3）description，页面描述：\n<meta name=\"description\" content=\"页面描述内容\" />\n（4）refresh，页面重定向和刷新：\n<meta http-equiv=\"refresh\" content=\"0;url=\" />\n（5）viewport，适配移动端，可以控制视口的大小和比例：\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n其中，content 参数有以下几种：\nwidth viewport ：宽度(数值/device-width)\nheight viewport ：高度(数值/device-height)\ninitial-scale ：初始缩放比例\nmaximum-scale ：最大缩放比例\nminimum-scale ：最小缩放比例\nuser-scalable ：是否允许用户缩放(yes/no）\n（6）搜索引擎索引方式：\n<meta name=\"robots\" content=\"index,follow\" />\n其中，content 参数有以下几种：\nall：文件将被检索，且页面上的链接可以被查询；\nnone：文件将不被检索，且页面上的链接不可以被查询；\nindex：文件将被检索；\nfollow：页面上的链接可以被查询；\nnoindex：文件将不被检索；\nnofollow：页面上的链接不可以被查询','HTML-5.常用的meta标签有哪些',0),(15,'GitHub','1. 语义化标签\nheader：定义文档的页眉（头部）；\nnav：定义导航链接的部分；\nfooter：定义文档或节的页脚（底部）；\narticle：定义文章内容；\nsection：定义文档中的节（section、区段）；\naside：定义其所处内容之外的内容（侧边）；\n2. 媒体标签\n（1） audio：音频\n<audio src=\'\' controls autoplay loop=\'true\'></audio>\n属性：\ncontrols 控制面板\nautoplay 自动播放\nloop=‘true’ 循环播放\n（2）video 视频\n<video src=\'\' poster=\'imgs/aa.jpg\' controls></video>\n属性：\nposter：指定视频还没有完全下载完毕，或者用户还没有点击播放前显示的封面。默认显示当前视频文件的第一针画面，当然通过 poster 也可以自己指定。\ncontrols 控制面板\nwidth\nheight\n（3）source 标签\n因为浏览器对视频格式支持程度不一样，为了能够兼容不同的浏览器，可以通过 source 来指定视频源。\n<video>\n    <source src=\'aa.flv\' type=\'video/flv\'></source>\n    <source src=\'aa.mp4\' type=\'video/mp4\'></source>\n</video>','HTML-6.HTML5有哪些更新(一)',0),(16,'GitHub','3. 表单\n表单类型：\nemail ：能够验证当前输入的邮箱地址是否合法\nurl ： 验证 URL\nnumber ： 只能输入数字，其他输入不了，而且自带上下增大减小箭头，\nmax 属性可以设置为最大值，min 可以设置为最小值，value 为默认值。\nsearch ： 输入框后面会给提供一个小叉，可以删除输入的内容，更加人性化。\nrange ： 可以提供给一个范围，其中可以设置 max 和 min 以及 value，其中 value 属性可以设置为默认值\ncolor ： 提供了一个颜色拾取器\ntime ： 时分秒\ndata ： 日期选择年月日\ndatetime ： 时间和日期(目前只有 Safari 支持)\ndatatime-local ：日期时间控件\nweek ：周控件\nmonth：月控件\n表单属性：\nplaceholder ：提示信息\nautofocus ：自动获取焦点\nautocomplete=“on” 或者 autocomplete=“off” 使用这个属性需要有两个前提：\n表单必须提交过\n必须有 name 属性。\nrequired：要求输入框不能为空，必须有值才能够提交。\npattern=\" \" 里面写入想要的正则模式，例如手机号 patte=\"^(+86)?\\d{10}$\"\nmultiple：可以选择多个文件或者多个邮箱\nform=\" form 表单的 ID\"\n表单事件：\noninput 每当 input 里的输入框内容发生变化都会触发此事件。\noninvalid 当验证不通过时触发此事件。','HTML-6.HTML5有哪些更新(二)',0),(17,'GitHub','4. 进度条、度量器\nprogress 标签：用来表示任务的进度（IE、Safari 不支持），max 用来表示任务的进度，value 表示已完成多少\nmeter 属性：用来显示剩余容量或剩余库存（IE、Safari 不支持）\nhigh/low：规定被视作高/低的范围\nmax/min：规定最大/小值\nvalue：规定当前度量值\n设置规则：min < low < high < max\n5.DOM 查询操作\ndocument.querySelector()\ndocument.querySelectorAll()\n它们选择的对象可以是标签，可以是类(需要加点)，可以是 ID(需要加#)\n6. Web 存储\nHTML5 提供了两种在客户端存储数据的新方法：\nlocalStorage - 没有时间限制的数据存储\nsessionStorage - 针对一个 session 的数据存储\n7. 其他\n拖放：拖放是一种常见的特性，即抓取对象以后拖到另一个位置。设置元素可拖放：\n<img draggable=\"true\" />\n画布（canvas ）： canvas 元素使用 JavaScript 在网页上绘制图像。画布是一个矩形区域，可以控制其每一像素。canvas 拥有多种绘制路径、矩形、圆形、字符以及添加图像的方法。\n<canvas id=\"myCanvas\" width=\"200\" height=\"100\"></canvas>\nSVG：SVG 指可伸缩矢量图形，用于定义用于网络的基于矢量的图形，使用 XML 格式定义图形，图像在放大或改变尺寸的情况下其图形质量不会有损失，它是万维网联盟的标准\n地理定位：Geolocation（地理定位）用于定位用户的位置。‘\n','HTML-6.HTML5有哪些更新(三)',0),(18,'GitHub','1.新增元素\n语义化标签：nav、header、footer、aside、section、article\n音频、视频标签：audio、video\n数据存储：localStorage、sessionStorage\ncanvas（画布）、Geolocation（地理定位）、websocket（通信协议）\ninput 标签新增属性：placeholder、autocomplete、autofocus、required\nhistory API：go、forward、back、pushstate\n2.移除的元素\n纯表现的元素：basefont，big，center，font, s，strike，tt，u;\n对可用性产生负面影响的元素：frame，frameset，noframes；','HTML-6.HTML5有哪些更新-总结',0),(19,'GitHub','响应式页面中经常用到根据屏幕密度设置不同的图片。这时就用到了 img 标签的 srcset 属性。srcset 属性用于设置不同屏幕密度下，img 会自动加载不同的图片。用法如下：\n`<img src=\"image-128.png\" srcset=\"image-256.png 2x\" />`\n使用上面的代码，就能实现在屏幕密度为 1x 的情况下加载 image-128.png, 屏幕密度为 2x 时加载 image-256.png。\n按照上面的实现，不同的屏幕密度都要设置图片地址，目前的屏幕密度有 1x,2x,3x,4x 四种，如果每一个图片都设置 4 张图片，加载就会很慢。所以就有了新的 srcset 标准。代码如下：\n`<img src=\"image-128.png\"\n     srcset=\"image-128.png 128w, image-256.png 256w, image-512.png 512w\"\n     sizes=\"(max-width: 360px) 340px, 128px\" />`\n其中 srcset 指定图片的地址和对应的图片质量。sizes 用来设置图片的尺寸零界点。对于 srcset 中的 w 单位，可以理解成图片质量。如果可视区域小于这个质量的值，就可以使用。浏览器会自动选择一个最小的可用图片。\nsizes 语法如下：\n`sizes=\"[media query] [length], [media query] [length] ... \"`\nsizes 就是指默认显示 128px, 如果视区宽度大于 360px, 则显示 340px。','HTML-7.img的srcset属性的作⽤？',0),(20,'GitHub','行内元素有：a b span img input select strong；\n块级元素有：div ul ol li dl dt dd h1 h2 h3 h4 h5 h6 p；\n空元素，即没有内容的 HTML 元素。空元素是在开始标签中关闭的，也就是空元素没有闭合标签：\n\n常见的有：<br>、<hr>、<img>、<input>、<link>、<meta>；\n鲜见的有：<area>、<base>、<col>、<colgroup>、<command>、<embed>、<keygen>、<param>、<source>、<track>、<wbr>。','HTML-8.行内元素、块级元素、空(void)元素有那些？',0),(21,'GitHub','在 HTML 页面中，如果在执行脚本时，页面的状态是不可响应的，直到脚本执行完成后，页面才变成可响应。\nweb worker 是运行在后台的 js，独立于其他脚本，不会影响页面的性能。 并且通过 postMessage 将结果回传到主线程。这样在进行复杂操作的时候，就不会阻塞主线程了。\n\n如何创建 web worker：\n\n1.检测浏览器对于 web worker 的支持性\n2.创建 web worker 文件（js，回传函数等）\n3.创建 web worker 对象','HTML-9.说一下webworker',0),(22,'GitHub','离线存储指的是：在用户没有与因特网连接时，可以正常访问站点或应用，在用户与因特网连接时，更新用户机器上的缓存文件。\n\n<b>原理</b>：HTML5 的离线存储是基于一个新建的 .appcache 文件的缓存机制(不是存储技术)，通过这个文件上的解析清单离线存储资源，这些资源就会像 cookie 一样被存储了下来。之后当网络在处于离线状态下时，浏览器会通过被离线存储的数据进行页面展示\n\n使用方法：\n（1）创建一个和 html 同名的 manifest 文件，然后在页面头部加入 manifest 属性：\n<html lang=\"en\" manifest=\"index.manifest\">\n（2）在 cache.manifest 文件中编写需要离线存储的资源：\nCACHE MANIFEST\n    #v0.11\n    CACHE:\n    js/app.js\n    css/style.css\n    NETWORK:\n    resourse/logo.png\n    FALLBACK:\n    / /offline.html\nCACHE: 表示需要离线存储的资源列表，由于包含 manifest 文件的页面将被自动离线存储，所以不需要把页面自身也列出来。\nNETWORK: 表示在它下面列出来的资源只有在在线的情况下才能访问，他们不会被离线存储，所以在离线情况下无法使用这些资源。不过，如果在 CACHE 和 NETWORK 中有一个相同的资源，那么这个资源还是会被离线存储，也就是说 CACHE 的优先级更高。\nFALLBACK: 表示如果访问第一个资源失败，那么就使用第二个资源来替换他，比如上面这个文件表示的就是如果访问根目录下任何一个资源失败了，那么就去访问 offline.html 。\n（3）在离线状态时，操作 window.applicationCache 进行离线缓存的操作。\n\n如何更新缓存：\n\n（1）更新 manifest 文件\n（2）通过 javascript 操作\n（3）清除浏览器缓存\n\n注意事项：\n\n（1）浏览器对缓存数据的容量限制可能不太一样（某些浏览器设置的限制是每个站点 5MB）。\n（2）如果 manifest 文件，或者内部列举的某一个文件不能正常下载，整个更新过程都将失败，浏览器继续全部使用老的缓存。\n（3）引用 manifest 的 html 必须与 manifest 文件同源，在同一个域下。\n（4）FALLBACK 中的资源必须和 manifest 文件同源。\n（5）当一个资源被缓存后，该浏览器直接请求这个绝对路径也会访问缓存中的资源。\n（6）站点中的其他页面即使没有设置 manifest 属性，请求的资源如果在缓存中也从缓存中访问。\n（7）当 manifest 文件发生改变时，资源请求本身也会触发更新。','HTML-10. HTML5的离线储存怎么使用和工作原理',0),(23,'GitHub','在线的情况下，浏览器发现 html 头部有 manifest 属性，它会请求 manifest 文件，\n如果是第一次访问页面 ，那么浏览器就会根据 manifest 文件的内容下载相应的资源并且进行离线存储。\n如果已经访问过页面并且资源已经进行离线存储了，那么浏览器就会使用离线的资源加载页面，然后浏览器会对比新的 manifest 文件与旧的 manifest 文件，\n如果文件没有发生改变，就不做任何操作，\n如果文件改变了，就会重新下载文件中的资源并进行离线存储。\n离线的情况下，浏览器会直接使用离线存储的资源。','HTML-11.浏览器是如何对 HTML5 的离线储存资源进行管理和加载？',0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(10) NOT NULL COMMENT '用户名',
  `password` varchar(10) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'alex',' 123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-14 17:48:06
