/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.6.24 : Database - musicdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`musicdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `musicdb`;

/*Table structure for table `album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `GenreId` smallint(6) NOT NULL,
  `Artist` varchar(50) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  `Stock` int(11) DEFAULT NULL,
  `DateReleased` date NOT NULL,
  `Description` text,
  PRIMARY KEY (`Id`),
  KEY `fk_Album_Genre` (`GenreId`),
  CONSTRAINT `fk_Album_Genre` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `album` */

insert  into `album`(`Id`,`GenreId`,`Artist`,`Title`,`Price`,`Stock`,`DateReleased`,`Description`) values (1,7,'罗大佑','恋曲2000','20.50',31,'2003-01-01','    						    						    						《罗大佑：恋曲2000》是一张保证至少听六年的跨世纪经典，十首千锤百炼，音响震撼全数推荐。在这个思念蔓延的季节，用感恩的心细细聆听；重温那份掩埋心底多年的红尘旧梦；全情收录十首经典之作，寻回记忆里最感人的歌。百年一世纪，六年十首歌，罗大佑六年唯一国语全创作。<br />耳朵在一首首耳熟能详的老歌重温经典，就像突然在脑海里想起那些年轻纯真的脸时那般不可思议。思绪翩翩飞向过往的美好时光，有他，有你，还有不老的情歌不老的情人。满怀感动和喜悦，他们陪你度过多少光阴岁月，每一首歌都有一个或开心或艰苦的旅程故事，等待你去细心品味……\r\n    						\r\n    						\r\n    						'),(2,1,'罗大佑','皇后大道东','20.00',23,'2003-03-01','《罗大佑：皇后大道东》是讽刺末代港督彭定康的“大甩手”政策，“照买照卖楼花处处有单位，但是旺角可能要换换名字”，可谓入木三分。《飞车》中的电子节奏今天看来或许落伍，但其编曲功力不容置疑，而歌词的犀利，讽刺香港社会的种种及时行乐的乱象，什么“坦克战车，历史的风貌”“房车房车，资产派头”“时代时代跑得太快赶不及时间”等等，也痛快淋漓。不过这张专辑中的情歌带着淡淡的哀愁，一丝丝无奈。两种风格的碰撞显得非常扎眼。综观整张专辑，写词风格深受早期罗大佑影响的林夕，与罗大佑搭配出既能够统合粤语本身的音乐性格，又能融入曲式发展的绵长歌词，再加上罗大佑，花比傲专业功力十足的作曲，整张专辑水平整齐，风格明确，打开了香港流行乐坛的新可能性。'),(3,2,'林志炫','单身情歌','18.50',50,'2003-05-01','    						    						    						    						    						    						    						    						    						《林志炫:单身情歌》是林志炫几年来常规性总结，又是一种突破，歌曲在曲风、声音和表情上与“优客李林”时期有很大不同，都市摇滚情歌唱出单身男女的寂寞心声！2首新歌+10首畅销好歌+7首Line金曲=《林志炫单身情歌超炫精选》dxggghtfdjt\r\n    						\r\n    						\r\n    						\r\n    						\r\n    						\r\n    						\r\n    						\r\n    						\r\n    						'),(4,1,'林志炫','超炫精选','30.00',100,'2004-01-01','《林志炫：超炫精选》葡萄熟了，才能醇酒，心成熟了，才懂得爱，熟男林志炫亲自醇制多首香氣满溢情歌，纪念一路走过的青春脚印，唱出多种爱情的成熟。《散了吧》：曾经失去，就能了解再度得到的喜悦，只有感恩和更珍惜每一次唱歌的机会。林志炫，97年首张个人代表超级大碟－－《散了吧》让你更了解“记忆因分手而美丽，情歌因志炫而动听，梦想现在开始”！《蒙娜丽莎的眼泪》：这是1998年林志炫推出了《散了吧》之后的最新专辑。在这张唱片中，林志炫以及制作班底依然坚持上张专辑的质感。为了达到高水准的录音制作水平，他们再度远赴美国，依然邀请曾经为席琳.狄翁、玛丽亚凯莉这些欧美超级巨星担任制作工作的超级制作人Tony Smith担纲，其余班底也依然坚持延续原来的制作阵容。《单身情歌Live精选》：聆听主打歌“单身情歌”，你会发觉林志炫的曲风有极大的突破与改变，原来一贯温文儒雅的志炫，这回狂野奔放了起来，略带摇滚，但却依然唱出恋人渴望爱却不可得的心情。同时精选收录的“追寻”、“散了吧”到“蒙娜丽莎的眼泪”，甚至“有些女人不能碰”，内涵一致的品味着单身人的心情与对爱情的渴望与挫败，抚慰许多单身族群的心灵。'),(5,1,'陈绮贞','华丽的冒险','18.50',19,'2005-01-01','《陈绮贞：华丽的冒险》这张专辑是陈绮贞三年来首张全新录音室大碟，更是她离开唱片公司，以独立艺人状态出版三张单曲后，首次自资出版专辑。从旅行的意义出发，终点在最初的起点，完成了这趟华丽的冒险。2004和2005年的交接时，绮贞号召了目前最顶尖也最有热情创意的几位音乐人，台湾金曲奖得主,知名吉他手及制作人钟成虎，台湾著名剧场及广告配乐好手陈建骐，自然卷乐队的成员贝司手蔡坤奇，鼓手卷毛，以及录音师Kenny、陈绮贞念书时期的乐队成员林心怡，一同在淡水动物园录音室展开了为期两个礼拜的录音，将这三年当中绮贞的创作和前期编曲作业的结晶，用两个礼拜的时间同步录音完成。整个录音过程充满挑战与惊奇，在大自然、山海环绕的气氛之下，克服环境的不便和技术上的难题，也让这群平时穿梭在豪华录音间的音乐朋友们，有机会在最自由放松的状态之下，重拾学生时期玩音乐的童心，当然也毫不保留的交出了自己最珍贵的音乐直觉。'),(6,1,'陈绮贞','太阳LIVE演唱会','16.00',21,'2005-02-01','《陈绮贞:《太阳LIVE》演唱会》不论100个人或是10000个人，都用生命歌唱，她是陈綺贞。高一那年，瞒著母亲偷学吉他，参加音乐比赛、在垦丁海边贩卖自制demo、一路完成音乐梦想。她独具风格，始终真实面对自我。2009年，她与六位台湾本土乐手，以\"太阳\"这个温暖、分享、追寻的概念，完成了第一次的亚洲巡迴演唱会。超过十万人次参与了这次的摇滚之旅。那个曾经亲手一张一张卖出她的唱片的女孩，并没有变，她仍然用她独特的生命姿态 ，继续谱写一场音乐的梦。'),(7,1,'陈绮贞','还是会寂寞','20.50',100,'2005-03-01','...'),(8,1,'陈绮贞','太阳','20.50',50,'2010-03-04','《陈绮贞：太阳》所有的配唱全在陈绮贞的家中录制。不同于一般唱片制式的配唱限制，在自己熟悉的环境下，捕捉到更敏锐细微、只存留在日常生活中自然流露的各种情绪，录音师携带大批精密的录音器材在绮贞家中的各个角落几经测试之后，决定将麦克风架设于衣橱之中。于是，就在这平凡的房间中，造就了这张动人的作品。在乐器的方面更维持了陈绮贞唱片一贯的讲究，没有过多时下充斥的合成器音效。反而是更多的真实乐器。所有基础乐器伴奏都由乐手同步在鼓手陈柏州位于桃园的家中录制完成。贝斯 林羿妏/鼓手 陈柏州/吉他 钟成虎/键盘 陈建骐/手风琴 王雁盟，这群乐手和绮贞一路共同成长一起在音乐之路上探索，一路走来的默契和各自锻炼努力后，为这张唱片所投入的创意和火花，超越了技巧上的讨论，是音乐心灵的完美结合。这群和陈绮贞相同背景的台湾新生代音乐人，过去一起面对录音和现场演出的挑战，目前也已各自崭露头角，要同时听到他们的演出，一向只有在陈绮贞的唱片里。'),(9,1,'孙燕姿','美丽遇见','25.00',12,'2004-03-01','《孙燕姿:美丽遇见》孙燕姿从一出道即创下销售佳绩，3张专辑累积成绩超过百万，人气买气实力兼备，专业音乐人与消费大众的同时肯定，成功做到实力认证与偶像崇拜。她的平凡、她的天真、她的热情征服了大家，所有人被征服在她一颗永远对音乐赤子之心的感动。2002是孙燕姿的另一个开始，从音乐里出发，从2002亚洲巡回演唱会揭开序幕，从这张《孙燕姿 Start》自选辑开始。'),(10,1,'孙燕姿','Stefanie','20.50',50,'2010-03-01','《孙燕姿：Stefanie》在企划概念上，放弃巨星重现的逻辑，运用新人的思考模式，跳脱以往的经验与包袱，不强调刻意的突破与改变，让焦点回归到原点，企图呈现一个真实率性的女生。专辑在制作上除了保留孙燕姿最擅长的曲式之外，也大量运用了新的元素，力图为大家带来一个熟悉却有新鲜感的孙燕姿。在李偲菘、李伟菘和孙燕姿本人参与制作下，整张专辑的曲风更显多元，在音乐架构上每首歌皆有一个乐器为主轴。'),(11,1,'孙燕姿','姿味','23.00',30,'2010-04-01','《孙燕姿：姿味》喜欢阅读，向往自由，清爽的短发，这就是孙燕姿。与爱同行，独特姿味。华语歌坛当之无愧的天后级唱将，姿的柔情，爱的精选世上仅有唯一的独特声线，好声靓曲诚意奉献。专辑收录了《The Moment》、《遇见》、《懒得去管》、《不能和你一起》、《我要的幸福》等29首歌曲，首首都是你最喜欢的，将为你带来燕姿划破空灵暗夜的歌声，带你感受燕姿迷人的风采，淡淡的狂，酷酷的温柔，别有一番滋味！'),(12,1,'孙燕姿','离开','20.50',21,'2005-03-01','《孙燕姿：离开》专辑精神表现了强烈的音乐专属性，打造了孙燕姿的音乐新态度，所以“用音乐证明一切”直接去挑战市场，证明了歌手音乐力量的震撼，乃实至名归的歌坛天后。<br />孙燕姿2002年大碟《Leave》，用音乐震撼你的想象，音乐充满懂事成熟的Rock乐风，将给你带来电子乐式的挑战。<br />此张专辑由多元的乐风铺陈，音乐性强，态度鲜明，歌词的意义与歌手的连结更personal，由包小柏、李偲菘、李伟菘、马毓芬4位制作人担纲制作。首先开场的是懂事成熟的现代Rock乐风，孙燕姿把现在年轻人的想法、主张，毫无保留尽情表现。不管现在流行的R and B，还是街头顽童的Hip-Hop，她不想把音乐框在这些之中，而只是把音乐最动人的旋律传递出去，继续感染每一个人。'),(13,1,'古巨基','大时代 2011全新国语专辑','39.00',11,'2000-01-01','2011全新的国语专辑《大时代》，触角更延伸到泛华人地区，用全新的10首歌，以时代为经，用音乐为纬，唱出我们身处的世纪瞬间或时代的基调，无论是诙谐的《犀利歌》、激励人心的《蚂蚁》、省思人性的《富万代》，横跨网络、选秀、蜗居、蚁族、槟榔西施、八0九0后等种种社会现象，生动地白描了一个时代，又超越时代的局限，摹写了人性共同的心灵质地。'),(14,1,'陈奕迅','全盛时期','20.50',0,'2010-03-01','《陈奕迅：全盛时期》回顾“幸福摩天轮”“K歌之王”“Shall We Talk”，乐坛公认代表作，开启Eason全盛时期，历久弥新。'),(15,1,'容祖儿','现场音乐会','20.50',0,'2005-03-10','《容祖儿：现场音乐会》Joey自十几岁便由歌坛出道，近十年来，由于她的天分、努力，和公司的栽培，获奖无数，也得到广大歌迷的支持，稳居天后的地位。容祖儿在短短的时间中，却累积了数倍于常人的生活体验，人世的变化无常，起起落落，更是让祖儿多有体悟。这些年来祖儿也尝过过各种创新的曲风，及多变的舞台造型，更因宣传专辑或举办演唱会，走遍两岸三地无数大小城市。'),(16,1,'品冠','那些女孩教我的事','22.00',5,'2005-07-10','《品冠：那些女孩教我的事》由台湾顶尖音乐人林迈可、阿弟仔、阿信打造新歌，《那些女孩教我的事》收录了的曲目有“那些女孩教我的事”、“漂流”、“最好的朋友”和“1+1+1”。主打歌“那些女孩教我的事”描述恋人之间的故事，诠释了窃窃私语的丝丝情话。碟内还收录了分别与戴佩妮和丁当对唱的情歌“半生熟”和“真爱到永远”。'),(17,1,'张韶涵','飞越彩虹','20.50',35,'2010-05-01','对唱歌有梦想的Angela张韶涵，在戏剧上的表现令人惊艳。无论是《MVP情人》中梦想成真的篮球队经理小希，或是《海豚湾恋人》中，热爱唱歌，拥有梦想的亚洲新声音易天边，都令人对她的表演印象深刻。一首“Journey”，单纯干净的声音穿透力，张韶涵的第一个声音，从《海豚湾恋人》献声，一出声就让人感受到这个纯净声音的力量，就像剧中漫步在云端的真实声音。'),(18,2,'伍佰','爱情的尽头','20.50',49,'2002-06-01','《伍佰 CHINA BLUE:爱情的尽头》是伍佰1996年的最新作品，当你想进入这张全新的伍佰的世界时，记得别被伍佰豪放的歌声或外表骗了：你若不能读出浪人歌中的淡漠其实有最火炽的挽留，你就无法知道他遥指的爱情尽头，不是荒原，是接近天际线的自由；如果说live 祭出一种骇人的群众力量，那么《爱情的尽头》要处理的则是一颗灵魂内在真实的喟赞；倘若在浪人的情歌里我们听见对世界的愤怒与对抗，那么在《爱情的尽头》里头，我们看见了多一些的沉淀，看见一个明亮、有希望的宽阔世界。'),(19,2,'伍佰','泪桥','20.50',50,'2005-06-01','《伍佰：泪桥》专辑中歌曲的深度情怀和悦耳的耐听性，无不说明伍佰已从“思考写歌”回归到“自然写歌”的更高创作层面；后期混音全部在美国完成，混音师Bill Schnee是位具有国际水准的混音大师，曾制作过无数张国际性的唱片，七年前他也曾为《爱情的尽头》担任过混音；Bill Schnee给了《泪桥》更丰富的音乐内涵，使每一首歌都被处理得很有立体感，具有视觉的美感；这张专辑仿佛整合了伍佰十年的音乐纪录，并且集之大成，用最直接的摇滚手法，带给听者最具魅力与张力的音乐画面。'),(20,2,'伍佰','白鸽','20.50',21,'2005-07-01','《伍佰 CHINA BLUE:白鸽》1999，唱片变成看与穿的配件，不再是用听的。就在流行音乐被音乐自身掏空、泡沫化的同时，伍佰 CHINA BLUE的最新国语专辑‘白鸽’，在众声拼命喧哗中推出显得格外引人注目。这张专辑内容不着重世间男女情爱，加入了对整个社会、人民的关怀，希望能让大家从专辑中深刻感受到他内心的想法、他的音乐理念。伍佰认为，挫折是无时无刻都在发生的，重要的是如何寻求心灵的自由而再度展翅高飞。对伍佰来说，‘白鸽’是他多年来历练的心情，是旅程中的一个阶段而不是终站；因为还在飞，是一张在“飞行中”的唱片。'),(21,2,'动力火车','继续转动','16.00',18,'2005-08-01','《动力火车：继续转动》不怕不景气，就怕没动力。金曲奖最佳重唱组合—动力火车，能量满格再出辑。睽违四年严选力作6首全新动力歌曲4首原声带一网打尽。热血摇滚主打-《继续转动》；Ella+Hebe掏心创作感动主打-爱到疯癫；动力火车+林志炫三大男高音飙唱，摇滚与美声最完美的合作-《爱上你不如爱上海》；《海角七号》、《仙剑奇侠传》、《白色巨塔》片尾曲、插曲通通到齐；感动翻唱《你是我的眼》等10首歌曲。'),(22,2,'动力火车','当红不让特别辑','18.00',22,'2010-08-01','《动力火车：当红不让特别辑》是精选出道十三年最受追捧的三张专辑；从《背叛情歌》到《明天的明天的明天》等金曲尽显当红不让冠军本色。'),(23,2,'动力火车','狂飙精选','17.00',50,'2008-01-01','《动力火车：狂飙精选》前所未有，再没有动力，日子怎么过下去！44首亿万伏特超电金曲一次连续FUN给你，动力复始，元气更新，音乐钢弹，欢乐合金。 不景气时代的心情紧急充电方案，捱过了最烂的一年，犒赏自己一张High的专辑，听完这张再车拼！'),(24,2,'Beyond','大地','18.00',45,'1990-01-01','《BEYOND：大地》在香港BEYOND大地永远是站在最前端的一群音乐狂热份子，给人的官感刺激是绝对直接。不过不是蓄长发、穿皮裤带铁链的那种Heavy Metal Rock，而是一种宣泄意识精神的Rock Band NOW，他们提起行囊正式向台淹市场进军，请拼凑这个时代的变化，你金发现BEYOND大地不是在无病呻吟！'),(25,2,'Beyond','光辉岁月','33.00',80,'1995-05-01','《Beyond：光辉岁月》是最纯粹乐音引领一代人的精神鼓舞和青春写照。完美收录Beyond整个创作时期最经典的黄金作品，重温其引人共鸣的极致选曲，一辑感动所有乐迷青春中最珍贵难忘的音乐轨迹；B安激越而又内敛、自信而又悲壮的歌声，挚热震撼的赤子情怀，深刻影响了几代人，引领了一下时代；他们创作出到今为至止堪称香港乐坛最纯粹的流行音乐，音乐主题始终激励社会民心要心怀永远打不死的理想信念，他们当之无愧为华语乐坛不可超越的奇迹。'),(26,2,'Beyond','真的爱','25.00',79,'2002-01-01','《BEYOND：真的爱》在Beyond的音乐世界里，我们听到的不仅是狂热的爱，更是一种不服输的精神和对人世冷暖的悲悯情怀，这种真实的情绪总能令人砰然心动。本专辑收录了《真的爱你》、《光辉岁月》、《喜欢你》、《坚持信念》、《我是愤怒》等36首历年经典靓歌，首首情牵曲曲动听！魅力之作无法抗拒，超值珍藏切勿错过！'),(27,2,'Beyond','真的爱你-怀念家驹','20.50',60,'2010-02-01','《BEYOND:真的爱你·怀念家驹》BEYOND是一支来自于中国香港的著名摇滚乐队，也是华人地区的殿堂级乐队之一，成立于1983年，其队名的中文意思为“超越”。乐队属于原创型，其作品以写实为主。乐队曾经过多次地人事变动，其中以黄家驹、黄家强、黄贯中、叶世荣四人的阵容最广为人知；自从黄家驹于1993年意外去世后，乐队没有再寻找新成员填补。本专辑则是为了纪念黄家驹而发行。'),(28,3,'高晓松','青春无悔','15.80',21,'2004-02-01','《高晓松:青春无悔》听惯了让人麻木的流行情歌，在这个浮躁的季节，《青春无悔》的再版无疑将是我们的一针强劲的清醒剂，就让歌声带我们回到从前，找到那个曾经的自己。由京文唱片再版发行的《青春无悔-高晓松作品集》不仅保留了原来的十首作品，还增加了一首《模范情书》的特别版，是高晓松自己演唱的版本，由作者自己演绎，自然会有一种不同的味道，使这张专辑具有了非凡的收藏价值。'),(29,3,'蔡琴','乡愁拾韵','18.80',100,'2005-02-08','《蔡琴:乡愁拾韵》往昔的民谣，久远的岁月，我们用歌声去感怀那段“唱自己的歌”的纯真年代。斑驳的记忆，逝去的青春，包裹着一抹《乡愁拾韵》。京文唱片温馨推出经典台湾民谣唱片系列《乡愁拾韵》！！台湾民谣领军歌手——叶佳修、陈淑桦、蔡琴、银霞联袂“复出”，各时期民谣金曲——《你的眼神》，《苏花道上》，《我的相思》集体重现乐坛！内附台湾民谣记事录。'),(30,3,'刘惜君','惜君','15.80',55,'2006-05-01','刘惜君2012全新翻唱专辑《刘惜君:惜•君》，刘惜君以这张录音室作品向偶像邓丽君致敬，并在邓丽君诞辰60周年之际用音乐缅怀邓丽君曾带给我们的感动和温暖，刘惜君特别翻唱邓丽君不同时期的十首经典歌曲，经过刘惜君音乐团队的全新编排，让经典好音乐流传下去，历久弥新。'),(31,4,'小野丽莎','左岸香颂','15.80',8,'2005-02-01','《小野丽莎:左岸香颂》专辑除Pierre Barouh之外，可说邀请到国际级豪华制作群。要特别提出来的，是法国音乐巨擘、高龄86岁的享利萨瓦多（Henri Salvador）先生，他以成熟甘美的嗓音献唱自己的畅销作JAI VU（专辑第5首）。而以名曲Les Parapluies（天生一对）及La Vie en Rose（玫瑰人生）享誉法国的手风琴鬼才Richard Galliano先生，让我们听见他充满个人色彩的演奏技巧。而专辑交织着华丽的弦乐编制格局，是编曲家Mario Adent先生的概念，让整张专辑呈现出洒脱而优雅的乐音。Mario曾为巴西首席的圣保罗交响乐团编曲，因此他的弦乐编曲技术可说获得至高的评价'),(32,4,'林宥嘉','邂逅爵士Live精华','23.80',20,'2011-02-01','林宥嘉 首张爵士专辑:Jazz Channel 林宥嘉邂逅爵士慈善音乐会Live精华》音乐是让情感相遇的频道，林宥嘉集结五位爵士好手的Live音乐唱弹。源自2012年由台科大EDBA/EMBA校友会为罕见疾病基金会募款所举办的慈善音乐会，林宥嘉结合五位爵士好手，从选歌、曲目、改编，挑战现场演绎爵士的即兴韵味！'),(33,5,'未知艺术家','台湾校园歌曲','19.80',50,'2005-02-01','《经典回响：台湾校园歌曲》校园歌曲诞生于上个世纪了年代中期的台湾各大学校园，也被称为“校园民歌”、“现代民歌”、“乐府民风”。它从我国的民间歌曲中汲取了丰富的营养，并将西方乡村歌曲的音乐元素融会其中，形成了一种独特的“通俗歌谣体”体裁。校园歌曲表现出年轻人的蓬勃朝气、青春活力以及他们那富有诗意的浪漫气息。侯德建、罗大佑、叶佳修等人是台湾要园歌曲的代表性人物。'),(34,1,'温柔','123','34.00',2,'2017-04-05','    						    						    						\r\n    	沃尔芬					\r\n    						\r\n    						');

