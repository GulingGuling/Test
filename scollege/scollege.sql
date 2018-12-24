/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50157
Source Host           : localhost:3306
Source Database       : scollege

Target Server Type    : MYSQL
Target Server Version : 50157
File Encoding         : 65001

Date: 2018-02-28 20:20:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activity`
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `activity_title` varchar(225) DEFAULT NULL,
  `activity_content` text,
  `activity_date` date DEFAULT NULL,
  `activity_address` varchar(300) DEFAULT NULL,
  `activity_equip` varchar(300) DEFAULT NULL,
  `activity_money` double DEFAULT NULL,
  `activity_type` int(11) DEFAULT '1' COMMENT '1:社团活动 2：校园活动',
  `activity_flag` int(11) DEFAULT '1' COMMENT '1：待审批 2：审批通过',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '2', '关于举行羽毛球比赛的活动通知', '关于举行羽毛球比赛的活动通知', '2018-03-10', '羽毛球馆', '羽毛球拍', '1000', '1', '2');
INSERT INTO `activity` VALUES ('2', '3', '关于举行篮球比赛的通知', '关于举行篮球比赛的通知', '2018-03-10', '篮球馆', '篮球', '500', '1', '2');
INSERT INTO `activity` VALUES ('3', '3', '关于举行足球比赛的通知', '关于举行足球比赛的通知', '2018-03-11', '足球场', '足球', '300', '1', '2');
INSERT INTO `activity` VALUES ('4', '3', '关于举行诗歌朗诵比赛的通知', '关于举行诗歌朗诵比赛的通知', '2018-03-14', '体育馆', '话筒、音响', '800', '1', '2');
INSERT INTO `activity` VALUES ('5', '3', '关于举行跆拳道比赛的通知', '关于举行跆拳道比赛的通知', '2018-03-18', '跆拳道馆', '服装', '2000', '1', '2');
INSERT INTO `activity` VALUES ('6', '1', '关于举办校园踏青活动的通知', '关于举办校园踏青活动的通知', '2018-03-25', '植物园', '数码相机', '2500', '2', '2');
INSERT INTO `activity` VALUES ('7', '1', '关于举办献爱心助学的活动通知', '关于举办献爱心助学的活动通知', '2018-03-11', '食堂前', '笔记本', '500', '2', '2');
INSERT INTO `activity` VALUES ('8', '1', '关于举办电影欣赏的凑团活动', '关于举办电影欣赏的凑团活动', '2018-03-22', '星空影院', '3D眼镜', '200', '2', '2');
INSERT INTO `activity` VALUES ('9', '1', '关于举办象棋大赛的活动通知', '关于举办象棋大赛的活动通知', '2018-03-20', '图书馆前', '象棋', '2000', '2', '2');
INSERT INTO `activity` VALUES ('10', '1', '关于举办美食大赛的活动通知', '关于举办美食大赛的活动通知', '2018-03-14', '二楼食堂', '计时器', '800', '2', '2');
INSERT INTO `activity` VALUES ('11', '14', '举办第一次活动', '带酒肉，吃饭&lt;br /&gt;', '2018-09-01', '食堂', '方太厨具', '500', '1', '2');

-- ----------------------------
-- Table structure for `college`
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `college_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_name` varchar(50) NOT NULL,
  `college_type` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `create_date` date DEFAULT NULL,
  `college_persons` int(11) DEFAULT '0',
  `college_money` double DEFAULT '0',
  `college_pic` varchar(225) DEFAULT NULL,
  `college_note` text,
  `college_plan` text,
  `college_flag` int(11) DEFAULT '1' COMMENT '1：待审批 2：审批通过',
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', '缤纷七彩夺天轮滑社', '体育竞技', '3', '2018-03-09', '50', '20', '1.jpg', '缤纷七彩夺天轮滑社，初步规划人数为20人，以5人为一组进行经验交流、技术训练。', '初步规划人数为20人，以5人为一组进行经验交流、技术训练。', '2');
INSERT INTO `college` VALUES ('2', '天马飞羽羽毛球社团', '体育竞技', '2', '2018-03-09', '52', '5', '2.jpg', '天马飞羽羽毛球社团，初步实现建团招员', '初步实现建团招员', '2');
INSERT INTO `college` VALUES ('3', '破碎虚空篮球社社团', '体育竞技', '3', '2018-03-09', '30', '5', '3.jpg', '破碎虚空篮球社社团，初步实现建团招员', '初步实现建团招员', '2');
INSERT INTO `college` VALUES ('4', '大爱无边青年志愿社团', '人文关怀', '3', '2018-03-09', '80', '0', '4.jpg', '大爱无边青年志愿社团，初步实现建团招员', '初步实现建团招员', '2');
INSERT INTO `college` VALUES ('5', '电脑爱好者协会社团', '数码技术', '3', '2018-03-09', '62', '10', '5.jpg', '电脑爱好者协会社团，初步实现建团招员', '初步实现建团招员', '2');
INSERT INTO `college` VALUES ('6', '踏雪无痕足球社社团', '体育竞技', '3', '2018-03-09', '36', '10', '6.jpg', '踏雪无痕足球社社团，初步实现建团招员', '初步实现建团招员', '2');
INSERT INTO `college` VALUES ('7', '以柔克刚太极无边社团', '修身保健', '3', '2018-03-09', '50', '15', '7.jpg', '以柔克刚太极无边社团，初步实现建团招员', '初步实现建团招员', '2');
INSERT INTO `college` VALUES ('8', '莎士比亚浪漫文怀诗歌社团', '陶冶情操', '3', '2018-03-09', '50', '5', '8.jpg', '莎士比亚浪漫文怀诗歌社团，初步实现建团招员', '初步实现建团招员', '2');
INSERT INTO `college` VALUES ('9', '国际交融外语交流社团', '增长见闻', '3', '2018-03-09', '100', '20', '9.jpg', '国际交融外语交流社团，初步实现建团招员', '初步实现建团招员', '2');
INSERT INTO `college` VALUES ('10', '嗷大猫表情创作社团', '业余爱好', '13', '2018-03-22', '50', '100', '20170822143906483.jpg', null, '先招募几个活动能手。', '1');
INSERT INTO `college` VALUES ('11', '美食社团', '业余爱好', '14', '2018-03-22', '88', '60', '20170822154135498.jpg', null, '收集食材，准备厨具，制作美食', '2');

-- ----------------------------
-- Table structure for `equip`
-- ----------------------------
DROP TABLE IF EXISTS `equip`;
CREATE TABLE `equip` (
  `equip_id` int(11) NOT NULL AUTO_INCREMENT,
  `equip_name` varchar(225) DEFAULT NULL,
  `equip_note` text,
  PRIMARY KEY (`equip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equip
