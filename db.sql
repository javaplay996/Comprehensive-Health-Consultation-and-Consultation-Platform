/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiankangzixunpingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiankangzixunpingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiankangzixunpingtai`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615434150450 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1608781605725,'2021-02-28 11:46:45',1608781436204,NULL,'这里可以咨询  可以求救 后台管理员会回复',NULL,1),(1614777897910,'2021-03-03 21:24:57',1,NULL,'‍这个地方可以对医生进行投诉，后台可以进行回复\r\n','是的呢\r\n',0),(1615434132216,'2021-03-11 11:42:12',1,NULL,'‍我想要问问题\r\n','wwwwwww\r\n',0),(1615434150449,'2021-03-11 11:42:29',1,NULL,'aaaa',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jiankangzixunpingtai/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jiankangzixunpingtai/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jiankangzixunpingtai/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jiankangzixunpingtai/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jiankangzixunpingtai/upload/picture5.jpg');

/*Table structure for table `discussjiankangzixun` */

DROP TABLE IF EXISTS `discussjiankangzixun`;

CREATE TABLE `discussjiankangzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615450614802 DEFAULT CHARSET=utf8 COMMENT='健康资讯评论表';

/*Data for the table `discussjiankangzixun` */

insert  into `discussjiankangzixun`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1,'2021-02-28 11:36:16',1,1,'评论内容1','回复内容1'),(2,'2021-02-28 11:36:16',2,2,'评论内容2','回复内容2'),(3,'2021-02-28 11:36:16',3,3,'评论内容3','回复内容3'),(4,'2021-02-28 11:36:16',4,4,'评论内容4','回复内容4'),(5,'2021-02-28 11:36:16',5,5,'评论内容5','回复内容5'),(6,'2021-02-28 11:36:16',6,6,'评论内容6','回复内容6'),(1615433991625,'2021-03-11 11:39:50',2,1,'123123',NULL),(1615450614801,'2021-03-11 16:16:54',5,1,'213123',NULL);

/*Table structure for table `discussyishengzuozhen` */

DROP TABLE IF EXISTS `discussyishengzuozhen`;

CREATE TABLE `discussyishengzuozhen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615450643986 DEFAULT CHARSET=utf8 COMMENT='医生坐诊评论表';

/*Data for the table `discussyishengzuozhen` */

insert  into `discussyishengzuozhen`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1,'2021-02-28 11:36:16',1,1,'评论内容1','回复内容1'),(2,'2021-02-28 11:36:16',2,2,'评论内容2','回复内容2'),(3,'2021-02-28 11:36:16',3,3,'评论内容3','回复内容3'),(4,'2021-02-28 11:36:16',4,4,'评论内容4','回复内容4'),(5,'2021-02-28 11:36:16',5,5,'评论内容5','回复内容5'),(6,'2021-02-28 11:36:16',6,6,'评论内容6','回复内容6'),(1615434028584,'2021-03-11 11:40:27',1615433922021,1,'这个医生非常厉害',NULL),(1615450643985,'2021-03-11 16:17:23',1615450506435,1,'恶恶趣味去',NULL);

/*Table structure for table `jiankangzixun` */

DROP TABLE IF EXISTS `jiankangzixun`;

CREATE TABLE `jiankangzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) NOT NULL COMMENT '资讯标题',
  `zixunleixing` varchar(200) NOT NULL COMMENT '资讯类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `ziliaofujian` varchar(200) DEFAULT NULL COMMENT '资料附件',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='健康资讯';

/*Data for the table `jiankangzixun` */

