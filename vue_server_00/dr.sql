SET NAMES UTF8;
DROP DATABASE IF EXISTS dr;
CREATE DATABASE dr CHARSET=UTF8;
USE dr;

CREATE TABLE dr_provice(
  id INT PRIMARY KEY AUTO_INCREMENT,
  provice VARCHAR(32)
);
INSERT INTO dr_provice VALUES
(NULL,'推荐'),
(NULL,'巴黎'),
(NULL,'香港'),
(NULL,'北京市'),
(NULL,'上海市'),
(NULL,'广东省'),
(NULL,'江苏省'),
(NULL,'黑龙江'),
(NULL,'天津市'),
(NULL,'河北省'),
(NULL,'山西省'),
(NULL,'内蒙古'),
(NULL,'辽宁省'),
(NULL,'吉林省'),
(NULL,'湖北省'),
(NULL,'湖南省'),
(NULL,'河南省');

CREATE TABLE dr_shopaddress(
  id INT PRIMARY KEY AUTO_INCREMENT,
  spid INT,
  simg VARCHAR(255),
  sname VARCHAR(32),
  saddress VARCHAR(255)
);

INSERT INTO dr_shopaddress VALUES
(NULL,1,'../../img/shopImg/01.jpg','广州-中信广场店','广东省广州市天河区天河北路233号中信广场中天购物城商场134-135单元（林和西地铁站 D出口）'),
(NULL,1,'../../img/shopImg/02.jpg','深圳-龙岗万科广场店','广东省深圳市龙岗区龙翔大道7188号 万科广场 L1-22'),
(NULL,1,'../../img/shopImg/03.jpg','南京-华采天地店','南京市江东中路258号华采天地购物中心1F-03铺'),
(NULL,2,'../../img/shopImg/04.jpg','巴黎-卢浮宫店','法国巴黎里沃利街99号 卢浮宫卡鲁塞尔厅'),
(NULL,3,'../../img/shopImg/05.jpg','香港-尖沙咀店','香港九龙尖沙咀弥敦道63号 i SQUARE 国际广场 MTR地铁层 06B号店铺(尖沙咀站H出口)'),
(NULL,3,'../../img/shopImg/06.jpg','香港-铜锣湾店','香港特别行政区铜锣湾白沙道15号 （铜锣湾地铁站 F1 出口）'),
(NULL,4,'../../img/shopImg/07.jpg','北京-银泰in88旗舰店','北京市东城区王府井大街88号北京王府井银泰in88L121'),
(NULL,4,'../../img/shopImg/08.jpg','北京-金源燕莎MALL店','北京市海淀区远大路1号金源燕莎mall'),
(NULL,4,'../../img/shopImg/09.jpg','北京-东方新天地店','北京市东城区东长安街1号北京东方广场东方新天地商场UG层A106A&B店铺'),
(NULL,4,'../../img/shopImg/10.jpg','北京-银泰中心国贸店','北京市朝阳区建国门外大街2号北京银泰中心地下一层B54号 '),
(NULL,5,'../../img/shopImg/11.jpg','上海-浦东正大广场店','上海市浦东新区陆家嘴西路168号正大广场1楼GF10号'),
(NULL,5,'../../img/shopImg/12.jpg','上海-淮海中路店','上海市黄浦区淮海中路806号1楼'),
(NULL,5,'../../img/shopImg/13.jpg','上海-来福士广场店','上海市长宁区长宁路1123号东区一层29-30'),
(NULL,5,'../../img/shopImg/14.jpg','上海-香港广场店','上海市黄浦区淮海中路282号香港广场商场北座NL1-09B室'),
(NULL,5,'../../img/shopImg/15.jpg','上海-虹口龙之梦店','上海市虹口区西江湾路388号虹口龙之梦A01-46'),
(NULL,6,'../../img/shopImg/16.jpg','广州-中信广场店','广东省广州市天河区天河北路233号中信广场中天购物城商场134-135单元（林和西地铁站 D出口）'),
(NULL,6,'../../img/shopImg/17.jpg','深圳-龙岗万科广场店','广东省深圳市龙岗区龙翔大道7188号 万科广场 L1-22'),
(NULL,6,'../../img/shopImg/18.jpg','深圳-海雅缤纷城店','广东省深圳市宝安区新安街道建安一路99号 海雅缤纷城 1S01'),
(NULL,6,'../../img/shopImg/19.jpg','深圳-壹方城店','广东省深圳市宝安区壹方城购物中心  L1-093A'),
(NULL,7,'../../img/shopImg/20.jpg','南京-华采天地店','南京市江东中路258号华采天地购物中心1F-03号店铺'),
(NULL,7,'../../img/shopImg/21.jpg','南京-德基广场店','南京市玄武区中山路18号德基广场1期3楼T152DR'),
(NULL,7,'../../img/shopImg/22.jpg','南京-新街口大洋店','南京市秦淮区中山南路122号大洋百货一层1B-05'),
(NULL,7,'../../img/shopImg/23.jpg','苏州-吴江万象汇店','苏州市吴江区开平路交冬梅街万象汇一层L107铺位'),
(NULL,8,'../../img/shopImg/24.jpg','哈尔滨-金太阳店','黑龙江省哈尔滨市 道里区地段街128号金太阳索菲亚精品城一层B区18（7号门）'),
(NULL,8,'../../img/shopImg/25.jpg','哈尔滨-红博会展购物中心店','哈尔滨南岗区红旗大街301号'),
(NULL,8,'../../img/shopImg/26.jpg','哈尔滨-西城红场店','哈尔滨市南岗区哈西大街299号西城红场生活港1F'),
(NULL,8,'../../img/shopImg/27.jpg','哈尔滨-香坊万达店','哈尔滨市香坊区赣水路68号香坊万达首层'),
(NULL,9,'../../img/shopImg/28.jpg','天津-海信广场店','天津市和平区解放北路188号天津海信广场三层333 店铺'),
(NULL,9,'../../img/shopImg/29.jpg','天津-陆家嘴广场店','天津市红桥区大丰路陆家嘴中心广场商场L1层L132号'),
(NULL,9,'../../img/shopImg/30.jpg','天津-万象城店','天津市河西区乐园道9号天津万象城二层L2-026-2，027-1（店铺号）'),
(NULL,9,'../../img/shopImg/31.jpg','天津-金元宝商厦店','天津市滨海新区塘沽解放路668号'),
(NULL,10,'../../img/shopImg/32.jpg','保定-万博广场店','河北保定朝阳北大街99号铺位号1049'),
(NULL,10,'../../img/shopImg/33.jpg','石家庄-乐汇城店','河北省石家庄市长安区中山东路11号乐汇城一层w11号铺'),
(NULL,10,'../../img/shopImg/34.jpg','唐山-银泰城店','河北省唐山市路南区新华西道2-4号银泰城B馆F107号商铺'),
(NULL,10,'../../img/shopImg/35.jpg','沧州-华北商厦百货店','河北省沧州市运河区新华中路7号'),
(NULL,11,'../../img/shopImg/36.jpg','太原-万达广场店','河北省沧州市运河区新华中路7号'),
(NULL,11,'../../img/shopImg/38.jpg','太原万象城店','河北省沧州市运河区新华中路7号'),
(NULL,11,'../../img/shopImg/39.jpg','太原茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,12,'../../img/shopImg/40.jpg','太原茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,13,'../../img/shopImg/41.jpg','太原茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,14,'../../img/shopImg/42.jpg','太原茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,15,'../../img/shopImg/43.jpg','太原茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,16,'../../img/shopImg/44.jpg','太原茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,17,'../../img/shopImg/45.jpg','太原茂业天地店','河北省沧州市运河区新华中路7号');

CREATE TABLE dr_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(64)
);

INSERT INTO dr_carousel VALUES
(NULL,'carousel1.jpg'),
(NULL,'carousel2.jpg');