-- ----------------------------
INSERT INTO `equip` VALUES ('1', '帐篷', '');
INSERT INTO `equip` VALUES ('2', '数码相机', '');
INSERT INTO `equip` VALUES ('3', '旗帜', '');
INSERT INTO `equip` VALUES ('4', '高脚架', '');
INSERT INTO `equip` VALUES ('5', '方太厨具', '制作美食的');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `member_reason` varchar(300) DEFAULT NULL,
  `member_hobby` varchar(300) DEFAULT NULL,
  `member_flag` int(11) DEFAULT '1' COMMENT '1：待审批 2：审批通过',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('2', '1', '2', '2018-03-09 17:22:35', '技术学习', '轮滑、羽毛球、排球', '1');
INSERT INTO `member` VALUES ('3', '2', '4', '2018-03-09 21:36:40', '喜欢羽毛球', '羽毛球', '1');
INSERT INTO `member` VALUES ('4', '2', '13', '2018-03-22 14:36:17', '从小就爱好羽毛球', '羽毛球等各种球类', '1');
INSERT INTO `member` VALUES ('5', '5', '14', '2018-03-22 15:40:39', '爱好编程', '学习，运动', '1');
INSERT INTO `member` VALUES ('6', '11', '13', '2018-03-22 15:45:43', '爱好吃', '好吃', '2');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `news_title` varchar(225) DEFAULT NULL,
  `news_content` text,
  `news_picture` varchar(225) DEFAULT NULL,
  `news_date` datetime DEFAULT NULL,
  `news_type` int(11) DEFAULT '1' COMMENT '1:社团新闻 2：校园新闻',
  `news_flag` int(11) DEFAULT '1' COMMENT '1：待审批 2：审批通过',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '1', '宋远旺：人大毕业去阿里——我到西藏寻找起飞跑道', '原标题：人大毕业去阿里，一名国防生的出发与到达 我到西藏寻找起飞跑道（中国梦·我的梦·毕业生就业相册）\r\n \r\n开栏的话\r\n \r\n      又到毕业时。\r\n \r\n      就业不易，机会在哪里？择业挺难，怎么择才踏实？怎么为心中的梦，找到一条脚下的路？\r\n \r\n      我们选择几个毕业生，还有帮扶就业的人，说说他们的就业、他们的故事、他们的拼搏。\r\n \r\n      每个人的拼搏和努力，都是实现梦想的有力支撑；每个人的梦想汇集，就是中国梦的有机构成。\r\n \r\n      翻阅就业相册，从他们人生的选择和留影中，希望能点亮更多的精彩。\r\n \r\n【人物】\r\n \r\n      宋远旺 中国人民大学2007级武警国防生，现服役于武警西藏总队\r\n \r\n     “学院的战友们都不叫我的姓名，直接称呼我为‘阿里’。渐渐的，我开始因‘阿里’两字而骄傲。”\r\n \r\n      5月5日凌晨，从阿里到拉萨，在经过36个小时大巴的长途颠簸之后，我思维停滞，面无表情地歪靠在座位上。\r\n \r\n      手机的震动起初并没有引起我多大的注意。接起电话，是战友宽哥的声音：“你小子被调到拉萨了，飞机上跑道了！”\r\n \r\n     “飞机上跑道”是我的说法，他们问我为什么毕业申请来西藏的时候，我跟他们开玩笑说了一句：“我来找属于我这架飞机的跑道。”\r\n', null, '2018-03-09 23:08:44', '2', '2');