insert  into `jiankangzixun`(`id`,`addtime`,`zixunbiaoti`,`zixunleixing`,`tupian`,`neirong`,`ziliaofujian`,`faburiqi`) values (1,'2021-02-28 11:36:16','资讯标题1','资讯类型1','http://localhost:8080/jiankangzixunpingtai/upload/jiankangzixun_tupian1.jpg','内容1','','2021-02-28'),(2,'2021-02-28 11:36:16','资讯标题2','资讯类型2','http://localhost:8080/jiankangzixunpingtai/upload/jiankangzixun_tupian2.jpg','内容2','','2021-02-28'),(3,'2021-02-28 11:36:16','资讯标题3','资讯类型3','http://localhost:8080/jiankangzixunpingtai/upload/jiankangzixun_tupian3.jpg','内容3','','2021-02-28'),(4,'2021-02-28 11:36:16','资讯标题4','资讯类型4','http://localhost:8080/jiankangzixunpingtai/upload/jiankangzixun_tupian4.jpg','内容4','','2021-02-28'),(5,'2021-02-28 11:36:16','资讯标题5','资讯类型5','http://localhost:8080/jiankangzixunpingtai/upload/jiankangzixun_tupian5.jpg','内容5','','2021-02-28'),(6,'2021-02-28 11:36:16','资讯标题6','资讯类型6','http://localhost:8080/jiankangzixunpingtai/upload/jiankangzixun_tupian6.jpg','内容6','','2021-02-28');

/*Table structure for table `jiaoliu` */

DROP TABLE IF EXISTS `jiaoliu`;

CREATE TABLE `jiaoliu` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ys_types` bigint(4) DEFAULT NULL COMMENT '资讯医生',
  `yh_types` bigint(255) DEFAULT NULL COMMENT '资讯内容',
  `information_content` varchar(255) DEFAULT NULL COMMENT '资讯内容',
  `information_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '资讯时间',
  `reply_content` varchar(255) DEFAULT NULL COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `jiaoliu` */

insert  into `jiaoliu`(`id`,`ys_types`,`yh_types`,`information_content`,`information_time`,`reply_content`) values (1,1,1,'11111','2021-03-11 15:04:33','111111'),(2,2,2,'22222','2021-03-11 14:33:56','222222'),(4,2,1,'<p>请输入要咨询的内容asdsadsdasdasad</p>','2021-03-11 15:58:19','qwewqeweqwqeweqwqe\r\n'),(5,1,1,'<p>这是个嘛啊</p>','2021-03-11 16:20:01','这是预约看病的\r\n');

/*Table structure for table `keshi` */

DROP TABLE IF EXISTS `keshi`;

