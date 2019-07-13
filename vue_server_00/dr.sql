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
(NULL,1,'http://127.0.0.1:8080/img/shopImg/01.jpg','广州-中信广场店','广东省广州市天河区天河北路233号中信广场中天购物城商场134-135单元（林和西地铁站 D出口）'),
(NULL,1,'http://127.0.0.1:8080/img/shopImg/02.jpg','深圳-龙岗万科广场店','广东省深圳市龙岗区龙翔大道7188号 万科广场 L1-22'),
(NULL,1,'http://127.0.0.1:8080/img/shopImg/03.jpg','南京-华采天地店','南京市江东中路258号华采天地购物中心1F-03铺'),
(NULL,2,'http://127.0.0.1:8080/img/shopImg/04.jpg','巴黎-卢浮宫店','法国巴黎里沃利街99号 卢浮宫卡鲁塞尔厅'),
(NULL,3,'http://127.0.0.1:8080/img/shopImg/05.jpg','香港-尖沙咀店','香港九龙尖沙咀弥敦道63号 i SQUARE 国际广场 MTR地铁层 06B号店铺(尖沙咀站H出口)'),
(NULL,3,'http://127.0.0.1:8080/img/shopImg/06.jpg','香港-铜锣湾店','香港特别行政区铜锣湾白沙道15号 （铜锣湾地铁站 F1 出口）'),
(NULL,4,'http://127.0.0.1:8080/img/shopImg/07.jpg','北京-银泰in88旗舰店','北京市东城区王府井大街88号北京王府井银泰in88L121'),
(NULL,4,'http://127.0.0.1:8080/img/shopImg/08.jpg','北京-金源燕莎MALL店','北京市海淀区远大路1号金源燕莎mall'),
(NULL,4,'http://127.0.0.1:8080/img/shopImg/09.jpg','北京-东方新天地店','北京市东城区东长安街1号北京东方广场东方新天地商场UG层A106A&B店铺'),
(NULL,4,'http://127.0.0.1:8080/img/shopImg/10.jpg','北京-银泰中心国贸店','北京市朝阳区建国门外大街2号北京银泰中心地下一层B54号 '),
(NULL,5,'http://127.0.0.1:8080/img/shopImg/11.jpg','上海-浦东正大广场店','上海市浦东新区陆家嘴西路168号正大广场1楼GF10号'),
(NULL,5,'http://127.0.0.1:8080/img/shopImg/12.jpg','上海-淮海中路店','上海市黄浦区淮海中路806号1楼'),
(NULL,5,'http://127.0.0.1:8080/img/shopImg/13.jpg','上海-来福士广场店','上海市长宁区长宁路1123号东区一层29-30'),
(NULL,5,'http://127.0.0.1:8080/img/shopImg/14.jpg','上海-香港广场店','上海市黄浦区淮海中路282号香港广场商场北座NL1-09B室'),
(NULL,5,'http://127.0.0.1:8080/img/shopImg/15.jpg','上海-虹口龙之梦店','上海市虹口区西江湾路388号虹口龙之梦A01-46'),
(NULL,6,'http://127.0.0.1:8080/img/shopImg/16.jpg','广州-中信广场店','广东省广州市天河区天河北路233号中信广场中天购物城商场134-135单元（林和西地铁站 D出口）'),
(NULL,6,'http://127.0.0.1:8080/img/shopImg/17.jpg','深圳-龙岗万科广场店','广东省深圳市龙岗区龙翔大道7188号 万科广场 L1-22'),
(NULL,6,'http://127.0.0.1:8080/img/shopImg/18.jpg','深圳-海雅缤纷城店','广东省深圳市宝安区新安街道建安一路99号 海雅缤纷城 1S01'),
(NULL,6,'http://127.0.0.1:8080/img/shopImg/19.jpg','深圳-壹方城店','广东省深圳市宝安区壹方城购物中心  L1-093A'),
(NULL,7,'http://127.0.0.1:8080/img/shopImg/20.jpg','南京-华采天地店','南京市江东中路258号华采天地购物中心1F-03号店铺'),
(NULL,7,'http://127.0.0.1:8080/img/shopImg/21.jpg','南京-德基广场店','南京市玄武区中山路18号德基广场1期3楼T152DR'),
(NULL,7,'http://127.0.0.1:8080/img/shopImg/22.jpg','南京-新街口大洋店','南京市秦淮区中山南路122号大洋百货一层1B-05'),
(NULL,7,'http://127.0.0.1:8080/img/shopImg/23.jpg','苏州-吴江万象汇店','苏州市吴江区开平路交冬梅街万象汇一层L107铺位'),
(NULL,8,'http://127.0.0.1:8080/img/shopImg/24.jpg','哈尔滨-金太阳店','黑龙江省哈尔滨市 道里区地段街128号金太阳索菲亚精品城一层B区18（7号门）'),
(NULL,8,'http://127.0.0.1:8080/img/shopImg/25.jpg','哈尔滨-红博会展购物中心店','哈尔滨南岗区红旗大街301号'),
(NULL,8,'http://127.0.0.1:8080/img/shopImg/26.jpg','哈尔滨-西城红场店','哈尔滨市南岗区哈西大街299号西城红场生活港1F'),
(NULL,8,'http://127.0.0.1:8080/img/shopImg/27.jpg','哈尔滨-香坊万达店','哈尔滨市香坊区赣水路68号香坊万达首层'),
(NULL,9,'http://127.0.0.1:8080/img/shopImg/28.jpg','天津-海信广场店','天津市和平区解放北路188号天津海信广场三层333 店铺'),
(NULL,9,'http://127.0.0.1:8080/img/shopImg/29.jpg','天津-陆家嘴广场店','天津市红桥区大丰路陆家嘴中心广场商场L1层L132号'),
(NULL,9,'http://127.0.0.1:8080/img/shopImg/30.jpg','天津-万象城店','天津市河西区乐园道9号天津万象城二层L2-026-2，027-1（店铺号）'),
(NULL,9,'http://127.0.0.1:8080/img/shopImg/31.jpg','天津-金元宝商厦店','天津市滨海新区塘沽解放路668号'),
(NULL,10,'http://127.0.0.1:8080/img/shopImg/32.jpg','保定-万博广场店','河北保定朝阳北大街99号铺位号1049'),
(NULL,10,'http://127.0.0.1:8080/img/shopImg/33.jpg','石家庄-乐汇城店','河北省石家庄市长安区中山东路11号乐汇城一层w11号铺'),
(NULL,10,'http://127.0.0.1:8080/img/shopImg/34.jpg','唐山-银泰城店','河北省唐山市路南区新华西道2-4号银泰城B馆F107号商铺'),
(NULL,10,'http://127.0.0.1:8080/img/shopImg/35.jpg','沧州-华北商厦百货店','河北省沧州市运河区新华中路7号'),
(NULL,11,'http://127.0.0.1:8080/img/shopImg/36.jpg','太原-万达广场店','河北省沧州市运河区新华中路7号'),
(NULL,11,'http://127.0.0.1:8080/img/shopImg/38.jpg','太原万象城店','河北省沧州市运河区新华中路7号'),
(NULL,11,'http://127.0.0.1:8080/img/shopImg/39.jpg','太原茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,12,'http://127.0.0.1:8080/img/shopImg/40.jpg','内蒙古茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,13,'http://127.0.0.1:8080/img/shopImg/41.jpg','辽宁茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,14,'http://127.0.0.1:8080/img/shopImg/42.jpg','济宁茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,15,'http://127.0.0.1:8080/img/shopImg/43.jpg','湖北茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,16,'http://127.0.0.1:8080/img/shopImg/44.jpg','湖南茂业天地店','河北省沧州市运河区新华中路7号'),
(NULL,17,'http://127.0.0.1:8080/img/shopImg/45.jpg','河南茂业天地店','河北省沧州市运河区新华中路7号');

CREATE TABLE dr_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(64)
);