INSERT INTO `news` VALUES ('3', '1', '资助篇：把爱传递，让希望之花绽放——探访我校2013级新生魏', '颠簸了一整天，回到家已经困得不行，但总觉得必须要写点什么。说实话，真的要感谢学校的“人大使者家乡行”这个活动，才能让我内心有如此的震撼与感动。\r\n \r\n魏杰，女，湖南省常德市石门县太平镇仙台村人，我校2013级农业与农村发展学院农林经济管理专业新生。家庭经济特别困难，父亲因长期在建筑工地劳动患上了严重的肺病，爷爷患上眼疾直至现在已几乎双目失明，家里的土砖房也曾两次在暴雨中倒塌,现借居其叔叔家。当我从学校得知了魏杰的情况后,我第一时间便决定要前往魏杰家探望，就因为我们有着湖南石门人和石门县第一中学毕业生的共同身份。\r\n \r\n虽然我和魏杰同生活在石门县，但当我给魏杰妈妈打电话得知车开走两个小时后还要走两个小时山路的时候，我的心还是不由得抽了一下，不过当老远看见魏杰妈妈顶着烈日在四十度的高温酷暑下向我挥手时，我却为刚才的念头而不好意思了。我们随魏杰妈妈一路前行，山路也变得越来越窄，还十分崎岖不平，一旁傍着大山，另一旁傍着山崖。一路上，魏杰妈妈给我们说了很多，说魏杰是如何懂事如何爱学习，说魏杰爸爸的病，说对学校的感谢。言语间，我发现魏杰妈妈脸上始终洋溢着笑容，我知道这笑容是因为她有一个令她骄傲的女儿，我知道这笑容是永远不会为生活打磨所消失的。我们一路走到山的最里面，停在了半山腰间的一个土坯房前，这就是魏杰的家了。看到我们的到来，魏杰的爷爷、爸爸和其他亲人都十分的热情，连魏杰四岁的妹妹看见我们也一个劲儿叫姐姐。魏杰的爷爷十分担心魏杰离家那么远到北京上学会遇到很多麻烦，由于他们村比较偏僻,电脑很少而且上网不便，所以他们对学校各方面的情况都不是很了解。此时,我便深切体会到作为“人大使者家乡行”活动的志愿者开展此次探访活动的重要性。\r\n \r\n我的探访有两个目的,一方面，看望魏杰的家人,向他们传达来自学校的问候。另一方面，向他们介绍学校各方面的情况，包括校情校史、校园文化、国际交流、学生奖励与资助政策等方面的情况及学校有关帮扶家庭经济困难学生成长、成才的机制。针对魏杰家的情况，我重点介绍了学校的学生资助工作体系，告诉魏杰家人可以在新生报到现场通过“绿色通道”入学，这样就可以先报到入学，后再通过“国家助学贷款”缴纳学费；入学后的9月份学校就会启动对家庭经济困难学生的助学金评定工作，像魏杰这样的情况应该能够拿到5000元的助学金；魏杰还可以开学时申请1000元的奖励性贷学金，并向学校申请利用课余时间开展校内勤工助学，此外，她还可以参加学校依托家庭经济困难学生社团自强社开展的一系列技能提升活动。当得知这些资助项目能够保障魏杰在校的学习和生活，使其在轻松、快乐的环境中发展成才时，魏杰的家人心中的不安终于消散，脸上的笑容更加的灿烂了。最后，我把学校托我带给魏杰来学校报到的路费送到魏杰妈妈手中时，我真的看到了魏杰妈妈发红的眼眶。\r\n \r\n因为回家的路比较远，所以在魏杰家待了一个多小时就不得不起身返程了。走的时候，他们全家人都沿着山路送了我好远。走的时候，看着这一路崎岖的山路，这魏杰一家人走了无数遍的山路，内心可以说是五味杂陈，有心酸，有震撼，有感动，有开心…\r\n \r\n累了一整天，晒了一整天，但是这一天我收获的远远要比待在家里要来得多。我高兴魏杰不会因为经济原因上不了学，我庆幸自己体会到了幸福的来之不易。嗯，今天是充满着正能量的一天！\r\n', null, '2018-03-09 23:08:44', '2', '2');
INSERT INTO `news` VALUES ('5', '1', '大学生创业最缺什么：资金 经验 机会', '今年高校毕业生数量继续向上攀升，达到727万人。化解就业压力，创业成为新方向。创业不易，对于刚刚走出校门、没有工作经验、没有资金积累的高校毕业生，尤其如此。据调查，尽管国家多次出台政策鼓励创业就业，但近年来我国高校毕业生创业率一直在1%左右徘徊，低于发达国家，其中创业成功的几率仅约10%。创业，高校毕业生缺些什么？\r\n \r\n缺资金\r\n \r\n期待小额担保贷款覆盖面更广，有更多投资者与大学生创业者无缝对接\r\n \r\n“缺什么？钱，最先感到缺的就是钱。”不少创业大学生对此感受深刻。\r\n \r\n创办企业离不开资金支持。注册企业、寻找场地、开拓市场、提供产品和服务，处处需要钱。没有多少积蓄的大学生，去哪儿找钱？\r\n \r\n近年，国家出台了小额担保贷款政策支持高校毕业生创业，今年再次强调简化反担保手续，延长担保责任期限。不过，多数创业者表示自己及身边的同学们很少有去申请的。\r\n \r\n目前针对高校毕业生的小额担保贷款政策，主要起到一种引导、鼓励的作用，肯定不能满足所有创业大学生的资金需求。初次创业缺资金是正常的，一方面要鼓励各类投资者与高校毕业生创业者更加积极、无障碍地对接，另一方面也要认识到，能否拿到资金是对创业者的重要考验，创业者要对资金获取及管理有更深刻的认识。\r\n \r\n缺经验\r\n \r\n推广创业培训让大学生创业者少走弯路，先就业再创业可以有效积累经验\r\n \r\n一直在学校读书，忽然出来当“小老板”，每个创业的大学生都缺少经验。\r\n \r\n人力资源和社会保障部就业促进司有关负责人表示，今年的大学生创业引领计划中专门强调，要建立健全青年创业辅导制度，从企业家、职业经理人、天使投资人当中选拔一批青年创业导师。不过，各地的企业家资源不太均衡，类似于“导师带徒”的制度在浙江等企业家数量多的地区更易推开，在中西部及中小城市则有难度。\r\n \r\n绝大多数大学生对企业运营缺少了解，创业时肯定会觉得缺经验。现在，各地提供一些培训和指导有其积极意义，但要认识到，真正创业成功的人都不是别人帮出来的。\r\n \r\n缺机会\r\n \r\n简政放权有利于营造良好的创业氛围，大学生自身也要做好自我评估和市场调研\r\n \r\n想创业，苦于找不到机会——许多高校毕业生这么说。\r\n \r\n有创业的兴趣和勇气，但不知道创业方向在哪里——这既成为高校毕业生们迈出创业步伐的障碍，也导致一些初次创业者创业失败。\r\n', null, '2018-03-09 23:08:44', '2', '2');
INSERT INTO `news` VALUES ('6', '2', '新年春羽毛球比赛涌现出大批新星', '新年春羽毛球比赛涌现出大批新星', null, '2018-03-09 20:54:45', '1', '2');
INSERT INTO `news` VALUES ('7', '3', '新年春轮滑社比赛涌现出大批新星', '新年春轮滑社比赛涌现出大批新星2', null, '2018-03-09 20:55:08', '1', '2');
INSERT INTO `news` VALUES ('8', '3', '新年春篮球社比赛涌现出大批新星', '新年春篮球社比赛涌现出大批新星', null, '2018-03-09 20:56:27', '1', '2');
INSERT INTO `news` VALUES ('9', '3', '新年春太极拳社团比赛涌现出大批新星', '新年春太极拳社团比赛涌现出大批新星', null, '2018-03-09 20:57:17', '1', '2');
INSERT INTO `news` VALUES ('10', '3', '新年春志愿者社团人文关怀送温暖涌现出大批志愿者', '新年春志愿者社团人文关怀送温暖涌现出大批志愿者', null, '2018-03-09 20:57:59', '1', '2');