CREATE TABLE `keshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) NOT NULL COMMENT '科室',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keshi` (`keshi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='科室';

/*Data for the table `keshi` */

insert  into `keshi`(`id`,`addtime`,`keshi`) values (1,'2021-02-28 11:36:16','外科'),(2,'2021-02-28 11:36:16','内科'),(3,'2021-02-28 11:36:16','儿科'),(4,'2021-02-28 11:36:16','妇产科'),(5,'2021-02-28 11:36:16','肿瘤科');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (1,'2021-02-28 11:36:16','强强联合开启智慧医疗新时代','http://localhost:8080/jiankangzixunpingtai/upload/1615450402358.jpg','近几年，国家大力推动医改，着力改善民生，从《“健康中国2030”规划纲要》，到党的十九大提出“实施健康中国战略”，以人民为中心加快健康中国建设的指导思想、顶层设计正在加速推进。尤其是今年新冠肺炎疫情的发生，更是对医疗健康行业带来深远影响：从大数据助力疫情预警防控到5G赋能患者远程诊疗，从AI 助力智能分析到云计算使能数据存储。5G等新技术在智慧医疗领域正在发挥重要作用。淮海医院管理公司董事长马金保表示：“双方作为各自所在领域的优势单位，拥有良好的商誉和丰富的资源，双方共建战略合作伙伴关系，发挥资源整合优势，加强多领域、多范围合作，实现互惠互赢，合作的前景广阔。”“5G赋能智慧医疗是未来的重要发展方向，是智慧医院转型的有力抓手，本次合作对我院迈入5G智慧医院具有十分重要的意义。我院是徐州首批获得互联网医院牌照的医院，通过推出线上问诊、支付、预约、查询、宣教等功能，为患者带来更快速、更便捷、更智能的医疗服务新体验。”徐矿总医院院长荣良群表示。\r\n'),(2,'2021-02-28 11:36:16','联想全方位助力智慧医疗蓬勃发展，未来医疗更富“人情味”','http://localhost:8080/jiankangzixunpingtai/upload/1615450412278.jpg','　在2020年呈现井喷式增长的行业中，在线医疗无疑名列前茅，公共卫生安全话题得到全民前所未有的关注和重视。根据中国互联网络信息中心(CNNIC)的最新报告显示，截至2020年6月，我国在线医疗用户规模达2.76亿，占网民整体的29.4%。其中26.4%的网民在线购买过药品、健康器械等医疗用品，17.9%的网民使用过网上挂号、问诊等在线医疗服务。　　网民对在线医疗接受度不断提升，一是因为付费模式不断成熟，行业良性发展生态逐渐形成，而最为关键的是新技术支撑推动医疗“新基建”落地，大数据、云计算、人工智能等技术为智慧医疗的拓展和探索提供了坚实基础。联想集团最新发布的《2021年及未来科技趋势预测》指出，构建在远程医疗基础上的健康服务在2020年尤为重要，可以提供遏制疫情蔓延和为患者提供全面的医疗保健服务的双重功能。在2021年及未来，“虚拟护理”会越来越受欢迎，人工智能的创新解决方案和5G网络给予患者全新的体验。纳米技术也将大展拳脚，重点放在细胞及器官的制造与打印，和为癌症患者提供定制化治疗\r\n'),(3,'2021-02-28 11:36:16','Avaya荣获Frost & Sullivan医疗解决方案卓越奖','http://localhost:8080/jiankangzixunpingtai/upload/news_picture3.jpg','近日,全球领先的统一通信与协作方案提供商Avaya获得了由Frost &amp; Sullivan颁发的竞争战略领导力奖,以表彰Avaya OneCloud 医疗解决方案种所包含的丰富产品组合。\r\nFrost &amp; Sullivan肯定了Avaya的医疗产品组合及解决方案,表示:Avaya的医疗产品组合及解决方案能广泛应用于实际医疗场景当中,并且能满足医疗行业某些特定需求。Avaya 服务于全球190多个国家和地区的13万客户,拥有极高的品牌知名度,在业内广受好评,能够针对不断变化的市场背景快速做出调整,是企业级通信领域的领导者和践行者。\r\n“我们非常高兴Avaya的医疗解决方案能够在治疗的所有环节当中都发挥作用,它改善了患者、家属、医疗团队及其他医疗场景中的体验,这也与Avaya体验至上的理念相一致。”Avaya 全球医疗实践领导人 Tara Mahoney表示,“由于疫情等原因,医疗机构要在资源极度紧张的情况下为病患提供治疗,医疗系统面临着前所未有的压力。为此,我们很多医疗领域的客户都在积极进行数字化转型。Avaya通过将人员、资源、数据连接在一起,帮助客户优化运营,降低风险,同时,为客户和病患提供更高水平的医疗体验。我们非常荣幸能够得到Frost &amp; Sullivan的肯定,也将继续驱动创新,为医疗界客户呈上更多的创新成果。”\r\n业界很多医疗厂商都是Avaya的重要客户,在财富杂志医疗和生命科学500强排行榜中,有80%的企业都与Avaya建立了合作关系,在美国排名前20的医院中,Avaya与其中12家进行了合作,它们都在使用Avay OneCloud通信解决方案,包括Avaya Spaces和Avaya OneCloud CPaaS。\r\n\r\n'),(4,'2021-02-28 11:36:16','未来医疗新方向 区块链+大健康','http://localhost:8080/jiankangzixunpingtai/upload/1615450419759.jpg','　业内人士认为，医疗大健康领域或将成为区块链技术落地产业发展的又一风口。统计数据显示，2020年上半年，我国在医疗领域的区块链应用共落地12个项目，其中6个涉及医疗信息共享，6个应用于疫情防控场景。　　区块链可以有效解决医疗领域中的数据问题　　随着区块链技术影响力的不断扩大，其应用性已涉及更加广泛的领域。近日，国家卫健委发布《关于加强全民健康信息标准化体系建设的意见》，鼓励医疗卫生机构在确保安全的前提下，探索区块链技术在医疗联合体、个人健康档案、电子处方、药品管理、医疗保险、智慧医院管理、疫苗管理、基因测序等方面的应用。　　据悉，近日发布的《区块链赋能医疗产业报告》指出，随着医疗健康领域正式步入大数据时代，数据作为最重要的生产资料，对其未来在探索医疗联合体、个人健康档案、电子处方、药品管理、医疗保险、智慧医院管理、疫苗管理、基因测序、优化资源配置、节省资本等方面有着无可比拟的价值和潜力。但由于目前医疗数据孤岛化且缺乏标准体系、数据安全难以保障、数据确权不明晰导致的传统参与者信息化的意愿低，医疗服务中的医疗数据未能被充分利用。\r\n'),(5,'2021-02-28 11:36:16','“互联网+医疗”遂宁市医改向纵深推进','http://localhost:8080/jiankangzixunpingtai/upload/1615450427238.jpg','深入推进分级诊疗制度、全国城市医联体建设试点市、“互联网+医疗”等改革“互联网+医疗” 全市医改向纵深推进患者在医院自助机上微信扫码挂号、缴纳费用，几分钟搞定；一台电脑、一只话筒、一个摄像头，市级医院医生利用这些设备，坐在办公室就可以为村里的老百姓看病……近年来，遂宁市各公立医院实施“互联网+医疗”及卫生信息化建设，让患者真切感受到现代化、信息化带来的便利医疗服务。 近年来，遂宁市卫生健康委围绕深化基层医药卫生体制综合改革任务，深入推进分级诊疗制度、全国城市医联体建设试点市、“互联网+医疗”等改革，推动全市医改向纵深发展，提升医疗服务能力和医疗服务水平，持续增强群众幸福感和获得感。以医联体推进分级诊疗网格化布局初见成效10月9日，遂宁市第一人民医院与遂宁高新区聚贤镇卫生院联合门诊启动。当天，两家医疗机构的康复科医生共同坐诊，为患者开展康复诊疗。自此，市第一人民医院康复科每月逢场天派一名中医康复医生到聚贤镇卫生院坐诊，并派一名康复技师长驻卫生院指导工作。 遂宁市第一人民医院与聚贤镇卫生院开设联合门诊，是遂宁市开展紧密型医联体建设的一项重要举措，旨在更好地实施分级诊疗和满足群众健康需求。 \r\n');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615450620363 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615432939739,'2021-03-11 11:22:19',1,2,'jiankangzixun','资讯标题2','http://localhost:8080/jiankangzixunpingtai/upload/jiankangzixun_tupian2.jpg'),(1615432944022,'2021-03-11 11:22:23',1,2,'yishengzuozhen','医生姓名2','http://localhost:8080/jiankangzixunpingtai/upload/yishengzuozhen_touxiang2.jpg'),(1615450620362,'2021-03-11 16:16:59',1,5,'jiankangzixun','资讯标题5','http://localhost:8080/jiankangzixunpingtai/upload/jiankangzixun_tupian5.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','akaz3121dxb76lvojuybm5u6r6h0bwka','2021-02-28 11:37:14','2021-03-11 17:17:59'),(2,1608781436204,'001','yonghu','用户','l3ugz0rjgdf2m1o9oqijmdsauhfwpc1f','2021-02-28 11:44:15','2021-02-28 12:44:15'),(3,1,'111','yonghu','用户','zcf2q3lk86wzaspxo139vdgo55z4jz27','2021-03-03 19:45:48','2021-03-11 17:20:13'),(4,1,'111','yisheng','医生','47pcjaodgkewpokxkhl70bg4a37anz6l','2021-03-03 20:27:24','2021-03-11 17:19:02'),(5,1614777695088,'admin','yonghu','用户','h0nuoy6k4typma9qqzzrnechikjfht0m','2021-03-03 21:21:44','2021-03-03 22:21:45');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-28 11:36:16');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615433207839 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`xingbie`,`touxiang`,`zhicheng`,`keshi`,`lianxidianhua`,`youxiang`,`money`) values (1,'2021-02-28 11:36:16','111','111','医生姓名1','女','http://localhost:8080/jiankangzixunpingtai/upload/yisheng_touxiang1.jpg','职称1','外科','13823888881','773890001@qq.com',100),(2,'2021-02-28 11:36:16','医生2','123456','医生姓名2','男','http://localhost:8080/jiankangzixunpingtai/upload/yisheng_touxiang2.jpg','职称2','科室2','13823888882','773890002@qq.com',100),(3,'2021-02-28 11:36:16','医生3','123456','医生姓名3','男','http://localhost:8080/jiankangzixunpingtai/upload/yisheng_touxiang3.jpg','职称3','科室3','13823888883','773890003@qq.com',100),(4,'2021-02-28 11:36:16','医生4','123456','医生姓名4','男','http://localhost:8080/jiankangzixunpingtai/upload/yisheng_touxiang4.jpg','职称4','科室4','13823888884','773890004@qq.com',100),(5,'2021-02-28 11:36:16','医生5','123456','医生姓名5','男','http://localhost:8080/jiankangzixunpingtai/upload/yisheng_touxiang5.jpg','职称5','科室5','13823888885','773890005@qq.com',100);

/*Table structure for table `yishengzuozhen` */

DROP TABLE IF EXISTS `yishengzuozhen`;

CREATE TABLE `yishengzuozhen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shanzhanglingyu` varchar(200) DEFAULT NULL COMMENT '擅长领域',
  `zuozhenshijian` varchar(200) DEFAULT NULL COMMENT '坐诊时间',
  `guahaojiage` int(11) NOT NULL COMMENT '挂号价格',
  `gerenjieshao` longtext COMMENT '个人介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615450506436 DEFAULT CHARSET=utf8 COMMENT='医生坐诊';

/*Data for the table `yishengzuozhen` */

insert  into `yishengzuozhen`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`xingbie`,`touxiang`,`zhicheng`,`keshi`,`youxiang`,`shanzhanglingyu`,`zuozhenshijian`,`guahaojiage`,`gerenjieshao`) values (1,'2021-02-28 11:36:16','医生工号1','医生姓名1','性别1','http://localhost:8080/jiankangzixunpingtai/upload/yishengzuozhen_touxiang1.jpg','职称1','科室1','773890001@qq.com','擅长领域1','坐诊时间1',1,'个人介绍1'),(2,'2021-02-28 11:36:16','医生工号2','医生姓名2','性别2','http://localhost:8080/jiankangzixunpingtai/upload/yishengzuozhen_touxiang2.jpg','职称2','科室2','773890002@qq.com','擅长领域2','坐诊时间2',2,'个人介绍2'),(3,'2021-02-28 11:36:16','医生工号3','医生姓名3','性别3','http://localhost:8080/jiankangzixunpingtai/upload/yishengzuozhen_touxiang3.jpg','职称3','科室3','773890003@qq.com','擅长领域3','坐诊时间3',3,'个人介绍3'),(4,'2021-02-28 11:36:16','医生工号4','医生姓名4','性别4','http://localhost:8080/jiankangzixunpingtai/upload/yishengzuozhen_touxiang4.jpg','职称4','科室4','773890004@qq.com','擅长领域4','坐诊时间4',4,'个人介绍4'),(5,'2021-02-28 11:36:16','医生工号5','医生姓名5','性别5','http://localhost:8080/jiankangzixunpingtai/upload/yishengzuozhen_touxiang5.jpg','职称5','科室5','773890005@qq.com','擅长领域5','坐诊时间5',5,'个人介绍5'),(6,'2021-02-28 11:36:16','医生工号6','医生姓名6','性别6','http://localhost:8080/jiankangzixunpingtai/upload/yishengzuozhen_touxiang6.jpg','职称6','科室6','773890006@qq.com','擅长领域6','坐诊时间6',6,'个人介绍6'),(1615450506435,'2021-03-11 16:15:06','111','医生姓名1','女','http://localhost:8080/jiankangzixunpingtai/upload/1615450504428.jpg','职称1','外科','773890001@qq.com','擅长领域1','坐诊时间1111',111,'123123123\r\n');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `money` float DEFAULT '0' COMMENT '余额',
  `blacklist` int(11) DEFAULT '0' COMMENT '是否拉黑',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1608781436205 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`money`,`blacklist`) values (1,'2021-02-28 11:36:16','111','111','姓名1','男','http://localhost:8080/jiankangzixunpingtai/upload/yonghu_touxiang1.jpg','13823888881',100,0),(2,'2021-02-28 11:36:16','用户2','123456','姓名2','男','http://localhost:8080/jiankangzixunpingtai/upload/yonghu_touxiang2.jpg','13823888882',100,0),(3,'2021-02-28 11:36:16','用户3','123456','姓名3','男','http://localhost:8080/jiankangzixunpingtai/upload/yonghu_touxiang3.jpg','13823888883',100,2),(4,'2021-02-28 11:36:16','用户4','123456','姓名4','男','http://localhost:8080/jiankangzixunpingtai/upload/yonghu_touxiang4.jpg','13823888884',100,0),(5,'2021-02-28 11:36:16','用户5','123456','姓名5','男','http://localhost:8080/jiankangzixunpingtai/upload/yonghu_touxiang5.jpg','13823888885',100,0),(6,'2021-02-28 11:36:16','用户6','123456','姓名6','男','http://localhost:8080/jiankangzixunpingtai/upload/yonghu_touxiang6.jpg','13823888886',100,0);

/*Table structure for table `yonghubingli` */

DROP TABLE IF EXISTS `yonghubingli`;

CREATE TABLE `yonghubingli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `binglibianhao` varchar(200) DEFAULT NULL COMMENT '病例编号',
  `binglimingcheng` varchar(200) DEFAULT NULL COMMENT '病例名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `bingqing` varchar(200) DEFAULT NULL COMMENT '病情',
  `jianchaxiangmu` varchar(200) DEFAULT NULL COMMENT '检查项目',
  `jianchajieguo` varchar(200) DEFAULT NULL COMMENT '检查结果',
  `yaodan` varchar(200) DEFAULT NULL COMMENT '药单',
  `yizhu` longtext COMMENT '医嘱',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `binglifujian` varchar(200) DEFAULT NULL COMMENT '病例附件',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `binglibianhao` (`binglibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615450784981 DEFAULT CHARSET=utf8 COMMENT='用户病例';

/*Data for the table `yonghubingli` */

insert  into `yonghubingli`(`id`,`addtime`,`binglibianhao`,`binglimingcheng`,`yonghuming`,`xingming`,`shouji`,`bingqing`,`jianchaxiangmu`,`jianchajieguo`,`yaodan`,`yizhu`,`zhuyishixiang`,`binglifujian`,`riqi`,`yishenggonghao`,`zhicheng`) values (1,'2021-02-28 11:36:16','病例编号1','病例名称1','用户名1','姓名1','手机1','病情1','检查项目1','检查结果1','药单1','医嘱1','注意事项1','','2021-02-28','医生工号1','职称1'),(2,'2021-02-28 11:36:16','病例编号2','病例名称2','用户名2','姓名2','手机2','病情2','检查项目2','检查结果2','药单2','医嘱2','注意事项2','','2021-02-28','医生工号2','职称2'),(3,'2021-02-28 11:36:16','病例编号3','病例名称3','用户名3','姓名3','手机3','病情3','检查项目3','检查结果3','药单3','医嘱3','注意事项3','','2021-02-28','医生工号3','职称3'),(4,'2021-02-28 11:36:16','病例编号4','病例名称4','用户名4','姓名4','手机4','病情4','检查项目4','检查结果4','药单4','医嘱4','注意事项4','','2021-02-28','医生工号4','职称4'),(5,'2021-02-28 11:36:16','病例编号5','病例名称5','用户名5','姓名5','手机5','病情5','检查项目5','检查结果5','药单5','医嘱5','注意事项5','','2021-02-28','医生工号5','职称5'),(6,'2021-02-28 11:36:16','病例编号6','病例名称6','用户名6','姓名6','手机6','病情6','检查项目6','检查结果6','药单6','医嘱6','注意事项6','','2021-02-28','医生工号6','职称6'),(1615450784980,'2021-03-11 16:19:44','1615450761','','111','姓名1','13823888881','没问题','检查项目1','没问题','不需要吃药','adasdasd\r\n','没事1','http://localhost:8080/jiankangzixunpingtai/file/download?fileName=1615450782721.xls','2021-03-01','111','职称1');

/*Table structure for table `yuyueguahao` */

DROP TABLE IF EXISTS `yuyueguahao`;

CREATE TABLE `yuyueguahao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `yuyuemingcheng` varchar(200) NOT NULL COMMENT '预约名称',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `guahaojiage` varchar(200) DEFAULT NULL COMMENT '挂号价格',
  `yuyueneirong` longtext COMMENT '预约内容',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615450732270 DEFAULT CHARSET=utf8 COMMENT='预约挂号';

/*Data for the table `yuyueguahao` */

insert  into `yuyueguahao`(`id`,`addtime`,`yuyuebianhao`,`yuyuemingcheng`,`yishenggonghao`,`yishengxingming`,`touxiang`,`yuyueshijian`,`guahaojiage`,`yuyueneirong`,`beizhu`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`ispay`) values (1,'2021-02-28 11:36:16','预约编号1','预约名称1','医生工号1','医生姓名1','http://localhost:8080/jiankangzixunpingtai/upload/yuyueguahao_touxiang1.jpg','2021-02-28 11:36:16','挂号价格1','预约内容1','备注1','用户名1','姓名1','手机1','否','','未支付'),(2,'2021-02-28 11:36:16','预约编号2','预约名称2','医生工号2','医生姓名2','http://localhost:8080/jiankangzixunpingtai/upload/yuyueguahao_touxiang2.jpg','2021-02-28 11:36:16','挂号价格2','预约内容2','备注2','用户名2','姓名2','手机2','否','','未支付'),(3,'2021-02-28 11:36:16','预约编号3','预约名称3','医生工号3','医生姓名3','http://localhost:8080/jiankangzixunpingtai/upload/yuyueguahao_touxiang3.jpg','2021-02-28 11:36:16','挂号价格3','预约内容3','备注3','用户名3','姓名3','手机3','否','','未支付'),(4,'2021-02-28 11:36:16','预约编号4','预约名称4','医生工号4','医生姓名4','http://localhost:8080/jiankangzixunpingtai/upload/yuyueguahao_touxiang4.jpg','2021-02-28 11:36:16','挂号价格4','预约内容4','备注4','用户名4','姓名4','手机4','否','','未支付'),(5,'2021-02-28 11:36:16','预约编号5','预约名称5','医生工号5','医生姓名5','http://localhost:8080/jiankangzixunpingtai/upload/yuyueguahao_touxiang5.jpg','2021-02-28 11:36:16','挂号价格5','预约内容5','备注5','用户名5','姓名5','手机5','否','','未支付'),(6,'2021-02-28 11:36:16','预约编号6','预约名称6','医生工号6','医生姓名6','http://localhost:8080/jiankangzixunpingtai/upload/yuyueguahao_touxiang6.jpg','2021-02-28 11:36:16','挂号价格6','预约内容6','备注6','用户名6','姓名6','手机6','否','','未支付'),(1615450732269,'2021-03-11 16:18:51','20213111617292157546','12312312','111','医生姓名1','http://localhost:8080/jiankangzixunpingtai/upload/yonghu_touxiang1.jpg','2021-03-19 00:00:00','111','<p>请输入预约内容</p>','我要预约','111','姓名1','13823888881','是','来了来了','已支付');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