INSERT INTO dr_carousel VALUES
(NULL,'http://127.0.0.1:8080/img/mainImg/carousel1.jpg'),
(NULL,'http://127.0.0.1:8080/img/mainImg/carousel2.jpg');

CREATE TABLE dr_starinfo(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(64),
  title VARCHAR(125),
  subtitle VARCHAR(125)
);

INSERT INTO dr_starinfo VALUES
(NULL,'http://127.0.0.1:8080/img/starImg/stars1.jpg','苏菲·玛索佩戴D-DESTINY系列 诠释与众不同的真爱风格','最高级的性感，是做独一无二的自己'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars2.jpg','“左祭司”江奇霖用DR钻戒求婚“宫羽”周奇奇','此生真爱不换'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars3.jpg','杜海涛&沈梦辰戴DR钻戒，神仙爱情秀恩爱！','唯有你，是我一生稳稳的幸福'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars4.jpg','香港资深艺人罗家英用DR钻戒向太太告白','一生最大的成就，就是爱了你一辈子'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars5.jpg','《我只喜欢你》男主角张雨剑，用DR钻戒来告白','喜欢到了极致，就是一生只爱一人'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars6.jpg','张若昀佩戴DR钻戒拍摄时尚大片，尽显男神魅力','黑白钻诠释摩登爱情，令人一见倾心'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars7.jpg','欧阳娜娜戴DR钻戒，憧憬一份纯粹真爱','憧憬爱情，清新甜美'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars8.jpg','宋茜佩戴DR钻戒拍摄时尚大片，实力美“撩”','把心交给你，从此一生只爱你一人'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars9.jpg','唐艺昕佩戴MY HEART系列浪漫心形钻戒，笑出甜蜜少女感','以梨涡浅笑，定义DR带来的灵动气质和幸福'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars10.jpg','阚清子率性佩戴DR钻戒全新系列，演绎真爱格调','昂首阔步，笃定去爱'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars11.jpg','安以轩佩戴DR钻戒拍摄大片，如愿嫁给爱情','对的人，终将深情款款走向你'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars12.jpg','古装美男徐海乔祝福真爱点赞DR族','笃定一生许诺唯一'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars13.jpg','霸道总裁明道携手DR前卫大胆演绎浪漫时代','斯文绅士，忠于唯一'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars14.jpg','文艺couple范玮&黄璐  戴DR深情承诺“一生只爱一人”','携最爱的人，把生活过成诗'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars15.jpg','陈紫函戴向宇领证结婚 用DR钻戒见证幸福','一心一意，一世一生'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars16.jpg','戚薇李承铉大婚，交换DR黑白婚戒兑现一生真爱承诺','用一生作赌注，不畏惧输赢'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars17.jpg','吕一钱泳辰戴DR钻戒幸福完婚，宣誓一生只爱一人','你是我的吕一，更是我的唯一'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars18.jpg','吴京谢楠情定DR，一枚心形钻承诺“把心交给你”','承诺一时，印证一生'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars19.jpg','DR求婚钻戒携手《心动的信号》勇敢表达真爱','浪漫小白盒，一生只为你一人开启'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars20.jpg','港星江若琳喜嫁十年好友，DR钻戒见证爱情童话','十年挚友蜕变成挚爱，真爱修成正果'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars21.jpg','陈龙&章龄之佩戴DR钻戒：陪伴是最长情的告白','遇到对的人，一切都顺理成章'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars22.jpg','郭晓东程莉莎佩戴DR钻戒拍摄时尚大片，浪漫诠释一生只爱一人','爱是不被大雨浇灭的欲望，是疲惫生活中的英雄梦想'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars23.jpg','黄子韬手握DR钻戒表白：一生只爱一人，是我做过最cool的事','一生只爱一人，是我做过最COOL的事'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars24.jpg','“跳水女皇”吴敏霞含泪戴上DR钻戒，结束8年爱情长跑','深情演绎一生只爱一人，传播爱情正能量想'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars25.jpg','“曲妖精”王子文佩戴DR钻戒，霸气表示爱情只选最爱','真心只给一人，真爱绝不将就'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars26.jpg','“电竞冠军”若风&戚蓝尹佩戴DR钻戒浪漫大婚','赢过全世界，更想赢得你'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars27.jpg','黄璐佩戴DR PARIS 52°，期待DR见证每个浪漫时刻','最浪漫的事，是一生只爱一人'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars28.jpg','时尚达人YUYU 佩戴DR PARIS 52°打卡巴黎体验店','用一生，浪漫爱'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars29.jpg','新晋F4花美男以Darry Ring 结婚对戒诠释真爱至上','大胆演绎95后的“奢侈”真爱态度'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars30.jpg','短道速滑冠军韩天宇用DR浪漫求婚','冰与雪的追逐，让一生唯一真爱画下句号'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars31.jpg','“亚洲飞人”苏炳添为爱妻戴上DR珍贵粉钻','爱你，从校园到婚纱'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars32.jpg','冻龄男神孙耀威大婚 用DR谱写一生只爱一人的恋歌','娱乐圈楷模迎娶女友陈美诗 幸福模样羡煞旁人'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars33.jpg','李茂弦子戴DR钻戒秀恩爱：你是我最爱的棉花糖','认定一人，倾其一生'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars34.jpg','“奥运五金王”邹凯大婚，用DR钻戒Love Line 系列美钻承诺一生','情定今生，用爱系住你我'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars35.jpg','DR钻戒携手电影《所以……和黑粉结婚了》将真爱进行到底','有一种真爱叫做“一生‘黑粉’你一人”'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars36.jpg','当陈乔恩邂逅DR钻戒，灵动唯美优雅大气并存','专注内心所想，无畏去爱'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars37.jpg','DR钻戒携手电影《小时代4》，定义灵魂爱情','爱，是给你最好的'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars38.jpg','贾青公开DR族身份，主张一生只爱一人','DR神秘小白盒，珍藏属于你的浪漫'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars39.jpg','娄艺潇佩戴DR钻戒登《芭莎珠宝》，倾情演绎浪漫真爱','华美钻石化作指尖璀璨，铭记一生相爱时光'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars40.jpg','时尚女王苏红化身DR钻戒星店长，为恋人送上真爱祝福','探讨爱与时尚的奥妙，真爱绝不将就'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars41.jpg','明星夫妻宋宁&齐溪公布DR族身份相约文艺到老','气味相投的人，终究会走到一起'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars42.jpg','世界冠军许昕用DR钻戒求婚姚彦，七年恋情修成正果','因为是你，爱情一次就好'),
(NULL,'http://127.0.0.1:8080/img/starImg/stars43.jpg','四爷何晟铭晒DR求婚钻戒，被赞DR好男人','DR承载毕生的爱');

CREATE TABLE dr_getcmts(
  cmtid INT PRIMARY KEY AUTO_INCREMENT,
  id INT,
  user_name VARCHAR(125),
  add_time VARCHAR(64),
  content VARCHAR(125)
);

INSERT INTO dr_getcmts VALUES
(NULL,1,'匿名用户','2018-05-06 23:00:00','今天天气真好'),
(NULL,1,'匿名用户','2019-05-06 23:20:00','今天天气真好'),
(NULL,1,'匿名用户','2018-04-06 23:10:30','今天天气真好'),
(NULL,1,'匿名用户','2017-03-06 21:20:00','今天天气真好'),
(NULL,1,'匿名用户','2019-01-06 20:30:00','今天天气真好'),
(NULL,1,'匿名用户','2012-03-06 21:40:00','今天天气真好'),
(NULL,1,'匿名用户','2013-02-06 22:50:00','今天天气真好'),
(NULL,1,'匿名用户','2017-04-06 06:11:00','今天天气真好'),
(NULL,1,'匿名用户','2019-01-06 08:23:00','今天天气真好'),
(NULL,1,'匿名用户','2012-03-06 10:34:00','今天天气真好'),
(NULL,1,'匿名用户','2014-02-04 12:53:00','今天天气真好'),
(NULL,1,'匿名用户','2015-05-03 16:32:00','今天天气真好'),
(NULL,1,'匿名用户','2010-01-06 25:43:00','今天天气真好'),
(NULL,2,'匿名用户','2018-05-06 23:00:00','DR钻戒真好'),
(NULL,2,'匿名用户','2019-05-06 23:20:00','DR钻戒真好'),
(NULL,2,'匿名用户','2018-04-06 23:10:30','DR钻戒真好'),
(NULL,2,'匿名用户','2017-03-06 21:20:00','DR钻戒真好'),
(NULL,2,'匿名用户','2019-01-06 20:30:00','DR钻戒真好'),
(NULL,2,'匿名用户','2012-03-06 21:40:00','DR钻戒真好'),
(NULL,2,'匿名用户','2013-02-06 22:50:00','DR钻戒真好'),
(NULL,2,'匿名用户','2017-04-06 06:11:00','DR钻戒真好'),
(NULL,2,'匿名用户','2019-01-06 08:23:00','DR钻戒真好'),
(NULL,2,'匿名用户','2012-03-06 10:34:00','DR钻戒真好'),
(NULL,2,'匿名用户','2014-02-04 12:53:00','DR钻戒真好'),
(NULL,2,'匿名用户','2015-05-03 16:32:00','DR钻戒真好'),
(NULL,2,'匿名用户','2010-01-06 25:43:00','DR钻戒真好'),
(NULL,3,'匿名用户','2018-05-06 23:00:00','WELCOME DR'),
(NULL,3,'匿名用户','2019-05-06 23:20:00','WELCOME DR'),
(NULL,3,'匿名用户','2018-04-06 23:10:30','WELCOME DR'),
(NULL,3,'匿名用户','2017-03-06 21:20:00','WELCOME DR'),
(NULL,3,'匿名用户','2019-01-06 20:30:00','WELCOME DR'),
(NULL,3,'匿名用户','2012-03-06 21:40:00','WELCOME DR'),
(NULL,3,'匿名用户','2013-02-06 22:50:00','WELCOME DR'),
(NULL,3,'匿名用户','2017-04-06 06:11:00','WELCOME DR'),
(NULL,3,'匿名用户','2019-01-06 08:23:00','WELCOME DR'),
(NULL,3,'匿名用户','2012-03-06 10:34:00','WELCOME DR'),
(NULL,3,'匿名用户','2014-02-04 12:53:00','WELCOME DR'),
(NULL,3,'匿名用户','2015-05-03 16:32:00','WELCOME DR'),
(NULL,3,'匿名用户','2010-01-06 25:43:00','WELCOME DR'),
(NULL,4,'匿名用户','2018-05-06 23:00:00','一生只能购买一次'),
(NULL,4,'匿名用户','2019-05-06 23:20:00','一生只能购买一次'),
(NULL,4,'匿名用户','2018-04-06 23:10:30','一生只能购买一次'),
(NULL,4,'匿名用户','2017-03-06 21:20:00','一生只能购买一次'),
(NULL,4,'匿名用户','2019-01-06 20:30:00','一生只能购买一次'),
(NULL,4,'匿名用户','2012-03-06 21:40:00','一生只能购买一次'),
(NULL,4,'匿名用户','2013-02-06 22:50:00','一生只能购买一次'),
(NULL,4,'匿名用户','2017-04-06 06:11:00','一生只能购买一次'),
(NULL,4,'匿名用户','2019-01-06 08:23:00','一生只能购买一次'),
(NULL,4,'匿名用户','2012-03-06 10:34:00','一生只能购买一次'),
(NULL,4,'匿名用户','2014-02-04 12:53:00','一生只能购买一次'),
(NULL,4,'匿名用户','2015-05-03 16:32:00','一生只能购买一次'),
(NULL,4,'匿名用户','2010-01-06 25:43:00','一生只能购买一次'),
(NULL,5,'匿名用户','2018-05-06 23:00:00','要幸福，就来DR'),
(NULL,5,'匿名用户','2019-05-06 23:20:00','要幸福，就来DR'),
(NULL,5,'匿名用户','2018-04-06 23:10:30','要幸福，就来DR'),
(NULL,5,'匿名用户','2017-03-06 21:20:00','要幸福，就来DR'),
(NULL,5,'匿名用户','2019-01-06 20:30:00','要幸福，就来DR'),
(NULL,5,'匿名用户','2012-03-06 21:40:00','要幸福，就来DR'),
(NULL,5,'匿名用户','2013-02-06 22:50:00','要幸福，就来DR'),
(NULL,5,'匿名用户','2017-04-06 06:11:00','要幸福，就来DR'),
(NULL,5,'匿名用户','2019-01-06 08:23:00','要幸福，就来DR'),
(NULL,5,'匿名用户','2012-03-06 10:34:00','要幸福，就来DR'),
(NULL,5,'匿名用户','2014-02-04 12:53:00','要幸福，就来DR'),
(NULL,5,'匿名用户','2015-05-03 16:32:00','要幸福，就来DR'),
(NULL,5,'匿名用户','2010-01-06 25:43:00','要幸福，就来DR');

CREATE TABLE dr_stardetail(
  starid INT PRIMARY KEY AUTO_INCREMENT,
  id INT,
  title VARCHAR(125),
  img VARCHAR(64),
  click INT,
  add_time VARCHAR(64),
  content VARCHAR(125)
);

INSERT INTO dr_stardetail VALUES
(NULL,1,'苏菲·玛索（SophieMarceau）','http://127.0.0.1:8080/img/starImg/stars1.jpg',1,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。2019年6月，男士一生仅一枚的DR求婚钻戒，携手法国时尚杂志《Neufmode九号摩登》，为苏菲·玛索拍摄了一组古典大片。全新D-DESTINY系列及DR PARIS 52°系列，一一佩戴在苏菲玛索身上，被诠释出一种不同于他人的法兰西式独特美感。'),
(NULL,2,'江奇霖&周奇奇','http://127.0.0.1:8080/img/starImg/stars2.jpg',2,'2012-1-4 12:34:33','演唱《仙剑奇侠传》神曲《此生不换》的歌手江奇霖求婚成功啦，对象是《琅琊榜》里温柔美丽的宫羽姑娘，并在微博公布求婚喜讯，宣布”用一生，爱一人“，真是浪漫至极！'),
(NULL,3,'杜海涛&沈梦辰','http://127.0.0.1:8080/img/starImg/stars3.jpg',3,'2013-7-4 12:34:33','教科书男友杜海涛携女友沈梦辰，戴DR钻戒恩爱亮相《CHIC小资》杂志，绝美神仙爱情的闲鱼夫妇，令粉丝们大呼超甜蜜！ 杜海涛对沈梦辰可谓百般呵护，他们交往6年吵架不超过10次，每年过年，杜海涛都要和沈梦辰亲口说“新年快乐”，彼此早已认定对方是自己的一生唯一真爱。'),
(NULL,4,'罗家英','http://127.0.0.1:8080/img/starImg/stars4.jpg',4,'2017-8-4 12:34:33','2019年5月20日，73岁的香港老牌艺人罗家英，在与妻子汪明荃结婚十周年之际，精心录制了感人至深的《致太太》告白视频，并用一生一枚的DR钻戒告白：一生最大的成就就是爱了太太一辈子，下辈子只想早点遇见你，令无数网友感动疯传。'),
(NULL,5,'张培萌','http://127.0.0.1:8080/img/starImg/stars5.jpg',5,'2016-9-4 12:34:33','一个是运动健将，一个是体育主持人，张培萌和女友张漠寒于6月9日在北京国贸酒店举行了浪漫婚礼，并以一生一枚的DR求婚钻戒，许下一生一世的真爱誓言。从求婚到结婚，张培萌都选择了DR，他用行动实力诠释了“用一生爱一人，我是认真的”。'),
(NULL,6,'张雨剑','http://127.0.0.1:8080/img/starImg/stars6.jpg',6,'2015-2-4 12:34:33','由新生代偶像张雨剑饰演的君言默，高冷却又细心，霸气又不失温柔，成为了许多女孩心目中完美男友。2019年5月，张雨剑用一生唯一的DR求婚钻戒深情告白，演绎一个男人不同阶段的喜欢。什么是喜欢？是“从校服到婚纱，从青丝到白发”，是用男士一生仅能定制一枚的DR钻戒向你求婚，原来当喜欢到了极致，便是把你绑在我身边，用一生爱一人。'),
(NULL,7,'张若昀','http://127.0.0.1:8080/img/starImg/stars7.jpg',7,'2015-3-4 12:34:33','每个少女心中，都有一个梦中情人，他怀着难以表达的深情，认真且专注地在凝望。2017年，张若昀佩戴一生唯一的DR钻戒，登上《小资CHIC》杂志5月号。举手投足间尽显男神魅力，桀骜不羁却又认真深情，帅气得让人心醉！他说：“男人不该情绪化，保护她，相信她，支持她而不要支配她”，秉持初心，认认真真地爱一人，才能收获一份一生一世的圆满爱情。'),
(NULL,8,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars8.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,9,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars9.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,10,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars10.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,11,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars12.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,12,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars12.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,13,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars13.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,14,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars14.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,15,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars15.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,16,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars16.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,17,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars17.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,18,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars18.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,19,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars19.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,20,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars20.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,21,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars1.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,22,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars21.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,23,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars22.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,24,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars23.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,25,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars24.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,26,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars25.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,27,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars26.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,28,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars27.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,29,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars28.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,30,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars29.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,31,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars30.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,32,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars31.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。'),
(NULL,33,'清新有活力的设计','http://127.0.0.1:8080/img/starImg/stars31.jpg',3,'2015-3-4 12:34:33','从《初吻》中一举成名，到斩获法国金像奖最佳女主角奖，苏菲·玛索一直是男士心中魂牵梦萦的初恋。');

CREATE TABLE dr_doughnut(
  id INT PRIMARY KEY AUTO_INCREMENT,
  dgid INT,
  dgtime VARCHAR(128),
  imgs VARCHAR(512),
  judge VARCHAR(1024)
);

INSERT INTO dr_doughnut VALUES
(NULL,1,'2019-06-12','http://127.0.0.1:8080/img/doughnutImg/dg1.jpg&http://127.0.0.1:8080/img/doughnutImg/dg2.jpg&http://127.0.0.1:8080/img/doughnutImg/dg3.jpg','DR家的款式很多，有好几个系列~店员小姐姐人很nice，帮我试戴了Just You经典款，本来担心我这种肉肉的小胖手不适合戴戒指，没想到效果让我很惊喜！因为这款是心形扭臂设计的，可以很完美地修饰手型，显得手指更修长，是不是很神奇！！！墙裂推荐给跟我一样的红薯们~简直是小胖手的救星呀！'),
(NULL,2,'2019-05-23','http://127.0.0.1:8080/img/doughnutImg/dg4.jpg&http://127.0.0.1:8080/img/doughnutImg/dg5.jpg&http://127.0.0.1:8080/img/doughnutImg/dg6.jpg&http://127.0.0.1:8080/img/doughnutImg/dg7.jpg&http://127.0.0.1:8080/img/doughnutImg/dg8.jpg','因为我是一个特别喜欢浪漫和少女心的人，所以My heart系列很戳中我，在预算内我又挑选了50分D色的简奢款~少女心又不失典雅，超级适合出席重要场合的时候戴着~！考虑到将来婚礼上要用于交换的对戒，所以我们还挑选了Darry Ring系列的真爱印记。这款对戒相对来说就低调很多啦~喜欢这款对戒的设计简洁大方，男女生戴起来都特别好看，而且一看就是情侣款哈哈哈，这样我们以后一起出门的时候就能一起戴啦！'),
(NULL,3,'2019-05-20','http://127.0.0.1:8080/img/doughnutImg/dg9.jpg&http://127.0.0.1:8080/img/doughnutImg/dg10.jpg&http://127.0.0.1:8080/img/doughnutImg/dg11.jpg','钻戒是唯一想拿出来说的一个，老公是非常懂我的那个人，而我其实很容易没有安全感，我们的钻戒是DR钻戒（Darry Ring），老公说这钻戒男生一生只能买一枚，代表男生一生只爱女生一人。最get到我的心了！对戒也是他家的，10%先生结婚对戒，好像意思是男士把90%的爱给女士，10%的爱给他自己啦~挺符合的哈哈,其实备婚真的是一个很复杂的过程，但是也很让人难忘。希望备婚的宝宝都可以走向圣洁的婚姻殿堂，和自己的另一半甜甜蜜蜜一辈子~'),
(NULL,4,'2019-02-20','http://127.0.0.1:8080/img/doughnutImg/dg12.jpg&http://127.0.0.1:8080/img/doughnutImg/dg14.jpg','写这篇文章的初衷，是因为有天本红薯在小红书上看到了一个奢侈店员小姐姐的分享，说很多有钱人对原配夫人很抠门，对小三却很大方，带着去奢侈品店、珠宝店各种买买买，连柜姐都看不下去了。最后她发出了“希望每一个女人都好好爱自己”的感叹！'),
(NULL,5,'2019-06-25','http://127.0.0.1:8080/img/doughnutImg/dg13.jpg&http://127.0.0.1:8080/img/doughnutImg/dg15.jpg&http://127.0.0.1:8080/img/doughnutImg/dg16.jpg','当时我看到，简直是不能再认同了！因为我就是一个珠宝行业销售人员，见过太多这种事情，做久了反正挺毁三观。直到我去了一家珠宝品牌，可能很多人都听说过的DR （Darry Ring钻戒），主张一生只爱一人的牌子，简直就是珠宝界的一股清流！！！'),
(NULL,6,'2018-12-25','http://127.0.0.1:8080/img/doughnutImg/dg17.jpg&http://127.0.0.1:8080/img/doughnutImg/dg18.jpg&http://127.0.0.1:8080/img/doughnutImg/dg19.jpg&http://127.0.0.1:8080/img/doughnutImg/dg20.jpg','DR家是规定男士凭身份证，一生仅能定制一枚求婚钻戒，送给唯一的爱人，购买记录全球可查！有些客人或网友总是说不相信，说这种规定肯定就是噱头，给钱难道还不卖第二枚？各位亲，作为DR员工重要的事情说三遍！DR家的求婚钻戒，男士凭身份证一生仅能定制一枚！一生仅能定制一枚！一生仅能定制一枚！公司一旦发现有违规操作的，相关工作人员都要被批评。'),
(NULL,7,'2018-09-25','http://127.0.0.1:8080/img/doughnutImg/dg21.jpg&http://127.0.0.1:8080/img/doughnutImg/dg22.jpg&http://127.0.0.1:8080/img/doughnutImg/dg23.jpg&http://127.0.0.1:8080/img/doughnutImg/dg24.jpg','作为专业珠宝柜姐，顺便也给大家科普下钻戒知识。买钻戒，没有GIA都是耍流氓！GIA是国际专业机构（美国宝石协会）的颁布的4C标准证书，满足SI1及以上的优质净度，J及以上璀璨色级，切工3VG以上，这些才可放心买。款式的话，DR的#love line#系列、#my hear#系列、#believe#系列等都算得上爆款，对戒#DARRY RING系列#、#10%先生#也都是不错的选择。'),
(NULL,8,'2016-09-25','http://127.0.0.1:8080/img/doughnutImg/dg25.jpg&http://127.0.0.1:8080/img/doughnutImg/dg26.jpg&http://127.0.0.1:8080/img/doughnutImg/dg27.jpg','曾经听圈内人分享，有些珠宝商其实很喜欢那种事业有成的男性带着年轻貌美的姑娘来买货，因为很多时候他们会花大价钱为婚外情买单。但作为工作人员才知道，DR真的是从成立开始，就立志只为那些一生只爱一人的人去服务，这一点真的很打动人！这也是我为啥要跟大家安利这个品牌的原因。因为在这个浮躁的世界，还敢坚持真爱的品牌和人已经不多了，大家要珍惜啊哈哈哈'),
(NULL,9,'2018-04-25','http://127.0.0.1:8080/img/doughnutImg/dg28.jpg&http://127.0.0.1:8080/img/doughnutImg/dg29.jpg&http://127.0.0.1:8080/img/doughnutImg/dg30.jpg&http://127.0.0.1:8080/img/doughnutImg/dg31.jpg&http://127.0.0.1:8080/img/doughnutImg/dg32.jpg','这款是花冠六爪镶嵌的浪漫造型，很有欧洲皇冠的设计感，戴起来手感恰到好处，钻戒特别闪亮，显得手又长又白（开启疯狂自拍模式了哈哈哈）戴上钻戒真的会有想结婚的冲动，感觉自己就是个美美哒的小公主，在等意中人捧着小白盒来娶我！'),
(NULL,10,'2018-03-14','http://127.0.0.1:8080/img/doughnutImg/dg33.jpg&http://127.0.0.1:8080/img/doughnutImg/dg34.jpg&http://127.0.0.1:8080/img/doughnutImg/dg35.jpg&http://127.0.0.1:8080/img/doughnutImg/dg36.jpg&http://127.0.0.1:8080/img/doughnutImg/dg37.jpg','我之前有看过DR官网，对他们家钻戒挺有好感的，建议先在官网看款式跟评价，到店可以直接试戴体验，十分方便~而且全球的DR钻戒实体店价格都是统一的，像香港这边虽然有汇率，但是价格跟内地几乎差不多， 店员小姐姐解释说这是因为“真爱不打折”，听得我心服口服：一生只爱一人的相濡以沫，我能想到最浪漫的事，就是跟你一起慢慢变老~'),
(NULL,11,'2018-02-21','http://127.0.0.1:8080/img/doughnutImg/dg38.jpg&http://127.0.0.1:8080/img/doughnutImg/dg39.jpg&http://127.0.0.1:8080/img/doughnutImg/dg40.jpg','DR钻戒还有GAI证书跟定制服务哦，据说售后也是超级贴心的，终生保养，以小换大等等大家有机会都可以体验下~反正呢，求婚钻戒，我个人是比较看重品牌的爱情理念，特别是男士一生仅能定制一枚，听到简直就是霸道总裁爱上我！而且爱情嘛，就是要相伴到老才是稳稳的幸福，也希望各位宝宝也可以嫁给爱情，啾咪~'),
(NULL,12,'2017-06-30','http://127.0.0.1:8080/img/doughnutImg/dg41.jpg&http://127.0.0.1:8080/img/doughnutImg/dg42.jpg&http://127.0.0.1:8080/img/doughnutImg/dg43.jpg&http://127.0.0.1:8080/img/doughnutImg/dg44.jpg','传说中，雪花是落入凡间的精灵，能实现女孩浪漫的爱情愿望。这枚戒指，同样寄托着雪花般纯粹的浪漫。在我上大学期间，就已经听说过Darry Ring的理念“男士一生只能定制一枚”求婚钻戒从前慢，慢的是路途，现在慢，慢的是回忆。抛开世俗繁杂“用一生爱一人”是很美好的一件事，纯真而浪漫。'),
(NULL,13,'2018-03-13','http://127.0.0.1:8080/img/doughnutImg/dg45.jpg&http://127.0.0.1:8080/img/doughnutImg/dg46.jpg&http://127.0.0.1:8080/img/doughnutImg/dg47.jpg','最值得一提的是，购买求婚钻戒时需要绑定男士身份证，并且需要签订真爱协议，满满的仪式感是许多女孩中意的。购买记录一辈子都无法修改。真切的感受“一生唯一真爱”️,我所向往的是纯粹而又美好的爱情，而DR恰好符合我的爱情观。希望每个女孩子都能幸福～带上一生唯一的DR真爱钻戒。'),
(NULL,14,'2019-02-14','http://127.0.0.1:8080/img/doughnutImg/dg48.jpg&http://127.0.0.1:8080/img/doughnutImg/dg49.jpg&http://127.0.0.1:8080/img/doughnutImg/dg50.jpg&http://127.0.0.1:8080/img/doughnutImg/dg51.jpg&http://127.0.0.1:8080/img/doughnutImg/dg52.jpg','我试戴了My heart系列，中间是爱心形的主钻，旁边再配以碎钻围绕装饰，相信女生应该都没法抵抗，非常的适合求婚！而且My heart系列的造型都比较大，你懂得哈哈，一拿出来特别闪耀，冲击波很强~希望每个女生都能遇到愿得一人心，白首不分离的爱情，'),
(NULL,15,'2018-06-17','http://127.0.0.1:8080/img/doughnutImg/dg52.jpg&http://127.0.0.1:8080/img/doughnutImg/dg53.jpg&http://127.0.0.1:8080/img/doughnutImg/dg54.jpg&http://127.0.0.1:8080/img/doughnutImg/dg55.jpg&http://127.0.0.1:8080/img/doughnutImg/dg56.jpg','💕今夏是充满爱的季节～我很喜欢的一句话“一生只爱一人，你敢吗”，这是来自@DR钻戒DarryRing💍的真爱使命，这种品牌信仰深深打动着我，虽然爱情与他人无关，但是DR品牌用真爱使命用力去呵护你的爱情💓，这也就是DR全球首创身份🆔实名制，严格限定每位男士一生仅能定制一枚钻戒💍，赠予一生唯一真爱的～'),
(NULL,16,'2019-01-01','http://127.0.0.1:8080/img/doughnutImg/dg57.jpg&http://127.0.0.1:8080/img/doughnutImg/dg58.jpg&http://127.0.0.1:8080/img/doughnutImg/dg66.jpg','💕在火热的七夕节，去了世贸天阶的DR钻戒💍专柜挑选心仪的戒指，我很喜欢素戒，当场看到有两款素戒（图3⃣️ ）设计简约大气，职场佩戴凸显品味非凡，我还试了下叠戴法，两件搭配一起又是别样风格，简约带点时尚感，打破单调，更适合有个性的女孩子～图3⃣️中那款扭花戒指，细节处处理的很好，中间一颗闪钻打破单调，多了几分高贵，配上纤细手指分外美丽，抬手举足间彰显个人魅力～'),
(NULL,17,'2018-05-01','http://127.0.0.1:8080/img/doughnutImg/dg59.jpg&http://127.0.0.1:8080/img/doughnutImg/dg60.jpg&http://127.0.0.1:8080/img/doughnutImg/dg61.jpg&http://127.0.0.1:8080/img/doughnutImg/dg62.jpg','💎DR钻戒My Heart系列因为超级完美的设计理念，在2015芭沙珠宝夜宴荣获“最浪漫创意珠宝奖”，My Heart系列真的太适合七夕了，心型钻戒独特设计，寓意紧锁恋人之心，一心一意，一生一世~这个系列整体都非常大气和奢华，为了适合不同人群，特意将心型钻戒戒面的SIZE设计 了不同的大小，可以配合不同场合配戴，可奢华、可优雅~'),
(NULL,18,'2015-05-01','http://127.0.0.1:8080/img/doughnutImg/dg63.jpg&http://127.0.0.1:8080/img/doughnutImg/dg64.jpg&http://127.0.0.1:8080/img/doughnutImg/dg65.jpg&http://127.0.0.1:8080/img/doughnutImg/dg67.jpg','💕每个女生都希望一生有一次仅一次坚贞不渝的爱情，钻石💎是纯洁爱情的代表，钻石纯洁透明经久不变，而钻戒则像情人炯炯有神的眼睛注视着你，表示对爱情的永恒追求和忠贞。每一颗钻石都取之不易,DR钻戒每一颗钻石都严格筛选，经过顶级匠师细心打磨与切割，使每一颗💎大闪闪的活彩熠熠发光~'),
(NULL,19,'2019-03-25','http://127.0.0.1:8080/img/doughnutImg/dg68.jpg&http://127.0.0.1:8080/img/doughnutImg/dg69.jpg&http://127.0.0.1:8080/img/doughnutImg/dg70.jpg&http://127.0.0.1:8080/img/doughnutImg/dg72.jpg','为了婚礼，我和男友可以说是忙活了小半年！硕大的南京城，拍婚纱照、找酒店、安排婚礼当天仪式……简直累死宝宝了。其中选婚戒比较头疼，毕竟以前我们也没接触过。但想到一辈子也就结一次婚，我真是把南京有点名气的珠宝店都走的差不多了！终于在南京德基广场选定了DR家的钻戒，今天分享些心得给大家，希望对各位小红薯有帮助。'),
(NULL,20,'2019-02-20','http://127.0.0.1:8080/img/doughnutImg/dg71.jpg&http://127.0.0.1:8080/img/doughnutImg/dg73.jpg&http://127.0.0.1:8080/img/doughnutImg/dg74.jpg&http://127.0.0.1:8080/img/doughnutImg/dg75.jpg&http://127.0.0.1:8080/img/doughnutImg/dg76.jpg','前阵子张雨绮大大在小红书上说，1克拉以下的钻戒不值钱，一石激起千层浪。当然对于土豪来说，克数大是挺好，但对于我们一般小透明，一克拉以上还是贵了点。更重要的是，抛开级别谈克拉，绝对是钻石小白才会干的事！'),
(NULL,21,'2018-07-07','http://127.0.0.1:8080/img/doughnutImg/dg77.jpg&http://127.0.0.1:8080/img/doughnutImg/dg78.jpg&http://127.0.0.1:8080/img/doughnutImg/dg79.jpg','这么说吧，颜色、净度、切工都很差的1克拉钻石一定不如80分各方面级别一流的钻石值得买。所以钻石真的不是越大就越好，钻石4C标准要同时看，才是正确的判断方法。所以我最后选了DR家#FOREVER系列#的一款40分钻戒，小2W，简约大气，最重要是上手后钻石显得还挺大哈哈哈~ '),
(NULL,22,'2019-06-06','http://127.0.0.1:8080/img/doughnutImg/dg80.jpg&http://127.0.0.1:8080/img/doughnutImg/dg81.jpg&http://127.0.0.1:8080/img/doughnutImg/dg82.jpg','大家千万别觉得这句废话哈哈。因为我自己之前在选钻戒的时候，也是到处咨询姐妹们的意见。直到我姐来了一句，你这么纠结干嘛，婚是你来结，你喜欢什么款式，喜欢什么寓意才重要啊！是啊，婚戒这种东西本来就是很私人的物品，难道不该找最能代表我和男友爱情观的戒指么！而DR主打的男士一生仅能定制一枚，又是绑定身份证，又是签真爱协议，仪式感足足，我们逛了那么多珠宝店看了这家后就果断PICK! ');

CREATE TABLE dr_ringproduct(
  id INT PRIMARY KEY AUTO_INCREMENT,
  rpid INT,
  title VARCHAR(128),
  img VARCHAR(64),
  price DECIMAL(10,2),
  saleout INT,
  onshelfttime VARCHAR(32)
);

INSERT INTO dr_ringproduct VALUES
(NULL,1,'PRINCESS系列宠爱','http://127.0.0.1:8080/img/ringImg/07.png',4099,13,'2017-09-06'),
(NULL,2,'SWEETIE系列简约款','http://127.0.0.1:8080/img/ringImg/01.png',1399,34,'2015-04-09'),
(NULL,3,'PRINCESS系列奢华款 20分 H色','http://127.0.0.1:8080/img/ringImg/71.jpg',95799,489,'2019-04-23'),
(NULL,4,'TRUE LOVE系列 美满款 10分 H色','http://127.0.0.1:8080/img/ringImg/06.jpg',3879,23,'2018-06-06'),
(NULL,5,'SWEETIE系列一心相恋 8分 I-J色','http://127.0.0.1:8080/img/ringImg/03.jpg',3039,123,'2017-03-19'),
(NULL,6,'PRINCESS系列简爱','http://127.0.0.1:8080/img/ringImg/11.png',4799,176,'2018-04-25'),
(NULL,7,'WEDDING系列浪漫捧花 8分 I-J色','http://127.0.0.1:8080/img/ringImg/08.jpg',4339,113,'2019-04-06'),
(NULL,8,'SWEETIE系列心心相依 10分 I-J色','http://127.0.0.1:8080/img/ringImg/04.jpg',3249,53,'2018-04-05'),
(NULL,9,'SWEETIE系列心心相依 5分 H色','http://127.0.0.1:8080/img/ringImg/02.jpg',2279,84,'2016-02-19'),
(NULL,10,'MY HEART系列心相悦 13分 H色','http://127.0.0.1:8080/img/ringImg/09.jpg',4409,6,'2015-02-06'),
(NULL,11,'WEDDING系列幸福捧花 8分 H色','http://127.0.0.1:8080/img/ringImg/12.jpg',5049,326,'2018-10-15'),
(NULL,12,'MY HEART系列 倾心 13分 H色','http://127.0.0.1:8080/img/ringImg/10.jpg',4709,26,'2016-03-15'),
(NULL,13,'PRINCESS系列唯爱','http://127.0.0.1:8080/img/ringImg/13.jpg',5099,286,'2019-07-01'),
(NULL,14,'PRINCESS系列花冠','http://127.0.0.1:8080/img/ringImg/14.jpg',5499,51,'2018-03-13'),
(NULL,15,'WEDDING系列幸福捧花（升级版） 9分 F-G色','http://127.0.0.1:8080/img/ringImg/15.jpg',5519,87,'2017-04-28'),
(NULL,16,'JUSTYOU系列挚爱款 18分 I-J色','http://127.0.0.1:8080/img/ringImg/18.jpg',6159,233,'2016-09-12'),
(NULL,17,'TRUELOVE系列勇敢爱 5分 H色','http://127.0.0.1:8080/img/ringImg/16.jpg',5729,94,'2016-03-18'),
(NULL,18,'PRINCESS系列至爱','http://127.0.0.1:8080/img/ringImg/19.jpg',6299,153,'2014-07-12'),
(NULL,19,'FOREVER系列经典款 18分 H色','http://127.0.0.1:8080/img/ringImg/17.jpg',6019,194,'2015-03-12'),
(NULL,20,'DRPARIS52°系列浪漫款 30分 H色','http://127.0.0.1:8080/img/ringImg/44.jpg',20699,928,'2016-06-25'),
(NULL,21,'JUSTYOU系列简奢款 18分 H色','http://127.0.0.1:8080/img/ringImg/23.jpg',7419,172,'2018-12-19'),
(NULL,22,'BELIEVE系列 简奢款 17分 I-J色','http://127.0.0.1:8080/img/ringImg/20.jpg',6389,193,'2015-04-19'),
(NULL,23,'D-DESTINY系列经典款钻戒','http://127.0.0.1:8080/img/ringImg/21.jpg',6520,82,'2016-11-19'),
(NULL,24,'FOREVER系列简奢款 18分 H色','http://127.0.0.1:8080/img/ringImg/24.jpg',7519,190,'2018-01-19'),
(NULL,25,'TRUELOVE系列奢华款 30分 G色','http://127.0.0.1:8080/img/ringImg/47.jpg',22269,111,'2019-03-29'),
(NULL,26,'TRUELOVE系列坚定爱 17分 I-J色','http://127.0.0.1:8080/img/ringImg/26.jpg',8089,102,'2018-08-02'),
(NULL,27,'TRUELOVE系列典雅 17分 I-J色','http://127.0.0.1:8080/img/ringImg/27.jpg',9389,47,'2018-03-22'),
(NULL,28,'WEDDING系列爱的捧花 18分 F-G色','http://127.0.0.1:8080/img/ringImg/29.jpg',9879,77,'2016-02-27'),
(NULL,29,'FOREVER系列甜蜜款 30分 F色','http://127.0.0.1:8080/img/ringImg/33.jpg',14449,36,'2017-04-29'),
(NULL,30,'WEDDING系列挚爱款 20分 F-G色','http://127.0.0.1:8080/img/ringImg/34.jpg',14599,48,'2017-05-23'),
(NULL,31,'BELIEVE系列浪漫款 23分 H色','http://127.0.0.1:8080/img/ringImg/30.jpg',10139,100,'2016-09-27'),
(NULL,32,'PRINCESS系列爱侣','http://127.0.0.1:8080/img/ringImg/22.jpg',7399,122,'2019-11-19'),
(NULL,33,'PRINCESS系列呵护 4分 H色','http://127.0.0.1:8080/img/ringImg/32.jpg',12109,33,'2017-04-08'),
(NULL,34,'FOREVER系列奢华款 23分 I-J色','http://127.0.0.1:8080/img/ringImg/28.jpg',9519,67,'2017-02-22'),
(NULL,35,'PRINCESS系列圆满','http://127.0.0.1:8080/img/ringImg/35.jpg',15899,61,'2017-05-29'),
(NULL,36,'FOREVER系列简爱款 30分 D色','http://127.0.0.1:8080/img/ringImg/36.jpg',17469,67,'2017-06-19'),
(NULL,37,'JUSTYOU系列典雅款 30分 G色','http://127.0.0.1:8080/img/ringImg/37.jpg',17819,68,'2017-06-29'),
(NULL,38,'TRUELOVE系列简奢款 30分 D色','http://127.0.0.1:8080/img/ringImg/38.jpg',17969,89,'2017-09-29'),
(NULL,39,'BELIEVE系列经典款 10分 I-J色','http://127.0.0.1:8080/img/ringImg/05.jpg',3629,153,'2019-03-05'),
(NULL,40,'WITHYOU系列挚爱相随 50分 D色','http://127.0.0.1:8080/img/ringImg/68.jpg',53699,2311,'2015-04-02'),
(NULL,41,'JUSTYOU系列浪漫款 30分 D色','http://127.0.0.1:8080/img/ringImg/39.png',18369,93,'2018-09-23'),
(NULL,42,'WEDDING系列奢华款 30分 G色','http://127.0.0.1:8080/img/ringImg/41.png',19359,656,'2017-03-03'),
(NULL,43,'FOREVER系列公主款 50分 H色','http://127.0.0.1:8080/img/ringImg/45.jpg',21199,1123,'2015-03-25'),
(NULL,44,'FOREVER系列挚爱款 50分 H色','http://127.0.0.1:8080/img/ringImg/50.jpg',23899,1111,'2014-08-22'),
(NULL,45,'FOREVER系列纯爱款 30分 D色','http://127.0.0.1:8080/img/ringImg/46.jpg',21469,321,'2019-03-25'),
(NULL,46,'LOVELINE系列经典款 30分 D色','http://127.0.0.1:8080/img/ringImg/40.png',18529,456,'2017-02-11'),
(NULL,47,'WEDDING系列 新娘捧花 15分 I-J色','http://127.0.0.1:8080/img/ringImg/25.jpg',8069,112,'2019-02-03'),
(NULL,48,'MYHEART系列浪漫款 35分 H色','http://127.0.0.1:8080/img/ringImg/48.png',22419,101,'2019-04-12'),
(NULL,49,'MYHEART系列简奢款 35分 H色','http://127.0.0.1:8080/img/ringImg/42.jpg',19419,626,'2016-02-22'),
(NULL,50,'WITHYOU系列守护 30分 D色','http://127.0.0.1:8080/img/ringImg/60.jpg',40699,26,'2019-02-15'),
(NULL,51,'SWEETIE系列心蓝 23分 F-G色','http://127.0.0.1:8080/img/ringImg/31.jpg',11459,21,'2017-03-31'),
(NULL,52,'DRPARIS52°系列简奢款 30分 H色','http://127.0.0.1:8080/img/ringImg/51.jpg',25199,2222,'2016-02-27'),
(NULL,53,'LOVELINE系列简奢款 30分 D色','http://127.0.0.1:8080/img/ringImg/52.jpg',25769,1103,'2017-12-01'),
(NULL,54,'WITHYOU系列相许 30分 D色','http://127.0.0.1:8080/img/ringImg/67.jpg',52799,167,'2019-03-23'),
(NULL,55,'江若琳同款TRUELOVE系列浪漫款 200分 D色','http://127.0.0.1:8080/img/ringImg/74.jpg',479999,589,'2014-03-05'),
(NULL,56,'MYHEART系列奢华款 50分 H色','http://127.0.0.1:8080/img/ringImg/55.jpg',28849,1247,'2017-12-21'),
(NULL,57,'LOCKFOREVER系列心·锁永恒 40分 H色','http://127.0.0.1:8080/img/ringImg/43.jpg',19599,888,'2016-03-14'),
(NULL,58,'BELIEVE系列典雅 50分 G色','http://127.0.0.1:8080/img/ringImg/56.jpg',29319,213,'2018-12-21'),
(NULL,59,'WITHYOU系列相拥 30分 D色','http://127.0.0.1:8080/img/ringImg/69.jpg',53899,189,'2019-01-01'),
(NULL,60,'DRPARIS52°系列挚爱款 50分 H色','http://127.0.0.1:8080/img/ringImg/64.jpg',46899,222,'2015-6-28'),
(NULL,61,'MYHEART系列典雅款 50分 D色','http://127.0.0.1:8080/img/ringImg/57.jpg',31699,356,'2019-02-28'),
(NULL,62,'PRINCESS系列简奢款 18分 H色','http://127.0.0.1:8080/img/ringImg/58.jpg',39259,321,'2019-06-02'),
(NULL,63,'WITHYOU系列厮守 30分 D色','http://127.0.0.1:8080/img/ringImg/59.jpg',40299,456,'2019-07-07'),
(NULL,64,'MYHEART系列心动钻戒 35分 H色','http://127.0.0.1:8080/img/ringImg/49.jpg',23819,881,'2014-05-12'),
(NULL,65,'WITHYOU系列一生相伴 50分 D色','http://127.0.0.1:8080/img/ringImg/62.jpg',42099,891,'2019-02-01'),
(NULL,66,'MYHEART系列守护款 70分 H色','http://127.0.0.1:8080/img/ringImg/63.jpg',44049,222,'2015-03-12'),
(NULL,67,'MYHEART系列简爱款 50分 D色','http://127.0.0.1:8080/img/ringImg/54.jpg',27399,542,'2018-01-04'),
(NULL,68,'WITHYOU系列稀世恋人 30分 D色','http://127.0.0.1:8080/img/ringImg/65.jpg',50299,1237,'2018-3-21'),
(NULL,69,'WITHYOU系列稀世恋人 30分 D色','http://127.0.0.1:8080/img/ringImg/66.jpg',50799,207,'2019-02-23'),
(NULL,70,'WITHYOU系列挚爱相依 30分 D色','http://127.0.0.1:8080/img/ringImg/61.jpg',40999,1223,'2019-01-19'),
(NULL,71,'LOVELINE系列奢华款 100分 D色','http://127.0.0.1:8080/img/ringImg/72.jpg',157059,189,'2019-05-05'),
(NULL,72,'DRPARIS52°系列奢华款 30分 H色','http://127.0.0.1:8080/img/ringImg/53.jpg',27299,444,'2018-03-31'),
(NULL,73,'ONLY系列相拥 20分 D色','http://127.0.0.1:8080/img/ringImg/70.jpg',73899,889,'2019-02-01'),
(NULL,74,'江若琳同款TRUELOVE系列浪漫款 200分 D色','http://127.0.0.1:8080/img/ringImg/73.jpg',479999,589,'2014-03-05');