-- ----------------------------
-- Table structure for `picnews`
-- ----------------------------
DROP TABLE IF EXISTS `picnews`;
CREATE TABLE `picnews` (
  `picnews_id` int(11) NOT NULL AUTO_INCREMENT,
  `picnews_title` varchar(225) DEFAULT NULL,
  `picnews_picture` varchar(225) DEFAULT NULL,
  `picnews_content` text,
  `picnews_admin` varchar(50) DEFAULT NULL,
  `picnews_date` datetime DEFAULT NULL,
  `picnews_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`picnews_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picnews
-- ----------------------------
INSERT INTO `picnews` VALUES ('1', '靳诺书记开讲新生入学教育第一课——“规划成就人生：如何迈好', '1.jpg', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;9月12日下午，2013级本科新生齐聚世纪馆，开始聆听他们进入人民大学的第一课。在这样一个特殊的课堂上，校党委书记靳诺教授以“规划成就人生”为主题，为同学们解读大学使命、明确发展要求、提供成长建议，帮助每一位同学迈好大学生活的第一步。&lt;br /&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第一课开讲之前，靳诺书记为六名2013级新生入学教育特约辅导员代表颁发了聘书。2013级新生入学教育特约辅导员中既有历年的“毕业十星”，又有吴玉章奖学金的获得者，在这些优秀的人大学子中，有的继续留校任教，有的即将出国留学，还有的将继续在人大攻读硕士、博士学位。本学期，学校将邀请这些特约辅导员担任嘉宾，通过举办系列专场“面对面”经验分享活动，解答新生疑问，促进朋辈互助，推动新生入学辅导工作的深入开展。', '张校长', '2018-03-09 23:08:44', '1');
INSERT INTO `picnews` VALUES ('2', '“大学学习生活导航”专题讲座服务新生 全面推进入学教育', '2.jpg', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;校园安全宣讲部分，北京市公安局治安总队公共秩序管理支队张国海队长、北京市交通委、北京交通发展研究中心孙明正总工程师、北京市公安局交管局教官苏根福教授、北京市公安局消防局防火部吉冬梅部长分别就北京市交通现状及大学生交通安全问题、大学生用电安全及消防安全问题、乘坐黑车的安全隐患及相关警示、北京市堵车问题向新生们进行了宣讲。&lt;br /&gt;\r\n &lt;br /&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学习生活导航部分，我校国际交流处盛希文副处长介绍了学校的出国交换政策及相关要求，帮助同学们更深入地了解国际交流项目。随后，校医院汤欣副院长对传染病的预防和治疗、疫苗接种及学校公费医疗政策做了详细介绍。教务处王建副处长向新生介绍了学分、GPA、选课、辅修、保研等教学管理相关规定。最后，外国语学院贾国栋副院长就外语教学及本科生外语学习要求进行了讲解。&lt;br /&gt;\r\n &lt;br /&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 讲座实用性强，紧密贴合学生诉求，服务学生、答疑解惑。讲座结束后，许多同学主动与嘉宾进行了更深入的交流。&lt;br /&gt;\r\n &lt;br /&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本次讲座旨在帮助新生树立安全意识、同时明确学习方向，熟悉规章制度，做好生活规划，尽快适应大学生活。&lt;br /&gt;', '李老师', '2018-03-09 23:08:44', '2');
INSERT INTO `picnews` VALUES ('3', '财政金融学院2013年新生家长见面会隆重举行', '3.jpg', '&nbsp;&nbsp;&nbsp;&nbsp;9月10日上午，财政金融学院2013级新生家长见面会在明德商学楼0102教室隆重举行。我院党委书记王宏伟、党委副书记黄文彬、教务科朱丽霞老师、团委书记郭栋以及优秀学生代表兰青出席了本次见面会。本次见面会由黄文彬副书记主持。&lt;br /&gt;\r\n&lt;br /&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 见面会伊始，黄书记首先介绍了到场的学院领导和嘉宾，并对家长们的到来表示热烈欢迎和衷心的感谢。&lt;br /&gt;', '李明', '2018-03-09 23:08:44', '3');
INSERT INTO `picnews` VALUES ('4', '铁肩担道义，妙手著文章” ——2013-2014学年社会与人', '4.jpg', '&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9月12日上午，2013年社会与人口学院新生开学典礼在中国人民大学公共教学一楼1302教室召开。社会与人口学院分团委书记唐颖老师主持学院2013级全体本科新生及部分硕士研究生、博士研究生参与的开学典礼。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国人民大学荣誉一级教授、著名人口学家、老年学家邬沧萍教授应邀到场，为学院新生讲授开学第一课。社会与人口学院院长翟振武教授，党委书记兼副院长、社会学系主任郭星华教授，学院副院长、人口学系主任段成荣教授，学院副院长冯仕政教授，学院党委副书记张茹老师等出席典礼。&lt;/p&gt;', '赵老师', '2018-03-09 23:08:44', '4');

-- ----------------------------
-- Table structure for `sblog`
-- ----------------------------
DROP TABLE IF EXISTS `sblog`;
CREATE TABLE `sblog` (
  `sblog_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sblog_title` varchar(225) DEFAULT NULL,
  `sblog_content` text,
  `sblog_date` datetime DEFAULT NULL,
  `sblog_click` int(11) DEFAULT NULL,
  `sblog_pic` varchar(225) DEFAULT NULL,
  `sblog_flag` int(11) DEFAULT '1' COMMENT '1：待审批 2：审批通过',
  PRIMARY KEY (`sblog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sblog
-- ----------------------------
INSERT INTO `sblog` VALUES ('1', '2', '专业与就业', '如何看待专业和就业之间的关系？\r\n很多人觉得自己的专业不好就是因为就业不好，觉得某个专业好也是因为就业好。其他的自己也说不出什么。\r\n \r\n我一直信奉一句话，无论你学的是什么，只要你学的够精够好，肯定有不错的未来。而且来到大学之后我更加相信能力和机遇是你找到一个好工作的前提条件。所谓的专业热门冷门与否和就业没有必然联系。谁又能想到学社会学的刘强东现在能成为京东商城的CEO呢？所以不要轻易判读一个专业的好坏，尤其不要以就业为唯一的衡量标准。\r\n \r\n想要找到一份好工作，还是提高自己的能力，抓住每一个机会去锻炼、去尝试，这样才能为自己多添一份选择。', '2018-03-09 21:01:19', '1', 'images/head/man04.gif', '2');
INSERT INTO `sblog` VALUES ('2', '2', '宿舍关系', '如何处理和室友的关系?\r\n其实现在大学里们，真的室友闹矛盾吵得全楼都知道的情况也不算很多了。有点矛盾最多冷战一下或者吵几句就好了，或者干脆忍着不说了。\r\n \r\n大学就是一个小社会，要学会与人打交道，学会如何与室友相处是第一步。其实和室友一起吃饭、一起上课、一起去买东西等等就是很培养室友之间感情的事情了。大家就在这些相处时间里面慢慢了解彼此。忍让是必须的，即使你是从多么娇生惯养的家庭里面出来的，在大学里也得学会包容和忍让，不然没办法过好这四年。\r\n \r\n而在出现矛盾的时候，沟通是最好的办法。也许男生觉得打一架可能就好了。无论如何还得根据情况来判断。', '2018-03-09 21:01:19', '1', 'images/head/man04.gif', '2');
INSERT INTO `sblog` VALUES ('3', '3', '社团、学生会', '社团或者学生会应该怎么看待？\r\n社团和学生会，尤其是学生会，这些年受到了很大的非议，说里面很现实很黑暗。让很多本来有意尝试的新生都不敢加入。其实大学就是一个小社会，现实中有的大学里肯定也会有，所以还是应该辩证些看待。\r\n \r\n大一新生也许刚开始会加很多社团。作为新生，一切都是全新的，应该夺取尝试一些。后来根据自己的时间安排会陆续退掉一些，最后留下一两个自己最感兴趣的继续参与。而作为学生会，是大学里们重要组成部分，在学生中也是一个比较有公信力的组织。无论外界有没有偏见，还是应该自己去体验一下。就算是现实黑暗的，那正好让你提前领略到社会中的事情，也是有帮助的。\r\n \r\n而大学里们也没有比参加这些更快地积累人脉的方法了。能认识不同院的更多同学，对于自己的人际交往能力也是一种锻炼。', '2018-03-09 21:01:19', '2', 'images/head/woman08.gif', '1');
INSERT INTO `sblog` VALUES ('4', '4', '社团活动参加', '是否有必要一定参加社团活动，我认为在不影响学习的情况下，多多参加社团活动，可以更好积累社会经验、锻炼自我。', '2018-03-09 21:01:19', '2', 'images/head/woman08.gif', '2');
INSERT INTO `sblog` VALUES ('5', '4', '大学谈恋爱', '在大学期间应该可以谈恋爱吗，是否错过了遗憾', '2018-03-09 21:01:19', '2', 'images/head/man04.gif', '2');
INSERT INTO `sblog` VALUES ('6', '2', '关于迎新晚会节目', '关于迎新晚会节目，我建议每个宿舍都要出一个创新节目，而且不能超过3个重复形式', '2018-03-09 21:01:19', '0', 'images/head/woman08.gif', '2');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_pass` varchar(200) NOT NULL,
  `user_mail` varchar(50) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `real_name` varchar(50) DEFAULT NULL,
  `user_sex` int(11) DEFAULT '0' COMMENT '1：男 0：女',
  `user_age` int(11) DEFAULT NULL,
  `user_dept` varchar(200) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `user_type` int(11) DEFAULT '0' COMMENT '2：管理员 1：注册用户',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '82452809890492868a1ba38346b2e595147e658a', 'admin@163.com', '赵云飞', '赵飞', '1', '25', '', '2018-03-09 23:08:44', '3');
INSERT INTO `user` VALUES ('2', 'p2015001', '82452809890492868a1ba38346b2e595147e658a', 'p2015001@163.com', '李梅梅', '李梅', '1', '22', '物理系', '2018-03-09 23:08:44', '2');
INSERT INTO `user` VALUES ('3', 'p2015002', '4cb0a5502e9aa44a0ca99e96742f2e788aad875a', 'p2015002@163.com', '李玲玲', '李玲', '1', '22', '化学系', '2018-03-09 23:08:44', '2');
INSERT INTO `user` VALUES ('4', 'p2015003', '4cb0a5502e9aa44a0ca99e96742f2e788aad875a', 'p2015003@163.com', '陈生生', '陈生', '2', '22', '英语系', '2018-03-09 23:08:44', '1');
INSERT INTO `user` VALUES ('5', 'p2015004', '4cb0a5502e9aa44a0ca99e96742f2e788aad875a', 'p2015004@163.com', '李超超', '李超', '1', '24', '数学系', '2018-03-09 23:08:44', '1');
INSERT INTO `user` VALUES ('6', 'p2015005', '4cb0a5502e9aa44a0ca99e96742f2e788aad875a', 'p2015005@163.com', '张斌斌', '张斌', '1', '24', '计算机系', '2018-03-09 23:08:44', '1');
INSERT INTO `user` VALUES ('7', 'p2015006', '4cb0a5502e9aa44a0ca99e96742f2e788aad875a', 'p2015006@163.com', '赵辉辉', '赵辉', '1', '24', '工程系', '2018-03-09 23:08:44', '1');
INSERT INTO `user` VALUES ('8', 'p2015007', '4cb0a5502e9aa44a0ca99e96742f2e788aad875a', 'p2015007@163.com', '张伟明', '张伟', '1', '24', '物理系', '2018-03-09 23:08:44', '1');
INSERT INTO `user` VALUES ('9', 'p2015008', '4cb0a5502e9aa44a0ca99e96742f2e788aad875a', 'p2015008@163.com', '李昆仑', '李昆', '1', '25', '化学系', '2018-03-09 23:08:44', '1');
INSERT INTO `user` VALUES ('10', 'p2015009', '4cb0a5502e9aa44a0ca99e96742f2e788aad875a', 'p2015009@163.com', '李静静', '李静', '2', '21', '英语系', '2018-03-09 23:08:44', '1');
INSERT INTO `user` VALUES ('11', 'p2015010', '4cb0a5502e9aa44a0ca99e96742f2e788aad875a', 'p2015010@163.com', '张勇乐', '张勇', '1', '21', '计算机系', '2018-03-09 23:08:44', '1');
INSERT INTO `user` VALUES ('12', 'p2015011', '4cb0a5502e9aa44a0ca99e96742f2e788aad875a', 'p2015011@163.com', '周丁丁', '周丁', '1', '22', '工程系', '2018-03-09 23:08:44', '1');
INSERT INTO `user` VALUES ('13', 'aodamao', '82452809890492868a1ba38346b2e595147e658a', 'aodamao@qq.com', '傲大猫', '傲大猫', '1', '22', '计算机学院', '2018-03-22 14:35:08', '1');
INSERT INTO `user` VALUES ('14', 'hellokitty', '82452809890492868a1ba38346b2e595147e658a', 'hellokitty@qq.com', 'lili', '莉莉', '2', '20', '信息学院', '2018-03-22 15:40:10', '2');
INSERT INTO `user` VALUES ('15', 'hikitty', '82452809890492868a1ba38346b2e595147e658a', '234423@qq.com', '小王', '小王', '1', '22', '物理系', '2018-02-28 19:55:57', '1');