/*Table structure for table `attence` */

DROP TABLE IF EXISTS `attence`;

CREATE TABLE `attence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empname` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `chkdate` datetime NOT NULL,
  `status` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `attence` */

insert  into `attence`(`id`,`empname`,`dept`,`chkdate`,`status`) values (1,'饿阿凡','速读法','2125-11-03 00:00:00',1),(2,'温柔v','324分','2125-11-03 00:00:00',2),(3,'分公司','人工费','1236-11-12 00:00:00',1),(4,'张三','技术部','2010-05-06 00:00:00',2),(5,'张三','技术部','2010-05-06 00:00:00',2),(6,'张三','技术部','2010-05-06 00:00:00',2),(7,'对方是个不','闪光灯','2017-06-14 00:00:00',2),(8,'法国队很难','电话','2017-06-15 00:00:00',3),(9,'使得法国','的风险识别','2017-06-16 00:00:00',4),(10,'丰田的货币','大华股份以','2017-06-24 00:00:00',4),(11,'飞的候鸟','就等于','2017-06-17 00:00:00',4),(12,'桂花村','韩剧','2017-06-30 00:00:00',2),(13,'范甘迪','法定货币','2017-06-22 00:00:00',3),(14,'伐功矜能','烦得很','2017-06-22 00:00:00',3),(15,'还将公开，','飞过海','2017-06-07 00:00:00',4),(16,'刚到家','规范化','2017-06-15 00:00:00',2),(17,'王锦','技术部','2017-07-03 00:00:00',1),(18,'水调歌头','财务部','2017-07-04 00:00:00',3),(19,'大概vsf','阿道夫','2017-07-04 00:00:00',1);

/*Table structure for table `genre` */

DROP TABLE IF EXISTS `genre`;

CREATE TABLE `genre` (
  `Id` smallint(6) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(120) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `genre` */

insert  into `genre`(`Id`,`NAME`,`Description`) values (1,'流行音乐','流行音乐(Popular music)是属于一种有着广泛听众极具吸引力音乐，相较于艺术音乐站和传统音乐。流行音乐是一个不分年龄人人共享音乐以“雅俗共赏”通称。'),(2,'摇滚音乐','早期摇滚的音乐来源非常广泛，主要的包括布鲁斯、R and B、和乡村音乐，其它还有福音音乐、传统的流行乐、爵士、以及民间音乐。所有的这些影响加在一起构成了一种简单的以布鲁斯为基础的歌曲结构，它是快速的、适于跳舞的、而且容易让人记住的。'),(3,'民谣','民间流行的、富于民族色彩的歌曲，称为民谣或民歌。民谣的历史悠远，故其作者多不知名。民谣的内容丰富，有宗教的、爱情的、战争的、工作的，也有饮酒、舞蹈作乐、祭典等等。民谣既是表现一个民族的感情与习尚，因此各有其独特的音阶与情调风格。如法国民谣的蓬勃、意大利民谣的热情、英国民谣的淳朴、日本民谣的悲愤、西班牙民谣的狂放不羁、中国民谣的缠绵悱恻，都表现了强烈的民族气质与色彩。'),(4,'爵士音乐','爵士乐(Jazz)，一种起源于非洲的音乐形式，由民歌发展而来。爵士乐以多种形式呈现出繁荣景象，其乐曲风格极其耀眼,节奏一般以鲜明,强烈为主,从根源布鲁斯、拉格泰姆(Ragtime)，经过新奥尔良爵士乐到Dixieland爵士乐、摇摆乐、主流爵士、比波普、现代爵士到自由爵士及电子爵士。'),(5,'校园歌曲','校园歌曲，顾名思义，是广受学生喜爱，流行于校园，体现校园生活和学子心境或感受的创作，其或称为“校园民谣”、“现代民歌”、“乐府民风”等等。校园歌曲朝气蓬勃，极富有校园味道，毫无矫饰，完全是率真性情的流露，听起来十分感人，激励学子进步，它形象地反映出青年学子的生活，表现出年轻人的蓬勃朝气、青春活力以及他们那富有诗意的浪漫气息，其曲风总体来说朴实明快、积极向上，充满活力，深受人们的喜爱和传唱。'),(6,'民族音乐','中国的民族音乐艺术是世界上非常具有特色的一种艺术形式。中华民族在几千年的文明中，创造了大量优秀的民族音乐文化，形成了有着深刻内涵和丰富内容的民族音乐体系。这一体系在世界音乐中占有重要的地位。我们要认识中国音乐，不能仅仅会唱一些中国歌曲，听几段传统乐曲，还必须从民族的、历史的、地域的角度去考察中国音乐，了解中国音乐，从而真正理解中国音乐的内涵，了解它在世界音乐体系中的地位和历史价值。'),(7,'交响乐','交响乐（SYMPHONY）又称交响曲。是采用大型管弦乐队演奏的鸣奏曲（奏鸣—交响套曲）。交响音乐主要是指交响曲、协奏曲、乐队组曲、序曲和交响诗五种体裁。但其范畴也时常扩展到一些各具特色的管弦乐曲，如交响乐队演奏的幻想曲、随想曲、狂想曲、叙事曲、进行曲、变奏曲和舞曲等。此外，交响音乐还包括标题管弦乐曲。'),(8,'红色歌曲','当代中国，人们将中国共产党领导的革命战争时期创作的反映战斗生活的歌曲，建国后建设、发展等时期抒发无产阶级远大志向、反映人民群众生活与社会主义蓬勃发展的歌曲称为“红色歌曲”，简称“红歌”。红色歌曲格调昂扬向上、催人奋进，既有赞颂英雄人物的《我的祖国》、《英雄赞歌》等，也有《十送红军》、《东方红》、《我爱这蓝色的海洋》等主旋律歌曲。红色歌曲在老一代中国人心目中有着不可替代的地位。');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OrderDate` date NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Consignee` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `TotalPrice` decimal(10,2) NOT NULL,
  `IsDeliveried` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`Id`,`OrderDate`,`Username`,`Consignee`,`Address`,`Phone`,`Email`,`TotalPrice`,`IsDeliveried`) values (1,'2011-09-09','lanou','张三','广州市应元路118号101','13580123123','lanou@tom.com','200.00',0),(2,'2013-07-07','admin','张三','北京长安大街127号','010-22210101','admin@gmail.com','100.00',0),(3,'2013-07-07','admin','张三','北京长安大街127号','010-22210101','admin@gmail.com','69.00',0),(4,'2013-07-07','lanou','李四','广州市应元路108号101房','18601233212','lanou@gmail.com','87.90',0),(5,'2013-07-07','tom','王五','广州市越秀北路110号301房','13801233245','tom@gmail.com','35.80',0),(6,'2013-07-07','tom','王五','广州市越秀北路110号301房','13801233245','tom@gmail.com','55.40',0),(7,'2013-07-07','jack','赵六','广州市天河北118号1302房','13711333216','jack@gmail.com','35.60',0),(8,'2017-06-29','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','39.00',0),(9,'2017-06-29','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','20.50',0),(10,'2017-06-29','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','41.00',0),(11,'2017-06-29','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','20.50',0),(12,'2017-06-29','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','20.50',0),(13,'2017-06-29','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','20.50',0),(14,'2017-06-29','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','20.50',0),(15,'2017-06-29','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','20.50',0),(16,'2017-06-29','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','20.50',0),(17,'2017-06-29','lanou','lanou','广州市应元路108号101房','18601233212','lanou@gmail.com','40.00',0),(18,'2017-06-29','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','20.00',0),(19,'2017-06-29','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','18.50',0),(20,'2017-07-05','rose','rose','北京长安大街127号','010-22210101','rose@gmail.com','40.50',0);

/*Table structure for table `orderdetail` */

DROP TABLE IF EXISTS `orderdetail`;

CREATE TABLE `orderdetail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OrderId` int(11) NOT NULL,
  `AlbumId` int(11) NOT NULL,
  `Quantity` smallint(6) NOT NULL,
  `UnitPrice` decimal(8,2) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_OrderDetail_Album` (`AlbumId`),
  KEY `fk_OrderDetail_Order` (`OrderId`),
  CONSTRAINT `fk_OrderDetail_Album` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`Id`),
  CONSTRAINT `fk_OrderDetail_Order` FOREIGN KEY (`OrderId`) REFERENCES `order` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `orderdetail` */

insert  into `orderdetail`(`Id`,`OrderId`,`AlbumId`,`Quantity`,`UnitPrice`) values (1,1,1,1,'20.00'),(2,1,3,2,'20.00'),(3,1,5,3,'20.00'),(4,1,7,4,'20.00'),(5,2,1,1,'20.50'),(6,2,2,1,'20.00'),(7,2,3,1,'18.50'),(8,2,18,1,'20.50'),(9,2,19,1,'20.50'),(10,3,4,1,'30.00'),(11,3,5,1,'18.50'),(12,3,20,1,'20.50'),(13,4,10,1,'20.50'),(14,4,23,1,'17.00'),(15,4,29,1,'18.80'),(16,4,28,1,'15.80'),(17,4,30,1,'15.80'),(18,5,28,1,'15.80'),(19,5,2,1,'20.00'),(20,6,31,1,'15.80'),(21,6,32,1,'23.80'),(22,6,30,1,'15.80'),(23,7,33,1,'19.80'),(24,7,30,1,'15.80'),(32,18,2,1,'20.00'),(33,19,3,1,'18.50'),(34,20,2,1,'20.00'),(35,20,18,1,'20.50');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `UserRoleId` tinyint(4) NOT NULL,
  `IsInUse` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_User_UserRole` (`UserRoleId`),
  CONSTRAINT `fk_User_UserRole` FOREIGN KEY (`UserRoleId`) REFERENCES `userrole` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`Id`,`Username`,`PASSWORD`,`NAME`,`Address`,`Phone`,`Email`,`UserRoleId`,`IsInUse`) values (1,'rose','123','张三','北京长安大街127号','010-22210101','rose@gmail.com',1,1),(2,'lanou','123','李四','广州市应元路108号101房','18601233212','lanou@gmail.com',1,1),(3,'admin','admin','admin','Music Store Company','010-21112312','admin@163.com',2,1),(4,'tom','123','王五','广州市越秀北路110号301房','13801233245','tom@gmail.com',1,1),(5,'jack','123','赵六','广州市天河北118号1302房','13711333216','jack@gmail.com',1,1),(6,'帕卡丘','23748gr873r','张三','广州','21376549873','234890@163.com',2,1),(7,'帕卡丘','23748gr873r','张三','广州','21376549873','234890@163.com',2,1),(8,'非sad','1234','敢死队风格','地方撒','3254','43543',1,1),(10,'refg','','','','','',1,1),(11,'fg','dfgrty','','','','',1,1),(12,'admin','','','','','',1,1);

/*Table structure for table `userrole` */

DROP TABLE IF EXISTS `userrole`;

CREATE TABLE `userrole` (
  `Id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `userrole` */

insert  into `userrole`(`Id`,`NAME`) values (1,'普通用户'),(2,'管理员');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
