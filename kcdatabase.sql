/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : kcdatabase

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-09-29 12:21:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(255) NOT NULL,
  `bandes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', 'https://app-file.beitaichufang.com/img/H5/web/banner/banner20.jpg', '了解“南瓜腰豆糕”的做法');
INSERT INTO `banner` VALUES ('2', 'https://app-file.beitaichufang.com/img/H5/web/banner/banner21.jpg', '了解“马蹄银耳汤”的做法');
INSERT INTO `banner` VALUES ('3', 'https://app-file.beitaichufang.com/img/H5/web/banner/banner22.jpg', '了解“俊子蟹白菜汤”的做法');
INSERT INTO `banner` VALUES ('4', 'https://app-file.beitaichufang.com/img/H5/web/banner/banner23.jpg', '了解“提拉米苏”的做法');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('14', '3', '2');
INSERT INTO `collect` VALUES ('15', '3', '1');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(255) NOT NULL,
  `u_id` int(11) NOT NULL,
  `share_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('20', '真的很好吃吗！wow！', '3', '9');
INSERT INTO `comments` VALUES ('22', '看起来还挺不错的！', '2', '9');
INSERT INTO `comments` VALUES ('23', '这个豆腐我也喜欢哦', '2', '10');
INSERT INTO `comments` VALUES ('24', 'nice！！！', '3', '12');
INSERT INTO `comments` VALUES ('25', '嘿嘿，有机会做给你吃啊！', '3', '10');

-- ----------------------------
-- Table structure for foods
-- ----------------------------
DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `au_id` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES ('1', '\r\n蒜蓉粉丝蒸龙利鱼\r\n', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191008/rYnKJFSKWR.jpg?x-oss-process=image/crop,x_9,y_9,w_2820,h_1880', '龙利鱼是深海鱼的一种，它不仅营养丰富，脂肪含量也非常低，含有不饱和脂肪酸，经常食用可以美容养颜、提高免疫力。龙利鱼的口感嫩滑鲜美，而且没有鱼刺，适合各种煎、炸、蒸、煮的烹饪方式。用龙利鱼搭配粉丝和金针菇蒸食，味道又鲜又嫩，营养成分还不流失，老少皆宜！', '鱼类晚餐', '1', '2020-09-09 18:49:18');
INSERT INTO `foods` VALUES ('2', '酱爆洋葱鱿鱼须', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180317/B56zdB5fMd.jpg?x-oss-process=image/crop,x_1,y_2,w_844,h_563', '鱿鱼含有丰富的蛋白质及人体所需的氨基酸，脂肪含量很低，是大家比较喜欢的一种海鲜产品。而鱿鱼须的口感脆嫩，用来做酱爆超级美味，再搭配孜然出锅，有种小烧烤的感觉呢！', '海鲜类晚餐', '2', '2020-09-17 11:34:21');
INSERT INTO `foods` VALUES ('3', '歌乐山辣子鸡', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/iM7C8AzE5w.jpg?x-oss-process=image/crop,x_0,y_722,w_1330,h_886/resize,m_lfit,w_1080/resize,w_454/format,webp', '\r\n        正宗的歌乐山辣子鸡，鸡肉并非“主角”，会吃的人喜欢的就是在辣椒、花椒中寻找肉丁的感觉。焦酥辣爽！那怎么做才算最道地呢？\r\n\r\n        正宗的歌乐山辣子鸡，鸡肉并非“主角”，会吃的人喜欢的就是在辣椒、花椒中寻找肉丁的感觉。焦酥辣爽！那怎么做才算最道地呢？\r\n       ', '鸡肉  辣   ', '2', '2020-09-14 23:13:22');
INSERT INTO `foods` VALUES ('5', '星空糖霜饼干', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/YBfe6jQmTd.jpg?x-oss-process=image/crop,x_172,y_35,w_834,h_556/resize,m_lfit,w_1080/resize,w_454/format,webp', '这是款好看好吃的糖霜饼干，香气浓郁的饼干底配上美丽炫目的星空，想吃又舍不得吃。三块饼干经过糖霜粘合在一起，中间放入深色彩糖，晃一下，里面的彩糖能动起来哦，给孩子闺蜜做圣诞礼物，简直不要太赞了。', '面包 早餐', '1', '2020-09-03 16:35:17');
INSERT INTO `foods` VALUES ('6', '鸡蛋饼10分钟搞定孩子的营养早餐', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171228/WRWCnyfyQB.jpg?x-oss-process=image/crop,x_0,y_340,w_599,h_399/resize,m_lfit,w_1080/resize,w_454/format,webp', '俗话说：早晨要吃好。早餐——对于每天都要早起的人来说，这个“好”实在是一个难题。因为“好”不仅要做到色香味俱全，还要注重营养搭配，这样才能为这一天所需的元气提供满满的正能量。蛋饼，既有美味和营养，又是一道饱腹的主食。蛋饼中还能加入各种应季的食材，擦入脆嫩的西葫芦丝，便成了好吃的糊塌子。开学啦，想要10分钟搞定孩子的营养早餐，赶紧get起来吧！', '早餐 鸡蛋', '1', '2020-09-04 16:36:55');
INSERT INTO `foods` VALUES ('7', '香软葱花饼', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/QrbWyesH6t.JPG?x-oss-process=image/crop,x_15,y_15,w_2345,h_1563/resize,m_lfit,w_1080/resize,w_454/format,webp', '北方离不开面食，面食之中烙饼最为家常。烙饼是个技术活，饼要柔软要层次分明，还要放凉不会变成石头般的硬，是有很多细节需要注意的。我的老妈烙饼技术一流，虽然我早已不在她身边生活，但也得到她老人家的“真传”。隔三差五就会烙一次饼，再炒上一两个菜，熬点儿粥，就是一顿花钱不多但吃起来极为舒服的家常饭。', '早餐 饼 面食', '1', '2020-09-05 16:37:37');
INSERT INTO `foods` VALUES ('8', '青椒牛肉丝', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/NMSQwbwWNA.jpg?x-oss-process=image/crop,x_9,y_5,w_840,h_560/resize,m_lfit,w_1080/resize,w_454/format,webp', '牛肉和青椒一直就是很好的搭配，无论从口感还是色泽上都非常有食欲。孕妈妈在怀孕期间要保证饮食的均衡，摄入足够的营养成分，青椒炒牛肉具有补中益气、强筋健骨的作用，特别适合缺铁性贫血、体虚气短的孕妇食用，另外这道菜中含有的维生素成分也非常适合胎儿的成长发育。', '牛肉 ', '1', '2020-09-10 16:38:27');
INSERT INTO `foods` VALUES ('9', '平底锅奶香小馒头', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/5AnzPWpkaG.jpg?x-oss-process=image/crop,x_12,y_0,w_2818,h_1877/resize,w_454/format,webp', '馒头给人的感觉一直都是中规中矩的，那今天咱就换个花样，将馒头做成小小个头，用平底锅煎至蓬松金黄，外脆内软，一口一个，奶香十足，既可以当早餐又能当零食，一举两得！', '早餐 面食', '1', '2020-09-01 16:39:03');
INSERT INTO `foods` VALUES ('10', '番茄鸡蛋卷', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180801/YrZPmHnBKD.JPG?x-oss-process=image/crop,x_11,y_5,w_924,h_616/resize,m_lfit,w_1080/resize,w_454/format,webp', '番茄（西红柿）与鸡蛋的组合可谓是天生一对，两样食材的营养价值都特别高，番茄富含胡萝卜素和维生素，能够保护心血管，而鸡蛋也是我们日常生活中不可或缺的高营养食物。最经典的做法莫过于番茄炒蛋了，但再好吃的菜，多吃也腻。不如换个做法来当早餐吃。鸡蛋卷起来，口感丰富细腻，有葱香、鸡蛋香和番茄的酸味，味道棒棒哒，好吃又有营养。简单的快手做法，小朋友也喜欢。', '早餐 鸡蛋', '1', '2020-09-09 16:39:45');
INSERT INTO `foods` VALUES ('11', '茄汁金针菇烩饼', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/PJzRzZF4y8.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880/resize,w_454/format,webp', '北方人偏爱面食，有时买来的烙饼吃不完，扔掉又可惜，那咱们不妨换个做法，可以搭配番茄和金针菇做个烩饼。烙饼吸足了番茄的汤汁，酸甜入味、营养丰富，而且连饭带菜都有了，吃起来特别过瘾呢！', '饼 面食', '1', '2020-09-08 16:40:18');
INSERT INTO `foods` VALUES ('12', '白菜包包', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/TMcdxJXFKB.jpg?x-oss-process=image/crop,x_26,y_0,w_816,h_544/resize,m_lfit,w_1080/resize,w_454/format,webp', '白菜包包是一道创意减脂的菜谱。白菜包裹着鸡胸肉和杂蔬，像一个小包的形状，顾名思义叫做白菜包包。大白菜是冬季常见的减脂浅色蔬菜，营养价值很高，含有丰富的纤维素，它的最大特点是热量很低。减肥者如果每天都吃大白菜，有\"时间短、见效快\"的效果。而鸡胸肉是鸡身上的热量最低的部位，是减肥期间蛋白质最佳来源，非常适宜作为减肥期间的肉类食物来源。', '时蔬午餐', '1', '2020-09-22 16:41:03');
INSERT INTO `foods` VALUES ('13', '蛋挞皮版芒果酥', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190514/KNcJshDHHP.jpg?x-oss-process=image/crop,x_4,y_7,w_2820,h_1880/resize,w_454/format,webp', ' 提起风靡朋友圈的网红甜品不得不说各种“酥”，像榴莲酥、香蕉酥都是备受追捧的，不过自己制作酥皮耗时又麻烦，所以就用蛋挞皮来代替酥皮，内馅放的是芒果，做法超级简单，成品外皮酥脆、香甜美味，咬一口直掉渣！', '芒果 蛋挞 甜点', '1', '2020-09-07 16:41:13');
INSERT INTO `foods` VALUES ('14', '可乐饼', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190104/FQRt3ry5Qk.jpg?x-oss-process=image/crop,x_0,y_1311,w_1572,h_1046/resize,w_454/format,webp', '日语叫korokke的油炸土豆饼，是保留了法语发音croquette的舶来品，经过街头商贩们的改良如今已经是与章鱼小丸子媲美的地道日式街头小吃。外壳酥脆可口，内陷香软诱人，平价的街头小食让每个人都能尝到平淡生活中的一点小确幸。', '时蔬晚餐', '1', '2020-09-15 16:41:40');
INSERT INTO `foods` VALUES ('15', '香辣干锅虾', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/eDdHaEym8i.JPG?x-oss-process=image/crop,x_2,y_4,w_2363,h_1574/resize,m_lfit,w_1080/resize,w_454/format,webp', '鲜活的海白虾，水煮着吃，甘甜鲜美，省时省力，除了水煮，我家最常做的还有香辣干锅虾。经常在外吃饭的朋友知道，这道香辣干锅虾在饭店卖的都很火，香辣可口，可一份干锅虾动辄上百块，还是自己做更实惠，可以用最为新鲜的食材，外面可是吃不到的。很多朋友觉得这道菜只能在饭店吃，其实自己做也非常简单，几步就搞定，我来教给大家它的做法，菜谱呈上，好好学哦！', '海鲜类晚餐', '1', '2020-09-05 16:42:37');
INSERT INTO `foods` VALUES ('16', ' 芝麻烧饼', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180917/DPnejCBiTT.jpeg?x-oss-process=image/crop,x_983,y_78,w_1225,h_817/resize,w_454/format,webp', '“一九二九不出手，三九四九冰上走……”一到数九寒天，北京人就开始围坐在八仙桌旁，烧起旺旺的炭火，在热气腾腾的铜锅里涮起锅子。除了肥美的羊肉，八仙桌上一定有个位置属于—— 芝麻烧饼。', '面食 饼', '1', '2020-09-10 16:43:08');
INSERT INTO `foods` VALUES ('17', '红烧鸡翅', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20181125/5anXHnSXzJ.jpg?x-oss-process=image/crop,x_10,y_18,w_2673,h_1782/resize,w_454/format,webp', '鸡翅是很多人喜欢吃的美食，除了口感比较好也具有高蛋白。所以很多健身塑身的朋友除了选择鸡胸外，还会偶尔搭配一些鸡翅吃。在众多的做法中除了比较受欢迎的可乐鸡翅，你还能有更好的选择。在今天的美食分享中将一步一步带您制作这美味好吃的鸡翅', '鸡肉午餐', '1', '2020-09-14 16:43:35');
INSERT INTO `foods` VALUES ('18', '金玉满堂☛腰果玉米丁', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/QdGApReJNW.jpg?x-oss-process=image/crop,x_1,y_0,w_1054,h_702/resize,m_lfit,w_1080/resize,w_454/format,webp', '广东人大大小小的酒席上都会出现这一道好彩头的菜——金玉满堂，其实家常的说法就是腰果玉米丁，各个地方的材料虽有所差别，但主要原料都离不开腰果这种坚果，腰果顾名思义就是长的像腰子，它香飘四溢，清脆可口，跟玉米粒、西芹菜或胡萝卜丁一起炒，吃起来既有清甜又酥脆，从颜色搭配到食材的口感都非常丰富，所以才会有金玉满堂的叫法。腰果的别名叫鸡腰果、介寿果。它含有丰富的蛋白质、维生素B1，能够补充营养，有保护心血管、润肠通便、强身健体和润肤抗衰老的功效。', '时蔬晚餐', '1', '2020-08-07 16:44:35');
INSERT INTO `foods` VALUES ('19', '宫保鸡丁', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/x7ip3AfXCY.jpg?x-oss-process=image/crop,x_0,y_3,w_968,h_645/resize,m_lfit,w_1080/resize,w_454/format,webp', '宫保鸡丁这道菜在国外几乎成为中国菜的代表，鸡肉的鲜嫩配合黄瓜的爽口和花生的香脆，超级美味，这么经典的国宴菜，也许很多人会觉得宫保鸡丁好吃不好做，其实掌握要点，在家也可以做出好吃美味的宫保鸡丁。', '鸡肉午餐', '1', '2020-09-11 16:44:54');
INSERT INTO `foods` VALUES ('20', '照烧鸡腿饭', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190516/jDNiW8Xt7h.jpg?x-oss-process=image/crop,x_23,y_6,w_1967,h_1312/resize,w_454/format,webp', '一份好吃的照烧鸡腿饭，需要鸡肉鲜嫩松软，肉汁饱满，鸡皮煎到焦黄，挂着酱汁在灯光下闪闪发光，酱汁足够丰富，可以正好拌匀大部分米饭而不会把米饭浸泡得湿哒哒，酱汁味道甜度适中，也绝不太咸，有微微酒香却绝不过分抢味。配菜可以选择自己喜欢的蔬菜，米饭当然也是得松软Q弹才行。', '鸡肉 午餐', '1', '2020-09-10 16:45:47');
INSERT INTO `foods` VALUES ('21', '蜂蜜脆底小面包', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/834cHMs43f.jpg?x-oss-process=image/crop,x_0,y_190,w_1799,h_1198/resize,w_454/format,webp', '还记得曾经火热一时的蜂蜜脆底小面包吗？无论是菜场里还是临街现烤面包的店铺，总能瞧见它齐刷刷的排列在烤盘里，身披充满食欲诱惑的焦糖色，隔老远就能闻到香味，巴不得大喊一声：“老板，给我来一盘！”', '面食 早餐', '1', '2020-09-05 16:45:52');
INSERT INTO `foods` VALUES ('23', '低脂燕麦蛋挞', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/iXjWaZ2bWQ.jpg?x-oss-process=image/crop,x_0,y_7,w_2820,h_1880/resize,w_454/format,webp', '很多人都喜欢吃蛋挞，但又对它的高热量敬而远之，所以今天就来做一道低脂低热的蛋挞。用燕麦和香蕉做挞皮，牛奶和鸡蛋做挞水，没有黄油也无需淡奶油，满满的燕麦香气，嫩滑的蛋奶内馅，完全不必担心长肉哦！', '甜点晚餐', '1', '2020-09-24 16:47:02');
INSERT INTO `foods` VALUES ('25', '芒果酸奶慕斯', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190605/8swdwHdD5F.jpg?x-oss-process=image/crop,x_65,y_90,w_1018,h_679/resize,w_454/format,webp', ' 夏天快到了，做一个慕斯蛋糕清凉祛暑。加入酸奶的慕斯，口感清爽而且热量低，再加上香甜软糯而的芒果，漂亮又好吃。', '甜点 芒果 早餐', '1', '2020-09-11 16:48:47');
INSERT INTO `foods` VALUES ('26', '北海道牛奶曲奇 外表朴素却入口即化', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/hfYpQcmeec.jpg?x-oss-process=image/crop,x_0,y_916,w_1334,h_888/resize,m_lfit,w_1080/resize,w_454/format,webp', '北海道盛产牛乳，因此与北海道有关的甜品似乎总带着浓浓的乳香。蛋糕中的北海道戚风，浓滑的香草奶油馅总让人有吃冰淇淋的错觉；面包中的北海道土司，如云朵般洁白细腻的组织和甜甜的牛奶味儿着实让人欲罢不能。饼干中的北海道曲奇呢？自然也离不开这份乳香。', '面食 甜点 早餐', '1', '2020-09-20 21:30:43');
INSERT INTO `foods` VALUES ('27', '西红柿炒豆腐', 'http://localhost:7001/public/foodsupload/cover/1600850532743xhs.jpg', '豆腐的含钙量很高，具有宽中和脾、清热解毒的功效，西红柿含有丰富的胡萝卜素和各种维生素。两者搭配在一起炒制，清淡且酸甜可口，具有开胃、生津润燥的功效，非常适合孕前期的准妈妈食用。', '午餐 晚餐 豆类 ', '4', '2020-09-23 16:42:12');

-- ----------------------------
-- Table structure for foodstory
-- ----------------------------
DROP TABLE IF EXISTS `foodstory`;
CREATE TABLE `foodstory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `descstory` varchar(255) DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foodstory
-- ----------------------------
INSERT INTO `foodstory` VALUES ('1', '漫长冬日里的甜蜜时光', '一到冬天，就不怎么爱吃水果，真的是咬一口，透心凉。所以我选择吃果干。因为果干既保持了水果本身的营养价值，也不会凉到浑身发抖。', 'http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20180112/C2YAnRBj8H.jpg?x-oss-process=image/crop,x_0,y_110,w_597,h_398/resize,m_lfit,w_1080/resize,w_1300/format,webp', '1');
INSERT INTO `foodstory` VALUES ('2', '油条离不开豆浆？', '油条和豆浆，这两种简单又寻常的食物，搭配在一起就成了国民心里中的早餐黄金搭档，是很多人早餐的首选。左手一根油条，右手一杯豆浆，看似简简单单，却着实温暖着每一个平凡的我们', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20171227/wWKF3WmtFX.JPEG?x-oss-process=image/crop,x_0,y_332,w_976,h_651/resize,m_lfit,w_1080/resize,w_1300/format,webp', '1');
INSERT INTO `foodstory` VALUES ('3', '世界面包六强精英赛上海落幕，焙乐道带来比利时烘焙新力量', '面包六强精英赛，烘焙界的顶级赛事 ', 'http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20181120/eGxyTc6bfn.jpg?x-oss-process=image/crop,x_3,y_0,w_963,h_642/resize,w_1300/format,webp', '1');
INSERT INTO `foodstory` VALUES ('4', '香糯五谷', '“煲”出健康好滋味 飞利浦全新五谷电饭煲重磅亮相媒体品鉴沙龙', 'https://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190424/QrKT68Ni2T.jpg?x-oss-process=image/crop,x_5,y_46,w_5499,h_3666/resize,w_1300/format,webp', '1');
INSERT INTO `foodstory` VALUES ('5', 'Them1888有机奶酪，健康饮食有保证', '健康饮食有保证，源自丹麦第三大有机乳企，“近”在city’super超生活”的百年有机溯源活动', 'https://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190515/xTCRsnyX3w.jpg?x-oss-process=image/crop,x_0,y_62,w_1004,h_669/resize,w_1300/format,webp', '1');
INSERT INTO `foodstory` VALUES ('6', '巧思无界，创意无限 | 贝可拉巧克力之夜', '巧克力\r\n是甜蜜的食物', 'http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190412/nJhCF8SpFa.jpg?x-oss-process=image/crop,x_0,y_90,w_1078,h_719/resize,w_1300/format,webp', '2');
INSERT INTO `foodstory` VALUES ('7', '杏仁的百搭就像李钟硕收割小花', '刚刚追完《当你沉睡时》这对儿沉睡CP，被两人美好的颜值迷到眩晕。大概是睡觉太多的缘故，两人的牛奶皮肤在镜头里都要融化了。细数李钟硕这几年的电视剧，突然发现小哥哥简直是小花收割机一般的存在呢！', 'http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/ZSkDhpepJd.jpg?x-oss-process=image/crop,x_0,y_233,w_399,h_266/resize,m_lfit,w_1080/resize,w_1300/format,webp', '3');
INSERT INTO `foodstory` VALUES ('8', '健身餐也要高颜值\r\n健身餐也要高颜值\r\n健身餐也要高颜值', '在这个看脸的年代里，颜值即正义，颜值就是第一生产力。', 'http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/a6wymyBiSX.jpg?x-oss-process=image/crop,x_0,y_141,w_640,h_426/resize,m_lfit,w_1080/resize,w_1300/format,webp', '3');
INSERT INTO `foodstory` VALUES ('9', '鸡胸肉的正确打开方式', '每个健身者来说，对于鸡胸肉都不会陌生，作为健身餐最常见的食材之一，鸡胸肉让人又爱又恨。', 'http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/X5wTB53NZ4.jpg?x-oss-process=image/crop,x_0,y_3,w_575,h_383/resize,m_lfit,w_1080/resize,w_1300/format,webp', '2');

-- ----------------------------
-- Table structure for foodstorystep
-- ----------------------------
DROP TABLE IF EXISTS `foodstorystep`;
CREATE TABLE `foodstorystep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storydesstep` varchar(255) DEFAULT NULL,
  `storydessrc` varchar(255) DEFAULT NULL,
  `fs_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foodstorystep
-- ----------------------------
INSERT INTO `foodstorystep` VALUES ('1', '这个季节就有一种香甜可口的果干，男女老少都可以吃，并有着润心肺、止咳化痰、清热解渴、健脾胃的功效。这就是——柿饼。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180112/AXwSnBW7bC.JPEG', '1');
INSERT INTO `foodstorystep` VALUES ('2', '柿饼，又叫耿饼，是用柿子人工干燥成的饼状食品，又称干柿、柿干，是人们比较喜欢食用的果品，香甜可口，营养丰富，还可用作点心馅。柿饼的表皮颜色灰白，断面呈金黄半透明胶质状，柔软、甜美，性甘湿无毒在古时候是原朝鲜民间风靡的食品之一，也被朝鲜皇族热爱。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180112/x4pce6FXJC.jpg', '1');
INSERT INTO `foodstorystep` VALUES ('3', '相传公元前1525年，商朝第14任国王祖乙在位时，因为不满于国都相的残破，将国都迁到耿地（今山西省.河津市），次年，由于河患，又将国都迁至刑（今河北省境内），后封弟弟祖丙于耿地（今天的山西、河津、山王村一带），建立耿国，并立祖丙为国君。后来的耿氏族人，尊祖丙为耿氏之祖，为纪念这位氏祖，每年的腊月初五祖丙诞辰，供祭祖丙时摆设柿饼，柿饼（思丙）这一词渐渐的传开了。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180112/ZkmXCRM3fP.jpg', '1');
INSERT INTO `foodstorystep` VALUES ('4', '柿子营养价值很高，所含维生素和糖分比一般水果高1～2倍左右。柿饼中含有蔗糖、葡萄糖、果糖、蛋白质、胡萝卜素、维生素C、瓜氨酸、碘、钙、磷、铁等成分。适宜大便干结者、高血压患者、甲状腺疾病患者、长期饮酒者食用。\r\n大家都知道柿饼外面有一层白色的粉末，那个是什么呢？', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180116/HGnEBF6RpZ.jpg', '1');
INSERT INTO `foodstorystep` VALUES ('5', '因为在新鲜的柿子里含有大量水分，还含有葡萄糖和果糖等，当它被晒成柿饼时，水分逐渐蒸发，果肉里所含的葡萄糖和果糖随着渗透到表皮上来，这两种糖的性质不一样，果糖味道很甜，容易吸收水分，在它渗透到柿饼的表面时，就抓住空气中的水分，黏附在柿饼的表皮上，类似蜜饯外面的糖浆，葡萄糖的甜味不如果糖，但却不容易抓住空气中的水分，它渗透到柿饼的表皮上时，就成为一层白色的粉末，正好把黏附的果糖包住，使得整个柿饼都是干燥的，原来这层白粉是葡萄糖粉末。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180112/AbxcAebxr5.jpg', '1');
INSERT INTO `foodstorystep` VALUES ('6', '制作柿饼有自然干燥法和人工干燥法两种。在制作之前先要挑选充分成熟、肉质坚硬、果形端正、果顶平坦或微突起、无纵沟、含糖量高、少核或无核的品种。然后去皮：目前大都采用脚踏式半自动去皮机。将果皮转圈旋削下。去皮要干净，同时旋皮要薄而均匀。早些年间，人们通过人工去皮。\r\n自然干燥法顾名思义，就是放在户外暴晒，同时要防露水，防雨，大概需要15天左右即可上霜。\r\n人工干燥法则使用烤房，将柿子加热烘烤，大约两天左右，即可上霜。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180112/Neh84aBTzS.jpg', '1');
INSERT INTO `foodstorystep` VALUES ('7', '也许是油条和豆浆的搭档太过经典，提到油条人们就会想到豆浆，甚至豆浆和油条还成为爱情的象征，就像那首《豆浆油条》里唱到的那样，“豆浆离不开油条，让我爱你爱到老”。如果把他们分开呢？其实油条也是可以离开豆浆的，将口感松脆、韧劲十足的油条用来入馔，也是别样滋味哦。老油条炒丝瓜\r\n买回来的油条没有马上吃完，就不松脆了，但配上清香的丝瓜一炒，却化腐朽为神奇，变成一道清淡可口的好菜。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20171227/Y5bR4RMbNd.JPEG', '2');
INSERT INTO `foodstorystep` VALUES ('8', '制作用料：\r\n丝瓜400g \r\n油条1根\r\n姜片10g \r\n葱白段15g\r\n料酒5ml \r\n盐3g \r\n鸡精少许 \r\n红菜椒半个 \r\n油15ml\r\n制作步骤：\r\n1原料 ', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20171227/X53yde4c48.JPEG', '2');
INSERT INTO `foodstorystep` VALUES ('9', '2丝瓜刮皮切滚刀块，凉透的老油条和红菜椒切成1.5cm宽、5cm长的小段。葱白切段。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20171227/n2As7wcyRR.JPEG', '2');
INSERT INTO `foodstorystep` VALUES ('10', '3大火烧热炒锅中的油，先将葱白段和姜片略煎一下，出香味。锅中放入切好的丝瓜、油条段和菜椒片，大火炒1分钟 。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20171227/8Hth6PktcZ.JPEG', '2');
INSERT INTO `foodstorystep` VALUES ('11', '4环炒锅内壁淋入少许热水，盖上锅盖。待水蒸气冒出时丝瓜已熟，开盖调入盐、料酒和鸡精，大火炒匀即可。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20171227/PkJknCZsK3.JPEG', '2');
INSERT INTO `foodstorystep` VALUES ('12', '2018年11月15日，“第二届世界面包六强精英赛” (2nd Best of Mondial du Pain)在中国上海落下了帷幕，来自比利时的烘焙师们不负众望，以独具比利时特色的艺术面包取得了亚军的好成绩。为了这场比赛，他们准备了整整九个月，把所有的私人时间都用来备战这次的比赛。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20181120/3PR6GjQBDj.jpg', '3');
INSERT INTO `foodstorystep` VALUES ('13', '经过一年的充分准备，这些精英烘焙师们以“味觉&营养”为比赛核心，展现了精湛的烘焙工艺，让烘焙爱好者们享受了一次视觉与味蕾的双重盛宴，也让众多业内的烘焙师们有了一次沟通交流的机会。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20181120/4kwtfbRWjd.jpg', '3');
INSERT INTO `foodstorystep` VALUES ('14', '比利时有着悠久的烘焙文化史，从享誉全球的比利时国民美食——华夫饼就可见一斑，比利时除了在烘焙方面拥有自己的独特风格，同时也孕育了一批世界烘焙技能的革新者。其中不乏如焙乐道Puratos这样的佼佼者，作为全方位的烘焙原料供应商，近百年来一直怀揣着对烘焙革新的极大热情为全球逾百个国家和地区提供关于面包、糕点和巧克力的优质烘焙原料、专业可靠的技术和解决方案，在烘焙方面拥有自己的独特风格。\r\n', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20181120/zhKbmRAPzE.jpg', '3');
INSERT INTO `foodstorystep` VALUES ('15', '焙乐道，锐意创新的行业革新者\r\n焙乐道Puratos始终践行着帮助面包、糕点和巧克力制造者成功发展他们的事业的使命，同时焙乐道也积极支持世界烘焙事业的发展，在本次比赛中作为比利时队的参赛赞助商，助力弘扬比利时的烘焙文化。它研发的特有老面团术“司焙乐SAPORE”，以及烘焙原料“欧坦得O-tentic”，改变了面包的发酵以及烘焙方法，推动了面包烘焙文化的革新。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20181120/xHKbBkB4Mh.jpg', '3');
INSERT INTO `foodstorystep` VALUES ('16', '除此之外，焙乐道还是甜品爱好者们的福音。由焙乐道旗下顶级纯脂巧克力品牌贝可拉出品的秘鲁原产地黑巧克力，是顶级甜品师们秘而不宣的私藏佳品。这次比利时参赛的烘焙师也选用了焙乐道的巧克力和橙子搭配，带来更丰富而有层次的口感，这款作品打破了人们对面包的刻板印象，让面包爱好者们感受到了具有比利时特色巧克力加以点缀的风味面包。产品的味道和最终呈现的效果都很重要。这一款黑巧由克里奥洛和千里塔里奥可可豆混合制成，来自秘鲁原产地的可可豆层次丰富，带着微酸口感，是可可豆买家们追求的顶级臻品 。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20181120/webHN6c4Qc.jpg', '3');
INSERT INTO `foodstorystep` VALUES ('17', '传承美味，创新未来，六强赛场上一个个造型精致的面包作品，无一不凝聚了烘焙师们的热情和创造力。在这里，不仅可以看到各国面包文化与技艺的碰撞与交流，还可以体会到面包背后的传承与创新。资深的比利时面包师Bart、Guido和他们的年轻的学徒Joran，结合他们丰富的烘焙经验和新一辈的创意发想，将融合了比利时文化特色的美味尽情展现。而作为这支强队的推动者焙乐道食品公司，多年来同样默默做着所有专业烘焙师的创新推手，推动面包、糕点和巧克力的烘焙事业。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20181120/MFeQFSjwEK.jpg', '3');
INSERT INTO `foodstorystep` VALUES ('18', '飞利浦五谷电饭煲发布会暨媒体品鉴沙龙在北京圆满落幕，来自营养学界、美食、生活方式等不同领域的各大媒体、嘉宾汇聚一堂，共同探讨五谷饮食的美味奥义，探索当代都市人群五谷养生的解决方案。著名营养师顾中一先生分享了当前中国健康饮食现状，并从专业角度阐述了五谷杂粮对人体健康的重要意义。人气美食社区下厨房副总裁陈吉川女士现场揭晓了“万人五谷大调查”报告结果，深度解析当代中家庭五谷烹饪习惯。同时还邀请了美食作家、资深媒体人向大家分享了自己的五谷烹饪心得', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190424/PtcXw6tARj.jpg', '4');
INSERT INTO `foodstorystep` VALUES ('19', '者开始注重饮食养生和健康生活方式的培养。现场，北京营养师协会理事、著名营养师顾中一先生就提出了自己的建议。“五谷杂粮富含人体所需的多项膳食纤维和营养元素，正确食用不仅对都市人群改善亚健康状态大有裨益，对小朋友的成长发育更是意义非凡。”', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190424/FHskRdw2a8.jpg', '4');
INSERT INTO `foodstorystep` VALUES ('20', '为了进一步了解中国家庭对五谷饮食的认知态度和烹饪情况，飞利浦携手人气美食社区下厨房于近日发起了一项五谷饮食问卷调查，吸引近两万名消费者参与。报告显示：八成以上受访用户明确表示喜欢五谷杂粮，仅有20%的受访用户每天都会食用五谷料理。由此可见，尽管五谷杂粮的营养价值已经被日渐重视，但受困于“难烹饪”、“口感差”等问题，许多主妇妈妈和养生一族还是对五谷烹饪望而却步。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190424/dnpprcm5xZ.jpg', '4');
INSERT INTO `foodstorystep` VALUES ('21', '对此，著名美食媒体人、美食作家也现场表达了自己的心声：“在日常生活里，为了做出孩子爱吃的杂粮饭，我要花很多精力在食材搭配上，然而我始终相信科技进步才能给舌尖带来更多解决方案，更高效的烹饪工具才是使五谷米饭营养与口感两全的最佳方法。”', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190424/YFQNyTT5SP.jpg', '4');
INSERT INTO `foodstorystep` VALUES ('22', '为了帮助中国消费者消费者解决在五谷烹饪方面的困扰，全球厨房家电领导品牌飞利浦近日重磅推出全新五谷电饭煲。现场，飞利浦中国研究院首席科学家谭径微女士以及厨房家电品类高级市场经理刘楠女士与也为大家详细介绍了这款“五谷烹饪神器”：“突破性亲水速透技术的运用可使水分充分渗透谷物内芯，配合创新的智芯回漩IH技术和珐琅铸铁火炎锅，能够完整释放五谷香糯美味，不仅满足大人对五谷的需求和期待，连口味挑剔的小朋友都能轻松征服。”', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190424/WBhnjwTanH.jpg', '4');
INSERT INTO `foodstorystep` VALUES ('23', '图：飞利浦中国研究院首席科学家谭径微博士现场分享飞利浦五谷电饭煲的幕后研发故事，首次提出五谷“62%黄金含水比例”概念', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190424/ebdY7c7rWH.jpg', '4');
INSERT INTO `foodstorystep` VALUES ('24', '除创新科技外，飞利浦五谷电饭煲在锅体表面贴心设有7寸TFT彩屏，通过图片形式一目了然呈现多种菜单，让操作更加便捷省心，而内置22款健康菜单和多种烹饪模式，则可一网打尽白米五谷多样烹饪，无论是厨房小白还是养生一族，都能轻松享受弹糯美味。创新健康科技、高品质材质保障加以人性细节设计，让飞利浦五谷电饭煲一经问世便获得了2019iF设计大奖的认可。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190424/h4wDicYbZH.jpg', '4');
INSERT INTO `foodstorystep` VALUES ('25', '此外，飞利浦还携手如园四合院餐厅首席主厨马玉民先生结合五谷杂粮等时令元素定制了一套创意五谷菜谱，全方位展示五谷美食的魅力和五谷电饭煲的超凡实力。丰盛美味的五谷料理让现场媒体赞不绝口，好评不断，将活动推向新的高潮。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190424/tRm2XCFZ3Y.jpg', '4');
INSERT INTO `foodstorystep` VALUES ('26', '5月12日母亲节，Them1888(中文名“丹慕1888)丹麦有机奶酪，源自丹麦第三大有机乳企，携手丹麦王国驻上海总领馆、可持续食物发展项目、city’super超生活，在city’super超生活环贸IAPM店superlife culture club举行了“Them1888有机奶酪，健康饮食有保证，源自丹麦第三大有机乳企，“近”在city’super超生活”的百年有机溯源活动。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190515/ZsMAZtidSm.jpg', '5');
INSERT INTO `foodstorystep` VALUES ('27', '活动当天，丹麦驻上海总领馆总领事Jakob Linulf先生，为大家介绍了丹麦在全球领先的有机事业中的发展，有机产业对于丹麦本国的重要性和深远意义，政府的带头推动作用，以及有机食品在总领事个人生活中的重要性。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190515/DCFRCsH5EJ.jpg', '5');
INSERT INTO `foodstorystep` VALUES ('28', '可持续食物发展项目创始人Victoria女士，也给大家分享了可持续食物发展项目的意义和目的，有机食品对于可持续发展的深远贡献，以及倡导了每一位消费者都可以从我做起，积极参与到可持续、有机、环保的生活方式中来。 ', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190515/SmMSNYJNRi.jpg', '5');
INSERT INTO `foodstorystep` VALUES ('29', '随后，Them1888丹麦董事Franz Gammelgaard-Schmidt先生，谈到了Them百年有机乳企的发展，对于有机乳业的热爱与热衷，以及我们将这份穿越世纪的传承、中国首款丹麦有机奶酪，远渡重洋带来到中国来的美好愿景。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190515/C28GE6F2r7.jpg', '5');
INSERT INTO `foodstorystep` VALUES ('30', '本次活动还特别邀请到著名丹麦大厨Lars Pach先生，他称自己是最快乐的厨师，因为他相信自己所选择的食材，相信有机食物，更相信丹麦政府对于食品行业的严苛监管和高标准。Lars Pach先生以Them1888(中文名“丹慕1888)奶酪为主要食材，现场制作了各种美食，颜值与口感俱佳，迸发出了丹慕1888丹麦有机奶酪不同层次的口感，以及赋予创意的料理。 ', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190515/Zh644zwe7Y.jpg', '5');
INSERT INTO `foodstorystep` VALUES ('31', '作为丹麦第三大有机乳企，Them从1888年成立至今，一直致力于使用自有有机农场的有机奶源，研发和生产优质有机乳品，产品获得欧盟、丹麦、中国三重有机认证。Them1888作为全中国第一款有机奶酪，希望将百年的天然、优质、传承和匠心带给每一个中国家庭，为全球的环保事业和可持续发展做出自己力所能及的贡献。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190515/a7fx3RzacM.jpg', '5');
INSERT INTO `foodstorystep` VALUES ('32', '巧克力\r\n是甜蜜的食物\r\n是浪漫的礼物\r\n也是独具匠心的艺术', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190412/x3K8bGYeCh.jpg', '6');
INSERT INTO `foodstorystep` VALUES ('33', '贝克拉是焙乐道旗下的巧克力品牌，为了向中国展现巧克力所带来的无穷魅力和创造力，3月28日，贝可拉巧克力与比利时驻华大使馆于北京使馆内共同打造了“巧思无界”巧克力之夜。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190412/C3AhwseSxs.jpg', '6');
INSERT INTO `foodstorystep` VALUES ('34', '焙乐道贝可拉的国际技术顾问Stéphane Leroux\r\n比利时驻华大使H.E. Mr. Marc Vinck\r\n大使夫人Hilde Hermans\r\n', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190412/m8s2wGy4ae.jpg', '6');
INSERT INTO `foodstorystep` VALUES ('35', '现场被浓郁的巧克力气息包围着，简直就是巧克力爱好者的天堂！当夜的主角就是巧克力，它以各种创意造型出现在人们眼前，吸引人的眼球，诱惑人的味蕾，令现场的嘉宾体验了一场无与伦比的巧克力之旅。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190412/hR2HrxAkMK.jpg', '6');
INSERT INTO `foodstorystep` VALUES ('36', '日式柚子、啤酒巧克力、意大利黑醋慕斯……透过跨界的食材与极具想象力的灵感组合，将贝可拉原产地巧克力的独特味道带出味蕾的触动，并变成一场舌尖无法忘却的回忆。\r\n', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190412/TrKJrJCtPJ.jpg', '6');
INSERT INTO `foodstorystep` VALUES ('37', '比利时驻华大使H.E. Mr. Marc Vinck及其对巧克力十分热衷的大使夫人HildeHermans出席了晚宴；焙乐道食品有限公司亚太中东以及非洲地区总裁 Peter Deriemaeker也将贝可拉对巧克力一如既往的热情与追求与大家一一分享。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190412/sQc2sDt7k2.jpg', '6');
INSERT INTO `foodstorystep` VALUES ('38', '现场，享誉国际的巧克力大师Stéphane Leroux更是带着他最新特别为中国定制的巧克力雕塑艺术巨作《故宫太和殿》献礼中国，这件使用了70公斤贝可拉巧克力原料、长约1.2米、宽80厘米、高60cm米的巧克力艺术作品引发了现场所有来宾们的惊叹。在比利时馆上演了一场视觉、味觉、嗅觉的华彩盛宴。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190412/HYTm48np8Z.jpg', '6');
INSERT INTO `foodstorystep` VALUES ('39', '现场我们特别采访了焙乐道食品有限公司亚太中东以及非洲地区总裁Peter Deriemaeker和焙乐道贝可拉的国际技术顾问Stéphane Leroux，和两位的对话让我们更加了解这次“巧思无界”巧克力之夜的意义所在，也更深刻的认识了贝可拉在巧克力一直追求的目标和对做好巧克力的热情。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190412/N5Ww8cjsHX.jpg', '6');
INSERT INTO `foodstorystep` VALUES ('40', 'Peter： 贝可拉巧克力，是真正纯正属于比利时的。现在市面上有很多号称所谓的比利时巧克力，都是瑞士买的，或者是法国的。比利时的巧克力在全世界很有名，可以在大使馆举办，因为过去我们已经在50个不同的国家举办这样的“巧克力之夜”，算是全球各国比利时大使界都是非常有名，这也是特色活动。贝可拉“巧克力之夜”，他们都知道。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190412/bzMBeGQn4b.jpg', '6');
INSERT INTO `foodstorystep` VALUES ('41', 'Stephane： 主要是可可脂，如果可可脂够纯正，会产生很好的巧克力。另外，还有原产地如果可以在发酵或者是种植的过程中，可以种出很好的巧克力豆，也可以有非常好的巧克力。对我来说，这是两个很大、很重要的因素', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20190412/8mGPBGsfGR.jpg', '6');
INSERT INTO `foodstorystep` VALUES ('42', '刚刚追完《当你沉睡时》这对儿沉睡CP，被两人美好的颜值迷到眩晕。大概是睡觉太多的缘故，两人的牛奶皮肤在镜头里都要融化了。细数李钟硕这几年的电视剧，突然发现小哥哥简直是小花收割机一般的存在呢！', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/pRNtZ72W3p.jpg', '7');
INSERT INTO `foodstorystep` VALUES ('43', '杏仁在食物界横跨中西，无论是西式甜点还是中式养生粥，配蛋糕还是配猪肉，可谓是甜咸皆可，文武兼备，可攻可守（shou），能组百样CP。\r\n杏仁杯子蛋糕\r\n口感：香甜  \r\n难易程度：中级  \r\n烹饪时间：40分钟  \r\n用餐人数：1人', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/xHK22d3scj.jpg', '7');
INSERT INTO `foodstorystep` VALUES ('44', '配料表:\r\n全蛋液180ml\r\n细白砂糖150g\r\n低筋面粉110g\r\n杏仁粉40g\r\n黄油150g\r\n泡打粉4g\r\n细白砂糖625g\r\n蛋白300g\r\n水225ml\r\n杏仁片30g\r\n新鲜蓝莓50g\r\n工具:\r\n裱花袋\r\n制作步骤:', null, '7');
INSERT INTO `foodstorystep` VALUES ('45', '1.全蛋液、细白砂糖打发到乳白色。把泡打粉、杏仁粉混合，加入面粉中混合均匀，再把混合好的粉类一起筛入鸡蛋糊中，轻轻切拌成均匀的面糊。\r\n2.黄油化开成液态，加入面糊中。把蛋糕糊分别盛入纸杯中，把纸杯码放在烤盘上，移入烤箱，200℃烘烤约15分钟即可。\r\n3.细白砂糖和水放入小锅，加热至116℃。在糖水接近116℃的时候开始用电动打蛋器中速打发蛋白。糖水到达116℃后冲入正在搅打的蛋白。\r\n4.蛋白打发后，装入裱花袋，挤在蛋糕表面进行装饰。再加上杏仁片和新鲜蓝莓装饰，即可享用。\r\n陈皮杏仁糖水卧蛋', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/2rsfni2pbj.jpg', '7');
INSERT INTO `foodstorystep` VALUES ('46', '配料表:\r\n陈皮5g\r\n鸡蛋3个\r\n南杏（甜杏） 15g\r\n北杏（苦杏）5g\r\n冰糖30g\r\n水500ml\r\n制作步骤:\r\n1.陈皮和南北杏先用清水浸泡1小时，陈皮刮掉白瓤，避免煲出苦味。\r\n2.泡好的陈皮切丝，与南北杏及冰糖一起放入锅中，加入清水大火煮沸后改小火煮15分钟。\r\n3.再次开大火，打入鸡蛋，煮熟即可关火食用。\r\n杏仁雪梨瘦肉汤', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/bAE48CaekZ.jpg', '7');
INSERT INTO `foodstorystep` VALUES ('47', '配料表:\r\n雪梨1个\r\n杏仁10颗\r\n红枣2颗\r\n水适量\r\n瘦猪肉 200克\r\n食盐\r\n制作步骤:\r\n1、将猪肉切大块放入水中大火烧开后煮一两分钟，然后捞出，洗去表面的浮沫，沥干待用，将雪梨去皮去核后切块，杏仁漂洗干净，红枣洗净后去核对半切开备用。\r\n2、将雪梨、猪腱子肉、蜜枣、杏仁放入炖盅内，加入约1000毫升的清水，盖上炖盅盖子，放入电炖锅内，加入适量的水，再盖上炖锅盖子，炖约2小时后加入少许盐调味即可。', null, '7');
INSERT INTO `foodstorystep` VALUES ('48', '在这个看脸的年代里，颜值即正义，颜值就是第一生产力。\r\n对人来说是如此，对于食物来说亦是如此，中国人做菜讲究“色、香、味”俱全，这其中排第一就是“色”，也就是菜肴的颜值。品菜如品人，一道菜如果拥有较高的颜值，才能更吸引人，让人想去了解想去品尝。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/6EZPeicXkw.jpg', '8');
INSERT INTO `foodstorystep` VALUES ('49', '对于普通的食物来说颜值很重要，对于健身餐来说更为重要。有多少人因为管不住自己的嘴，因为贪吃耽误了自己的美好身材和美丽脸庞？在失去了之后，才追悔莫及，他们开始放弃各种美食，吃起健身餐。\r\n因为健身的需求，健身餐往往在“香”和“味”上要逊色于别的菜肴，在这样的情况下，如果还不出“色”一点，是真的只能靠毅力去吃了啊！今天就给大家推荐几道高颜值的健身餐，每天换着花样吃，绝对幸福感爆棚，吃出好身材！', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/2FxJ844G8y.jpg', '8');
INSERT INTO `foodstorystep` VALUES ('50', '亚洲牛肉沙拉', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/FWDDNFNCS6.jpg', '8');
INSERT INTO `foodstorystep` VALUES ('51', '沙拉是健身者们最不能缺少的一种选择了，这款亚洲牛肉沙拉，用煎熟的瘦牛肉搭配大量的新鲜蔬菜，一定让你无负担的享受精致美味。\r\n制作用料：\r\n瘦牛肉150g\r\n西兰花60g\r\n荷兰豆50g\r\n生菜30g\r\n甜椒30g\r\n白醋10g\r\n生抽3g\r\n橄榄油2g\r\n黑胡椒1g\r\n制作步骤：\r\n1.牛肉切粒，用黑胡椒腌制 15 分钟以上，煎熟备用。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/mrw7dDT2Tf.jpg', '8');
INSERT INTO `foodstorystep` VALUES ('52', '2.西兰花切小朵，荷兰豆去掉两头，分别焯熟。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/yKZX6TWsWt.jpg', '8');
INSERT INTO `foodstorystep` VALUES ('53', '3.生菜洗净，彩椒切丁。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/CZAabCZfn4.jpg', '8');
INSERT INTO `foodstorystep` VALUES ('54', '4.橄榄油、白醋、生抽、黑胡椒调成酱汁，倒入食材中，混合均匀后装盘。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/Y4yPmBe37k.jpg', '8');
INSERT INTO `foodstorystep` VALUES ('55', '奶酪烤茄子', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/ScBCHpj6JJ.jpg', '8');
INSERT INTO `foodstorystep` VALUES ('56', '当茄子和奶酪相遇会产生什么样的奇妙反应？如果在加上番茄呢？浓郁奶香搭配酸甜的口感，作为意大利面或三明治的配菜再合适不过。\r\n制作用料：\r\n茄子 150g\r\n西红柿 50g\r\n奶酪碎 20g\r\n芹菜 10g\r\n橄榄油 5g\r\n黑胡椒 5g\r\n盐 2g\r\n制作步骤：\r\n1.将茄子及番茄切片，欧芹切碎备用。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/sPBCP7jQWf.jpg', '8');
INSERT INTO `foodstorystep` VALUES ('57', '2.茄子铺上烤盘，洒上盐、黑胡椒及橄榄油。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/yG4Q38bNra.jpg', '8');
INSERT INTO `foodstorystep` VALUES ('58', '3.在茄子上摆上番茄片及芝士碎。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/F2XRDaHBT8.jpg', '8');
INSERT INTO `foodstorystep` VALUES ('59', '4.预热烤箱至摄氏 200 度，将茄子放入烤箱烤 10 分钟或至表面金黄色，取出撒上欧芹碎即可。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/92A2B5CB9C6906035C2864FA225E1940/20180328/C2DNRCaXsd.jpg', '8');

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES ('4', '3', '9');
INSERT INTO `likes` VALUES ('5', '3', '10');
INSERT INTO `likes` VALUES ('6', '2', '10');
INSERT INTO `likes` VALUES ('7', '2', '9');
INSERT INTO `likes` VALUES ('8', '3', '12');
INSERT INTO `likes` VALUES ('9', '3', '11');
INSERT INTO `likes` VALUES ('10', '4', '12');
INSERT INTO `likes` VALUES ('11', '4', '11');

-- ----------------------------
-- Table structure for materials
-- ----------------------------
DROP TABLE IF EXISTS `materials`;
CREATE TABLE `materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `num` varchar(20) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of materials
-- ----------------------------
INSERT INTO `materials` VALUES ('1', '龙利鱼', '400克', '1');
INSERT INTO `materials` VALUES ('2', '姜', '8克', '1');
INSERT INTO `materials` VALUES ('3', '大蒜', '20克', '1');
INSERT INTO `materials` VALUES ('4', '生抽', '5克', '1');
INSERT INTO `materials` VALUES ('5', '蚝油', '20克', '1');
INSERT INTO `materials` VALUES ('6', '盐', '2克', '1');
INSERT INTO `materials` VALUES ('7', '粉丝', '50克', '1');
INSERT INTO `materials` VALUES ('8', '小葱', '1根', '1');
INSERT INTO `materials` VALUES ('9', '小米椒', '1个', '1');
INSERT INTO `materials` VALUES ('10', '花椒粒', '2克', '1');
INSERT INTO `materials` VALUES ('11', '食用油', '30克', '1');
INSERT INTO `materials` VALUES ('12', '新鲜鱿鱼', '500克', '2');
INSERT INTO `materials` VALUES ('13', '大蒜', '6g', '3');
INSERT INTO `materials` VALUES ('14', '色拉油', '500ml', '3');
INSERT INTO `materials` VALUES ('15', '香油', '1ml', '3');
INSERT INTO `materials` VALUES ('16', '料酒', '2ml', '3');
INSERT INTO `materials` VALUES ('17', '鸡精', '5g', '3');
INSERT INTO `materials` VALUES ('18', '酱油', '5ml', '3');
INSERT INTO `materials` VALUES ('19', '姜', '5g', '3');
INSERT INTO `materials` VALUES ('20', '花椒', '3g', '3');
INSERT INTO `materials` VALUES ('21', '鸡腿', '3个', '3');
INSERT INTO `materials` VALUES ('22', '全麦粉', '120g', '4');
INSERT INTO `materials` VALUES ('23', '高筋面粉', '240g', '4');
INSERT INTO `materials` VALUES ('24', '蜂蜜', '36g', '4');
INSERT INTO `materials` VALUES ('25', '牛奶', '200g', '4');
INSERT INTO `materials` VALUES ('26', '盐', '2g', '4');
INSERT INTO `materials` VALUES ('27', '黄油', '30g', '4');
INSERT INTO `materials` VALUES ('28', '干酵母', '3.5g', '4');
INSERT INTO `materials` VALUES ('29', '鸡蛋', '1个', '4');
INSERT INTO `materials` VALUES ('30', '黄油', '50克', '5');
INSERT INTO `materials` VALUES ('31', '糖粉', '\r\n28克', '5');
INSERT INTO `materials` VALUES ('32', '全蛋液', '15克', '5');
INSERT INTO `materials` VALUES ('33', '香草精', '少许', '5');
INSERT INTO `materials` VALUES ('34', '蓝色色素', '\r\n2滴', '5');
INSERT INTO `materials` VALUES ('35', '装饰彩糖', '适量', '5');
INSERT INTO `materials` VALUES ('36', '奶粉', '5克', '5');
INSERT INTO `materials` VALUES ('37', '低筋小麦粉', '50克', '5');
INSERT INTO `materials` VALUES ('38', '鸡蛋', '2个', '6');
INSERT INTO `materials` VALUES ('39', '中筋小麦粉', '100克', '6');
INSERT INTO `materials` VALUES ('40', '盐', '5克', '6');
INSERT INTO `materials` VALUES ('41', '水', '100毫升', '6');
INSERT INTO `materials` VALUES ('42', '色拉油', '15毫升', '6');
INSERT INTO `materials` VALUES ('43', '香葱段', '3根', '6');
INSERT INTO `materials` VALUES ('44', '中筋小麦粉', '300克', '7');
INSERT INTO `materials` VALUES ('45', '热水', '220克', '7');
INSERT INTO `materials` VALUES ('46', '小葱', '5克', '7');
INSERT INTO `materials` VALUES ('47', '油', '5克', '7');
INSERT INTO `materials` VALUES ('48', '盐', '2克', '7');
INSERT INTO `materials` VALUES ('49', '牛肉', '\r\n250克', '8');
INSERT INTO `materials` VALUES ('50', '青椒', '150克', '8');
INSERT INTO `materials` VALUES ('51', '姜', '2片', '8');
INSERT INTO `materials` VALUES ('52', '生抽', '2汤匙', '8');
INSERT INTO `materials` VALUES ('53', '料酒', '1汤匙', '8');
INSERT INTO `materials` VALUES ('54', '盐', '适量', '8');
INSERT INTO `materials` VALUES ('55', '食用油', '适量', '8');
INSERT INTO `materials` VALUES ('56', '糖', '1/2汤匙', '8');
INSERT INTO `materials` VALUES ('57', '淀粉', '1平匙', '8');
INSERT INTO `materials` VALUES ('58', '中筋面粉', '200克', '9');
INSERT INTO `materials` VALUES ('59', '奶粉', '20克', '9');
INSERT INTO `materials` VALUES ('60', '糖', '20克', '9');
INSERT INTO `materials` VALUES ('61', '温水', '80克', '9');
INSERT INTO `materials` VALUES ('62', '干酵母', '2.5克', '9');
INSERT INTO `materials` VALUES ('63', '鸡蛋', '1个', '9');
INSERT INTO `materials` VALUES ('64', '鸡蛋', '4个', '10');
INSERT INTO `materials` VALUES ('65', '番茄', '\r\n2个', '10');
INSERT INTO `materials` VALUES ('66', '淀粉', '\r\n25克', '10');
INSERT INTO `materials` VALUES ('67', '白砂糖', '5克', '10');
INSERT INTO `materials` VALUES ('68', '盐\r\n', '\r\n2克', '10');
INSERT INTO `materials` VALUES ('69', '葱花', '5克', '10');
INSERT INTO `materials` VALUES ('70', '烙饼', '250克', '11');
INSERT INTO `materials` VALUES ('71', '番茄', '\r\n400克', '11');
INSERT INTO `materials` VALUES ('72', '金针菇', '120克', '11');
INSERT INTO `materials` VALUES ('73', '生抽', '20克', '11');
INSERT INTO `materials` VALUES ('74', '蚝油', '10克', '11');
INSERT INTO `materials` VALUES ('75', '番茄酱', '30克', '11');
INSERT INTO `materials` VALUES ('76', '糖', '3克', '11');
INSERT INTO `materials` VALUES ('77', '玉米淀粉', '2克', '11');
INSERT INTO `materials` VALUES ('78', '葱', '1根', '11');
INSERT INTO `materials` VALUES ('79', '大蒜', '3瓣', '11');
INSERT INTO `materials` VALUES ('80', '白胡椒粉', '0.2克', '11');
INSERT INTO `materials` VALUES ('81', '食用油', '30克', '11');
INSERT INTO `materials` VALUES ('82', '清水', '150毫升', '11');
INSERT INTO `materials` VALUES ('83', '盐', '1克', '11');
INSERT INTO `materials` VALUES ('84', '大白菜叶', '6片', '12');
INSERT INTO `materials` VALUES ('85', '鸡胸', '\r\n80克', '12');
INSERT INTO `materials` VALUES ('86', '黑木耳', '1把', '12');
INSERT INTO `materials` VALUES ('87', '胡萝卜', '半个', '12');
INSERT INTO `materials` VALUES ('88', '盐', '大半勺', '12');
INSERT INTO `materials` VALUES ('89', '姜\r\n', '2小块', '12');
INSERT INTO `materials` VALUES ('90', '料酒', '1勺', '12');
INSERT INTO `materials` VALUES ('91', '淀粉', '1勺', '12');
INSERT INTO `materials` VALUES ('92', '香葱', '少许', '12');
INSERT INTO `materials` VALUES ('93', '蛋挞皮', '8个', '13');
INSERT INTO `materials` VALUES ('94', '芒果肉', '100克', '13');
INSERT INTO `materials` VALUES ('95', '鸡蛋黄', '1个', '13');
INSERT INTO `materials` VALUES ('96', '黑芝麻', '1克', '13');
INSERT INTO `materials` VALUES ('97', '土豆', '3个', '14');
INSERT INTO `materials` VALUES ('98', '洋葱', '1/2颗', '14');
INSERT INTO `materials` VALUES ('99', '香葱', '10g', '14');
INSERT INTO `materials` VALUES ('100', '午餐肉', '1/2罐', '14');
INSERT INTO `materials` VALUES ('101', '淡奶油', '20g', '14');
INSERT INTO `materials` VALUES ('102', '鸡蛋', '3个', '14');
INSERT INTO `materials` VALUES ('103', '玉米淀粉', '50g', '14');
INSERT INTO `materials` VALUES ('104', '面包糠', '50g', '14');
INSERT INTO `materials` VALUES ('105', '盐', '3g', '14');
INSERT INTO `materials` VALUES ('106', '胡椒碎', '2g', '14');
INSERT INTO `materials` VALUES ('107', '食用油', '1000ml', '14');
INSERT INTO `materials` VALUES ('108', '新鲜大虾', '600克', '15');
INSERT INTO `materials` VALUES ('109', '藕', '1节', '15');
INSERT INTO `materials` VALUES ('110', '土豆', '2个', '15');
INSERT INTO `materials` VALUES ('111', '香芹', '2棵', '15');
INSERT INTO `materials` VALUES ('112', '干红辣椒', '5个', '15');
INSERT INTO `materials` VALUES ('113', '郫县豆瓣辣酱', '10克', '15');
INSERT INTO `materials` VALUES ('114', '白糖', '2克', '15');
INSERT INTO `materials` VALUES ('115', '生抽', '5克', '15');
INSERT INTO `materials` VALUES ('116', '香菜', '2棵', '15');
INSERT INTO `materials` VALUES ('117', '熟白芝麻', '2克', '15');
INSERT INTO `materials` VALUES ('118', '油', '5克', '15');
INSERT INTO `materials` VALUES ('119', '葱', '1根', '15');
INSERT INTO `materials` VALUES ('120', '姜', '1块', '15');
INSERT INTO `materials` VALUES ('121', '蒜\r\n', '1头', '15');
INSERT INTO `materials` VALUES ('122', '盐', '2克', '15');
INSERT INTO `materials` VALUES ('123', '中筋小麦粉', '400克', '16');
INSERT INTO `materials` VALUES ('124', '干酵母', '4克', '16');
INSERT INTO `materials` VALUES ('125', '水', '220毫升', '16');
INSERT INTO `materials` VALUES ('126', '麻酱', '50克', '16');
INSERT INTO `materials` VALUES ('127', '白芝麻', '50克', '16');
INSERT INTO `materials` VALUES ('128', '花椒碎', '5克', '16');
INSERT INTO `materials` VALUES ('129', '中筋小麦粉', '5克', '16');
INSERT INTO `materials` VALUES ('130', '生抽', '3滴', '16');
INSERT INTO `materials` VALUES ('131', '香油', '10毫升', '16');
INSERT INTO `materials` VALUES ('132', '水', '20毫升', '16');
INSERT INTO `materials` VALUES ('133', '鸡中翅', '800克', '17');
INSERT INTO `materials` VALUES ('134', '当归', '1片', '17');
INSERT INTO `materials` VALUES ('135', '香叶', '2片', '17');
INSERT INTO `materials` VALUES ('136', '八角', '2个', '17');
INSERT INTO `materials` VALUES ('137', '老姜', '3片', '17');
INSERT INTO `materials` VALUES ('138', '桂皮', '1片', '17');
INSERT INTO `materials` VALUES ('139', '黄冰糖', '20克', '17');
INSERT INTO `materials` VALUES ('140', '老抽', '2.5毫升', '17');
INSERT INTO `materials` VALUES ('141', '生抽', '50毫升', '17');
INSERT INTO `materials` VALUES ('142', '西芹', '2根', '18');
INSERT INTO `materials` VALUES ('143', '腰果', '40克', '18');
INSERT INTO `materials` VALUES ('144', '甜玉米粒', '1把', '18');
INSERT INTO `materials` VALUES ('145', '枸杞', '少许', '18');
INSERT INTO `materials` VALUES ('146', '盐', '1小勺', '18');
INSERT INTO `materials` VALUES ('147', '鸡粉', '少许', '18');
INSERT INTO `materials` VALUES ('148', '白糖', '1茶匙', '19');
INSERT INTO `materials` VALUES ('149', '淀粉', '1茶匙', '19');
INSERT INTO `materials` VALUES ('150', '料酒', '1汤匙', '19');
INSERT INTO `materials` VALUES ('151', '食盐', '1茶匙', '19');
INSERT INTO `materials` VALUES ('152', '蒜', '4瓣', '19');
INSERT INTO `materials` VALUES ('153', '干辣椒', '8条', '19');
INSERT INTO `materials` VALUES ('154', '花椒', '1小把', '19');
INSERT INTO `materials` VALUES ('155', '熟花生米', '20克', '19');
INSERT INTO `materials` VALUES ('156', '郫县豆瓣酱', '3汤匙', '19');
INSERT INTO `materials` VALUES ('157', '黄瓜', '1根', '19');
INSERT INTO `materials` VALUES ('158', '鸡胸', '350克', '19');
INSERT INTO `materials` VALUES ('159', '鸡腿', '1个', '20');
INSERT INTO `materials` VALUES ('160', '洋葱', '50克', '20');
INSERT INTO `materials` VALUES ('161', '姜', '10克', '20');
INSERT INTO `materials` VALUES ('162', '西兰花', '50克', '20');
INSERT INTO `materials` VALUES ('163', '胡萝卜', '20克', '20');
INSERT INTO `materials` VALUES ('164', '米饭', '2碗', '20');
INSERT INTO `materials` VALUES ('165', '生抽', '30毫升', '20');
INSERT INTO `materials` VALUES ('166', '老抽', '10毫升', '20');
INSERT INTO `materials` VALUES ('167', '蚝油', '30毫升', '20');
INSERT INTO `materials` VALUES ('168', '料酒', '30毫升', '20');
INSERT INTO `materials` VALUES ('169', '蜂蜜', '15毫升', '20');
INSERT INTO `materials` VALUES ('170', '水', '50毫升', '20');
INSERT INTO `materials` VALUES ('171', '盐', '2克', '20');
INSERT INTO `materials` VALUES ('172', '高筋面粉', '340g', '21');
INSERT INTO `materials` VALUES ('173', '低筋面粉', '70g', '21');
INSERT INTO `materials` VALUES ('174', '干酵母', '6g', '21');
INSERT INTO `materials` VALUES ('175', '盐', '5g', '21');
INSERT INTO `materials` VALUES ('176', '全蛋液', '100g', '21');
INSERT INTO `materials` VALUES ('177', '细砂糖', '70g', '21');
INSERT INTO `materials` VALUES ('178', '奶粉', '20g', '21');
INSERT INTO `materials` VALUES ('179', '牛奶', '160g', '21');
INSERT INTO `materials` VALUES ('180', '黄油', '18g', '21');
INSERT INTO `materials` VALUES ('181', '底部蘸料', '适量', '21');
INSERT INTO `materials` VALUES ('182', '白芝麻', '5g', '21');
INSERT INTO `materials` VALUES ('183', '细砂糖', '20g', '21');
INSERT INTO `materials` VALUES ('184', '玉米油', '30g', '21');
INSERT INTO `materials` VALUES ('185', '黄油', '30g', '21');
INSERT INTO `materials` VALUES ('186', '蜂蜜', '20g', '21');
INSERT INTO `materials` VALUES ('187', '水', '20g', '21');
INSERT INTO `materials` VALUES ('196', '即食燕麦片', '120克', '23');
INSERT INTO `materials` VALUES ('197', '香蕉', '2根', '23');
INSERT INTO `materials` VALUES ('198', '纯牛奶', '100克', '23');
INSERT INTO `materials` VALUES ('199', '鸡蛋', '2个', '23');
INSERT INTO `materials` VALUES ('200', '橄榄油', '10克', '23');
INSERT INTO `materials` VALUES ('207', '消化饼干', '75g', '25');
INSERT INTO `materials` VALUES ('208', '黄油', '35g', '25');
INSERT INTO `materials` VALUES ('209', '淡奶油', '200g', '25');
INSERT INTO `materials` VALUES ('210', '原味酸奶', '150g', '25');
INSERT INTO `materials` VALUES ('211', '芒果泥', '200g', '25');
INSERT INTO `materials` VALUES ('212', '细砂糖', '30g', '25');
INSERT INTO `materials` VALUES ('213', '吉利丁片', '15g', '25');
INSERT INTO `materials` VALUES ('214', '芒果泥', '30g', '25');
INSERT INTO `materials` VALUES ('215', '纯净水', '50g', '25');
INSERT INTO `materials` VALUES ('216', '吉利丁片', '5g', '25');
INSERT INTO `materials` VALUES ('217', '黄油', '50克', '26');
INSERT INTO `materials` VALUES ('218', '香草精', '1克', '26');
INSERT INTO `materials` VALUES ('219', '小苏打', '1克', '26');
INSERT INTO `materials` VALUES ('220', '牛奶', '50毫升', '26');
INSERT INTO `materials` VALUES ('221', '低筋小麦粉', '170克', '26');
INSERT INTO `materials` VALUES ('222', '豆腐', '350g', '27');
INSERT INTO `materials` VALUES ('223', '西红柿', '2个', '27');
INSERT INTO `materials` VALUES ('224', '青椒', '小葱', '27');
INSERT INTO `materials` VALUES ('225', '大蒜', '2瓣', '27');
INSERT INTO `materials` VALUES ('226', '花椒粉', '0.5g', '27');
INSERT INTO `materials` VALUES ('227', '盐', '1勺', '27');
INSERT INTO `materials` VALUES ('228', '鸡精', '1勺', '27');
INSERT INTO `materials` VALUES ('229', '食用油', '适量', '27');

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `times` datetime NOT NULL,
  `des` varchar(255) DEFAULT NULL,
  `img` text,
  `u_id` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of share
-- ----------------------------
INSERT INTO `share` VALUES ('9', '2020-09-23 15:33:45', '超级好吃的苹果派', 'http://localhost:7001/public/shareupload/1600846425439cover.jpg', '3');
INSERT INTO `share` VALUES ('10', '2020-09-23 15:36:10', '你想象不到的美食', 'http://localhost:7001/public/shareupload/1600846570259doufu.jpg', '3');
INSERT INTO `share` VALUES ('11', '2020-09-23 15:38:28', '今天做的手工曲奇。太好吃了', 'http://localhost:7001/public/shareupload/1600846708799quqi.jpg', '2');
INSERT INTO `share` VALUES ('12', '2020-09-23 15:40:19', '怎么样！新学的技术', 'http://localhost:7001/public/shareupload/1600846819963sijidou.jpg http://localhost:7001/public/shareupload/1600846819964mantou.jpg', '2');

-- ----------------------------
-- Table structure for step
-- ----------------------------
DROP TABLE IF EXISTS `step`;
CREATE TABLE `step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tips` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `step` varchar(20) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of step
-- ----------------------------
INSERT INTO `step` VALUES ('1', '将粉丝放入容器中，加入热水浸泡变软。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191008/jBRE4BFCAn.jpg?x-oss-process=image/crop,x_9,y_9,w_2820,h_1880', '1', '1');
INSERT INTO `step` VALUES ('2', '龙利鱼洗净后切成稍微大一些的块状。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191008/Zr6dPGEbx6.jpg', '2', '1');
INSERT INTO `step` VALUES ('3', '大蒜和姜分别切成碎末，小葱切葱花、小米椒切圈。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191008/zSNnHCNTej.jpg', '3', '1');
INSERT INTO `step` VALUES ('4', '龙利鱼块中加入姜末和料酒，拌匀后腌制十分钟。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191008/cCkFrJYXDe.jpg?x-oss-process=image/crop,x_9,y_9,w_2820,h_1880', '4', '1');
INSERT INTO `step` VALUES ('5', '小碗中加入蒜末、生抽、芝麻油、盐和蚝油，混合搅拌均匀成调料汁。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191008/8SGTzS5Cph.jpg?x-oss-process=image/crop,x_9,y_9,w_2820,h_1880', '5', '1');
INSERT INTO `step` VALUES ('6', '腌制好的龙利鱼装盘，放到开水锅中大火蒸三分钟。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191008/MPS8DHRFeG.jpg?x-oss-process=image/crop,x_9,y_9,w_2820,h_1880', '6', '1');
INSERT INTO `step` VALUES ('7', '盘中先铺上泡好的粉丝，上面放金针菇，然后淋入剩余的调料汁。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191008/niTEmkxekM.jpg?x-oss-process=image/crop,x_9,y_9,w_2820,h_1880', '7', '1');
INSERT INTO `step` VALUES ('8', '另起一锅倒食用油烧热，把花椒粒放进去炒香。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191008/CsmspYM7i8.jpg?x-oss-process=image/crop,x_9,y_9,w_2820,h_1880', '8', '1');
INSERT INTO `step` VALUES ('9', '取出蒸好的龙利鱼，上面撒葱花和米椒圈，最后淋上花椒油爆香即可。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191008/BnyXM8z8S3.jpg?x-oss-process=image/crop,x_9,y_9,w_2820,h_1880', '9', '1');
INSERT INTO `step` VALUES ('10', '除黄油外 所有材料混合揉光，鸡蛋只加蛋清', 'http://i2.chuimg.com/e4684c274d084bf5bd3e87b8172114ef_3024w_4032h.jpg?imageView2/2/w/300/interlace/1/q/90', '1', '4');
INSERT INTO `step` VALUES ('11', '加黄油混合，发酵两倍大', 'http://i2.chuimg.com/0ba98b203e94412d8f80945ec9c8a7b7_3024w_4032h.jpg?imageView2/2/w/300/interlace/1/q/90', '2', '4');
INSERT INTO `step` VALUES ('12', '发酵好面团重量，我是 分九个50克做蜜豆餐包 多余的再分三个做肉松海苔的', 'http://i2.chuimg.com/684a6978dbfe41caaf88b2f6241a5382_3024w_4032h.jpg?imageView2/2/w/300/interlace/1/q/90', '3', '4');
INSERT INTO `step` VALUES ('13', '面团排气压扁包入蜜豆', 'http://i2.chuimg.com/af5798bdb99b4c68996014263f61acb4_3024w_4032h.jpg?imageView2/2/w/300/interlace/1/q/90', '4', '4');
INSERT INTO `step` VALUES ('14', '这面团很好成型，这是包好的蜜豆包', 'http://i2.chuimg.com/7dd5a5ebff7a4b068227a20d94bc2eac_3024w_4032h.jpg?imageView2/2/w/300/interlace/1/q/90', '5', '4');
INSERT INTO `step` VALUES ('15', '肉松海苔沙拉酱，这个口感特别喜欢，先把沙拉酱挤上去，面团封口处有沙拉酱就不好粘合', 'http://i2.chuimg.com/d267386d6f404defae6ffdd87184dc92_3024w_4032h.jpg?imageView2/2/w/300/interlace/1/q/90', '6', '4');
INSERT INTO `step` VALUES ('16', '盖着发酵30分钟左右，视觉比之前大一圈', 'http://i2.chuimg.com/002daef6a4454096a4713ea83aa9fdc5_3024w_4032h.jpg?imageView2/2/w/300/interlace/1/q/90', '7', '4');
INSERT INTO `step` VALUES ('17', '170-180℃    18-20分钟  十分钟后注意观察面包颜色', 'http://i2.chuimg.com/6295c773992e4803aede5534fd2b2126_4032w_3024h.jpg?imageView2/2/w/300/interlace/1/q/90', '8', '4');
INSERT INTO `step` VALUES ('18', '一共12个，我试吃了一个味道非常好，早餐一个就够了', 'http://i2.chuimg.com/c87e5f3398fb4b7e8c021b4b0040ec13_3024w_4032h.jpg?imageView2/2/w/300/interlace/1/q/90', '9', '4');
INSERT INTO `step` VALUES ('19', '黄油提前室温软化，程度以手指能按一个凹坑为止', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/aQi6k8t7HY.jpg', '1', '5');
INSERT INTO `step` VALUES ('20', '加入糖粉拌匀', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/DMaJsxTPex.jpg', '2', '5');
INSERT INTO `step` VALUES ('21', '加入蛋液拌匀后筛入低筋粉和奶粉', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/aj6n7rhx6n.jpg', '3', '5');
INSERT INTO `step` VALUES ('22', '受抓成团后放入保鲜袋放入冰箱冷藏1小时', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/ZBYmFSPF3F.jpg', '4', '5');
INSERT INTO `step` VALUES ('23', '将冷藏好的面团取出室温10分钟，擀开成厚度为0.5cm的面片，用饼干模压出模型', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/EmazaRZ48n.jpg', '5', '5');
INSERT INTO `step` VALUES ('24', '把压好的饼干块取下来放在烤盘上', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/2SCTpm2tnB.jpg', '6', '5');
INSERT INTO `step` VALUES ('25', '再用个大的裱花嘴将中心压模，取出，烤箱170度预热，放入中层烤制15分钟即可取出放凉备用', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/CYTHwRphNn.jpg', '7', '5');
INSERT INTO `step` VALUES ('26', '准备好的蓝色和白色或黑色的糖霜', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/HHpPiEapxY.jpg', '8', '5');
INSERT INTO `step` VALUES ('27', '用油纸垫着饼干，珊瑚糖50克加入10克清水熬煮到160度，倒入饼干内，3个饼干为一组其中2个倒入珊瑚糖', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/4YSHtMaKXd.jpg', '9', '5');
INSERT INTO `step` VALUES ('28', '冷却后的饼干，用糖霜将两个饼干的表面铺上糖霜层', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/QiNCf6RWFe.jpg', '10', '5');
INSERT INTO `step` VALUES ('29', '一个有玻璃糖的饼干放底部，用糖霜粘上一个中空的，中间倒入彩糖，再盖上另一个有玻璃糖的饼干即可', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/3a85jCSJNk.jpg', '11', '5');
INSERT INTO `step` VALUES ('30', '凝固后即可~闪闪发光的，中间还能晃动的哦', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/TiEGfRAFmz.jpg?x-oss-process=image/crop,x_16,y_12,w_936,h_624', '12', '5');
INSERT INTO `step` VALUES ('31', '单个的玻璃糖也是超级美的', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/ftb5fWwMxK.jpg', '13', '5');
INSERT INTO `step` VALUES ('32', '在深碗中把鸡蛋打散，调入盐和水接着搅打均匀。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171228/dNBkCz4NK7.jpg', '1', '6');
INSERT INTO `step` VALUES ('33', '用筛网把面粉筛入，搅和均匀成面糊 （确认没有小面团）。最后撒入香葱花', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171228/5MG2Rf4esR.jpg', '2', '6');
INSERT INTO `step` VALUES ('34', '中火加热平底不粘锅，均匀抹入一层薄油，倒入一大勺鸡蛋面糊。判断面糊最佳的稀稠程度是：轻轻晃动锅体，面糊能够均匀地向平底锅四周散开，很快流平。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171228/SxjrbJacZR.jpg', '3', '6');
INSERT INTO `step` VALUES ('35', '待蛋饼单面固定后，用铲子翻面，把另一面也烙熟定型，一张鸡蛋饼就做好了！', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171228/eb7cWrbWBT.jpg', '4', '6');
INSERT INTO `step` VALUES ('36', '面粉加热水用筷子搅拌成极其柔软的面团，大家通过下面的面团的图片也能看出来，这个面团极其柔软，水分极大。注意这里，要用以烫手为宜的热水。不要开水（那就成了烫面饼，口感会发粘）；也不要用温水或是凉水（这样保证不了大家做出来的饼是柔软的）。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/AHzyjhaQbZ.JPG', '1', '7');
INSERT INTO `step` VALUES ('37', '然后把面团放到铺了干面粉的案板上，下手把它揉匀，这里会粘手，没关系，我们少用一点干面粉防粘。面团揉匀后，把它静置松弛饧上20分钟左右。如果空气湿度大，不用盖上保鲜膜或是湿布，如果空气干燥，那就需要盖上湿布或是扣上一个盆之类的防止其表面变干。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/iZDY2SPxbG.JPG', '2', '7');
INSERT INTO `step` VALUES ('38', '小葱或是香葱洗净，切碎待用。夏天超市里的小葱相当便宜，如果是冬天没有小葱的季节就用香葱代替，您怎么方便怎么来。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/RyzM4fQaXj.JPG', '3', '7');
INSERT INTO `step` VALUES ('39', '面团松弛好之后，把它擀开，擀薄一些，先用刷子刷上一层油，然后撒上盐，要撒均匀些，不然烙饼的味道不均匀（您也可以在和面时，把盐加到面粉里），最后再撒满小葱末，葱多些味道才足。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/mc23S882yP.JPG', '4', '7');
INSERT INTO `step` VALUES ('40', '然后顺着一侧把饼皮卷起来，卷的不要太紧，一点点地提着面皮往上卷，如图。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/nr3KSbm8X7.JPG', '5', '7');
INSERT INTO `step` VALUES ('41', '全部卷好之后，把收口捏住，然后分成5个剂子（我分成了5个，您随意），两侧的切口捏住，盘起来，按扁，如图所示', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/tHkdWCnDY2.JPG', '6', '7');
INSERT INTO `step` VALUES ('42', '用擀面杖把烙饼的生坯轻轻擀薄擀圆，这里不要只擀一面，一面擀几下之后要翻个面儿再接着擀，而且不要过于用力，力道要轻柔。不然烙饼的层次不明显。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/eCzX54Cz2X.JPG', '7', '7');
INSERT INTO `step` VALUES ('43', '锅底刷油（我是直接用油壶倒的油），把烙饼生坯放进锅中，用中大火烙饼。咱们家庭炉灶一般都是天然气，火力本身就不算硬，所以这里要用中大火烙饼，不要大火，饼会糊，不要小火，饼会因为长时间在锅中受煎熬导致水分流失严重，从而导致烙饼发硬。原则就是，在保证饼不会糊的前提下，能用多大火就用多大火。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/krSbnkKSQQ.JPG', '8', '7');
INSERT INTO `step` VALUES ('44', '准备好所需食材', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/ikCsWNn2Jf.jpg', '1', '8');
INSERT INTO `step` VALUES ('45', '牛肉洗净切丝放入容器中', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/SBSTyY4Nnr.jpg', '2', '8');
INSERT INTO `step` VALUES ('46', '调入生抽、料酒、糖、适量盐、淀粉和一汤匙食用油', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/k8BEYYRdXC.jpg', '3', '8');
INSERT INTO `step` VALUES ('47', '抓拌均匀后腌制20分钟', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/8QiZ47mACr.jpg', '4', '8');
INSERT INTO `step` VALUES ('48', '青椒和姜分别切丝备用', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/in6dfk2X6w.jpg', '5', '8');
INSERT INTO `step` VALUES ('49', '锅中放油烧热，小火炒香姜丝', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/yCDNycCdAs.jpg', '6', '8');
INSERT INTO `step` VALUES ('50', '再放入腌制好的牛肉炒至断生盛出', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/DCyfEYhMGi.jpg', '7', '8');
INSERT INTO `step` VALUES ('51', '另起锅倒油烧热，放入青椒丝快速翻炒变软', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/f6QNFarFHX.jpg', '8', '8');
INSERT INTO `step` VALUES ('52', '按照个人口味调入适量盐', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/DcB7CFaBNB.jpg', '9', '8');
INSERT INTO `step` VALUES ('53', '再放入炒好的牛肉丝', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/F5RkbMxddk.jpg', '10', '8');
INSERT INTO `step` VALUES ('54', '混合翻炒均匀即可', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/x2T4BQZXMJ.jpg', '11', '8');
INSERT INTO `step` VALUES ('55', '准备好所需食材，将食材称重。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/Ww8ANr6atz.jpg?x-oss-process=image/crop,x_4,y_9,w_2820,h_1880', '1', '9');
INSERT INTO `step` VALUES ('56', '面粉、糖、奶粉和酵母混合均匀，打入鸡蛋，再倒入温水搅拌均匀', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/GYbw83Bmni.jpg?x-oss-process=image/crop,x_7,y_9,w_2820,h_1880', '2', '9');
INSERT INTO `step` VALUES ('57', '然后揉成光滑的软面团，覆盖保鲜膜放温暖处发酵', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/hh8QdSCyt4.jpg?x-oss-process=image/crop,x_0,y_0,w_2818,h_1877', '3', '9');
INSERT INTO `step` VALUES ('58', '待面团发酵至原来的2.5倍大，用手指蘸面粉从中间戳进去再拔出，面团不回缩就表示发酵好了。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/d2hsQXmQWB.jpg?x-oss-process=image/crop,x_4,y_7,w_2820,h_1880', '4', '9');
INSERT INTO `step` VALUES ('59', '操作台上撒干面粉防粘，取出面团揉匀排气。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/efZsibs4AC.jpg?x-oss-process=image/crop,x_2,y_7,w_2822,h_1882', '5', '9');
INSERT INTO `step` VALUES ('60', '用擀面杖擀成厚度约为1.2厘米的长方形厚片', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/XDPMMWbpZy.jpg?x-oss-process=image/crop,x_0,y_7,w_2820,h_1880', '6', '9');
INSERT INTO `step` VALUES ('61', '然后切成宽度约为三厘米的条状', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/2eFif3tD6p.jpg?x-oss-process=image/crop,x_4,y_12,w_2818,h_1877', '7', '9');
INSERT INTO `step` VALUES ('62', '再切成正方或长方的小块，覆盖保鲜膜醒发半个小时。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/i424kjTbxG.jpg?x-oss-process=image/crop,x_4,y_9,w_2820,h_1880', '8', '9');
INSERT INTO `step` VALUES ('63', '待小面块体积明显变大，轻按表面可以回弹的状态。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/WaksEEfWz3.jpg?x-oss-process=image/crop,x_7,y_4,w_2820,h_1880', '9', '9');
INSERT INTO `step` VALUES ('64', '平底锅无需放油，将面块依次排放锅中。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/ANiZ8TKJkP.jpg?x-oss-process=image/crop,x_7,y_9,w_2820,h_1880', '10', '9');
INSERT INTO `step` VALUES ('65', '开小火，煎至两面呈焦黄色即可', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/BShP5sr8rf.jpg?x-oss-process=image/crop,x_7,y_9,w_2820,h_1880', '11', '9');
INSERT INTO `step` VALUES ('66', '外脆内软、奶香十足的小馒头就完成了，一口一个超过瘾', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190507/nrPRm86rbY.jpg?x-oss-process=image/crop,x_9,y_12,w_2818,h_1877', '12', '9');
INSERT INTO `step` VALUES ('67', '准备好材料', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180801/TWMG4HKF6E.JPG', '1', '10');
INSERT INTO `step` VALUES ('68', '番茄如果个头小的就用三个，大的就用两个，把番茄去皮切成碎，放入2茶匙糖抓匀放置十五分钟', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180801/5PyB3fBnic.JPG', '2', '10');
INSERT INTO `step` VALUES ('69', '鸡蛋打散，倒入淀粉搅拌到无颗粒', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180801/bw6CKi8jnQ.JPG', '3', '10');
INSERT INTO `step` VALUES ('70', '把番茄滤掉腌出的水后放入蛋糊里面', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180801/AjAhKssy5F.JPG', '4', '10');
INSERT INTO `step` VALUES ('71', '放入1茶匙盐，放入葱碎搅拌均匀', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180801/JFntnZ5mrT.JPG', '5', '10');
INSERT INTO `step` VALUES ('72', '不粘锅内刷上一层油，倒入面糊摊好，不要太薄也不要太厚，用中小火煎到底面定型', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180801/Ys7mJ4ajhn.JPG', '6', '10');
INSERT INTO `step` VALUES ('73', '翻面后继续煎1分钟，煎的时候要转动一下锅让它受热均匀', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180801/xKP7eQy8jf.JPG', '7', '10');
INSERT INTO `step` VALUES ('74', '煎好后拿出卷起，最后切块即可', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180801/5bpHdXpswE.JPG', '8', '10');
INSERT INTO `step` VALUES ('75', '将烙饼随意的切成块状或条状。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/3Kdj8XsR3a.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880', '1', '11');
INSERT INTO `step` VALUES ('76', '番茄表面划十字刀，放入开水中烫煮约三十秒捞出冲凉水。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/KpZnwR4KN2.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880', '2', '11');
INSERT INTO `step` VALUES ('77', '然后将番茄的外皮剥掉切成小丁块', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/nYab4GNe2E.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880', '3', '11');
INSERT INTO `step` VALUES ('78', '小碗中调入生抽、蚝油、糖、番茄酱和玉米淀粉，搅拌均匀成调味汁，切葱花和蒜末备用。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/eBDNXHRGBe.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880', '4', '11');
INSERT INTO `step` VALUES ('79', '锅中倒食用油烧至五成热，放入葱花和蒜末小火炒香。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/Mty4Efp5Xi.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880', '5', '11');
INSERT INTO `step` VALUES ('80', '接着放入番茄丁，继续用小火炒出汤汁。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/Dsp7wZPWew.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880', '6', '11');
INSERT INTO `step` VALUES ('81', '放入金汁菇翻炒均匀，煮至金针菇变软。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/3QsYQ4MaCb.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880', '7', '11');
INSERT INTO `step` VALUES ('82', '加入调味汁翻炒均匀，再添入清水煮沸。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/QeKFAMWYmK.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880', '8', '11');
INSERT INTO `step` VALUES ('83', '把切好的烙饼放入锅中，翻拌均匀使之裹上汤汁。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/sW78YccpmF.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880', '9', '11');
INSERT INTO `step` VALUES ('84', '煮约半分钟至汤汁粘稠，调入白胡椒粉和盐，撒葱花出锅即可。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/MzHcsQiA47.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880', '10', '11');
INSERT INTO `step` VALUES ('85', '酸甜开胃的茄汁金针菇烩饼就做好了，有饭有菜太满足了~', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20191009/it62jRrd6K.jpg?x-oss-process=image/crop,x_2,y_2,w_2820,h_1880', '11', '11');
INSERT INTO `step` VALUES ('86', '准备好所需食材，鸡蛋黄分离出来。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190514/bzfjpdHanr.jpg?x-oss-process=image/crop,x_0,y_7,w_2818,h_1877', '1', '13');
INSERT INTO `step` VALUES ('87', '将蛋挞皮室温放置十五分钟左右，使之解冻变软。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190514/GWrCYeyCsY.jpg?x-oss-process=image/crop,x_4,y_9,w_2820,h_1880', '2', '13');
INSERT INTO `step` VALUES ('88', '芒果对半切开划十字刀，取出果肉。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190514/JT8HXKjwh8.jpg?x-oss-process=image/crop,x_4,y_9,w_2820,h_1880', '3', '13');
INSERT INTO `step` VALUES ('89', '将芒果肉分别放到软化后的蛋挞皮中，然后对折，边缘捏紧。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190514/nz5yBJyYjE.jpg?x-oss-process=image/crop,x_4,y_9,w_2820,h_1880', '4', '13');
INSERT INTO `step` VALUES ('90', '烤盘铺油纸防止烤制过程中挞皮出油，将包好芒果肉的酥皮排放烤盘内。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190514/JAiKH7bDQt.jpg?x-oss-process=image/crop,x_4,y_9,w_2820,h_1880', '5', '13');
INSERT INTO `step` VALUES ('91', '烤箱提前上下火200度预热，将烤盘放入中层烤约十分钟。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190514/GBEKNRjFST.jpg', '6', '13');
INSERT INTO `step` VALUES ('92', '取出将表面的锡纸剥掉，注意别烫手，在上面均匀的刷上蛋黄液。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190514/cF8YRWb8Ef.jpg', '7', '13');
INSERT INTO `step` VALUES ('93', '然后撒黑芝麻，放回烤箱再继续烤十分钟。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190514/8awExjz3Ww.jpg', '8', '13');
INSERT INTO `step` VALUES ('94', '待酥皮表面金黄分层即可出炉，移至烤网晾凉后食用。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190514/ckihyMxHWd.jpg', '9', '13');
INSERT INTO `step` VALUES ('95', '香甜酥脆的芒果酥完成，吃上就不想停嘴呢！', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190514/BKzPE42W3T.jpg', '10', '13');
INSERT INTO `step` VALUES ('96', '准备食材', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/wZJAazapda.jpg', '1', '12');
INSERT INTO `step` VALUES ('97', '黑木耳泡发', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/DhMktWdTxE.jpg', '2', '12');
INSERT INTO `step` VALUES ('98', '鸡胸肉切丁', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/H2SCN6347e.jpg', '3', '12');
INSERT INTO `step` VALUES ('99', '胡萝卜去皮切小块', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/Ch2566KW8y.jpg', '4', '12');
INSERT INTO `step` VALUES ('100', '把鸡胸肉、黑木耳、胡萝卜还有两小块姜放入搅肉机里，搅成泥状', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/hKmhjipr5N.jpg', '5', '12');
INSERT INTO `step` VALUES ('101', '放入料酒和大半勺盐', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/bhRzTERGRD.jpg', '6', '12');
INSERT INTO `step` VALUES ('102', '放入一勺淀粉，顺时针搅拌均匀至上劲', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/d2FN3hCkdd.jpg', '7', '12');
INSERT INTO `step` VALUES ('103', '大白菜叶焯水，焯熟后平铺晾干，晾凉', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/iW6hZRXCdp.jpg', '8', '12');
INSERT INTO `step` VALUES ('104', '大白菜去掉根部，留叶子部分在中间放入鸡肉丸', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/xA7kdCBRNE.jpg', '9', '12');
INSERT INTO `step` VALUES ('105', '用白菜包裹起肉丸，在封口处用葱打个结，然后剪掉多余白菜叶', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/tMF547AzRy.jpg', '10', '12');
INSERT INTO `step` VALUES ('106', '上锅蒸熟即可', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171206/M8nFmtskz4.jpg', '11', '12');
INSERT INTO `step` VALUES ('107', '洗净蔬菜，土豆去皮切大块备用，香葱切小段.', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190104/ZMtC7jGFf5.jpg?x-oss-process=image/crop,x_165,y_0,w_1863,h_1242', '1', '14');
INSERT INTO `step` VALUES ('108', '坐一锅开水，将切好的土豆放入煮熟，筷子能轻松戳入就说明熟了', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190104/XNszrCcbfm.jpg?x-oss-process=image/crop,x_164,y_0,w_1863,h_1242', '2', '14');
INSERT INTO `step` VALUES ('109', '捞起土豆沥干水，将土豆压泥', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190104/bRMZ6zSJdy.jpg?x-oss-process=image/crop,x_228,y_0,w_1861,h_1240', '3', '14');
INSERT INTO `step` VALUES ('110', '加入盐、胡椒、香葱、淡奶油搅拌均匀', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190104/Mi6fSParJY.jpg?x-oss-process=image/crop,x_198,y_9,w_1670,h_1113', '4', '14');
INSERT INTO `step` VALUES ('111', '洋葱、午餐肉切小丁，热锅炒香', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190104/yYcT74W6m5.jpg?x-oss-process=image/crop,x_251,y_14,w_1841,h_1227', '5', '14');
INSERT INTO `step` VALUES ('112', '拌入土豆泥中，搅拌均匀', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190104/NaDnWQ6iYQ.jpg?x-oss-process=image/crop,x_231,y_69,w_1759,h_1173', '6', '14');
INSERT INTO `step` VALUES ('113', '将土豆泥分成约30g每个的圆球，按压成饼状', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190104/JEsSsMweYX.jpg?x-oss-process=image/crop,x_218,y_36,w_1808,h_1205', '7', '14');
INSERT INTO `step` VALUES ('114', '锅中倒油，开大火热至筷子插入冒小泡即可开炸。可乐饼依次裹上玉米淀粉、鸡蛋液、面包糠', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190104/3ch2Drmadf.jpg?x-oss-process=image/crop,x_271,y_92,w_1575,h_1049', '8', '14');
INSERT INTO `step` VALUES ('115', '下锅炸，炸至来两面金黄。捞出后沥油即可', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190104/i5PnDAT8zs.jpg?x-oss-process=image/crop,x_145,y_414,w_2063,h_1375', '9', '14');
INSERT INTO `step` VALUES ('116', '把虾剪掉虾须和虾枪，用牙签把虾线挑出来，千万不要开背，不然虾肉吃起来会老', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/kz7kXGKwJC.JPG', '1', '15');
INSERT INTO `step` VALUES ('117', '可以准备一些自己喜欢的蔬菜来做为配菜，我放了莲藕、土豆，在这道菜里，无论您放什么蔬菜 ，香芹都不能少，有两棵就够，它给整道菜提香提味儿', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/bGYpwtcWBM.JPG', '2', '15');
INSERT INTO `step` VALUES ('118', '土豆和莲藕都要洗净去皮，然后切成薄片待用。为了这道菜更加可口，这些配菜是要过油炸一下的，所以，不要切厚了', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/33hPrwniFf.JPG', '3', '15');
INSERT INTO `step` VALUES ('119', '热锅热油，分批次把虾下锅油炸至外壳酥脆，然后捞出来沥油。虾入锅前一定要把水分晾干或是用厨房纸巾擦拭一下，不然油溅的厉害，操作时要小心，防止被油烫伤', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/8ezMDFkfzr.JPG', '4', '15');
INSERT INTO `step` VALUES ('120', '炸完虾，再把藕片和土豆片都下锅炸熟，捞出沥油。芹菜不要油炸了，洗净切成长段待用', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/76BjECGbWx.JPG', '5', '15');
INSERT INTO `step` VALUES ('121', '热锅热油，先下葱姜蒜和干辣椒段，小火炒香，再放郫县红油豆瓣酱，继续小火炒出红油。由于家人不太能吃辣，所以，我这里省略了干辣椒，大家可以根据自己口味酌情添加', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/AarDRJPciZ.JPG', '6', '15');
INSERT INTO `step` VALUES ('122', '接着下香芹段，小火炒出芹菜的清香气，芹菜炒至变色即可', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/ZTmYwkRaf8.JPG', '7', '15');
INSERT INTO `step` VALUES ('123', '然后下炸过的虾和其他配菜，调入少许白糖和生抽，中火翻炒均匀即可关火，关火后可以撒1小把熟白芝麻再翻炒均匀。可以根据实际情况决定放不放盐，因为郫县红油豆瓣酱有咸味儿。装盘后用香菜做点缀', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/bCbzPaTFPx.JPG', '8', '15');
INSERT INTO `step` VALUES ('124', '面粉中加入安琪酵母和匀。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/mKayJpc7a3.jpg?x-oss-process=image/crop,x_102,y_101,w_617,h_411', '1', '16');
INSERT INTO `step` VALUES ('125', '分次加水，和匀。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/dRN7mT3bem.jpg?x-oss-process=image/crop,x_145,y_61,w_660,h_440', '2', '16');
INSERT INTO `step` VALUES ('126', '反复揉搓成光滑面团。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/QmtA2pnrS6.jpg?x-oss-process=image/crop,x_161,y_22,w_687,h_458', '3', '16');
INSERT INTO `step` VALUES ('127', '在面团表面刷上一层香油，以减少面团和空气的接触。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/2kkBwcCZ8w.jpg?x-oss-process=image/crop,x_98,y_91,w_620,h_413', '4', '16');
INSERT INTO `step` VALUES ('128', '将面团放入容器，覆盖保鲜膜室温醒发 30 分钟。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/cb4HEmNsfW.jpg?x-oss-process=image/crop,x_135,y_101,w_663,h_441', '5', '16');
INSERT INTO `step` VALUES ('129', '待醒期间，将芝麻酱、小茴香花椒碎、 3ml 香油混合搅拌均匀。\r\n', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/QWnAt6zAe3.jpg?x-oss-process=image/crop,x_228,y_21,w_500,h_333', '6', '16');
INSERT INTO `step` VALUES ('130', '取 5g 面粉和 20ml 水混合均匀', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/X4wMYNzx6G.jpg?x-oss-process=image/crop,x_127,y_36,w_539,h_359', '7', '16');
INSERT INTO `step` VALUES ('131', '滴入 3 滴生抽，拌匀。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/6hS4hDF7jS.jpg?x-oss-process=image/crop,x_57,y_21,w_580,h_386', '8', '16');
INSERT INTO `step` VALUES ('132', '在案板上刷上薄薄的一层香油。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/t6YcktmYJQ.jpg?x-oss-process=image/crop,x_185,y_53,w_664,h_442', '9', '16');
INSERT INTO `step` VALUES ('133', '取出发酵好的面团放在案板上，用擀面杖擀成厚度均匀的薄片，厚度需低于 1mm 。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/WFZAcbGHMn.jpg?x-oss-process=image/crop,x_73,y_52,w_769,h_513', '10', '16');
INSERT INTO `step` VALUES ('134', '将麻酱馅料均匀地抹在面片上。\r\n', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/ZbBfaNRz5j.jpg?x-oss-process=image/crop,x_3,y_23,w_804,h_535', '11', '16');
INSERT INTO `step` VALUES ('135', '从面片一端开始卷，一边卷一边拉伸，尽量多卷几圈，卷到头收口。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/G37zZXhxZQ.jpg?x-oss-process=image/crop,x_95,y_14,w_753,h_502', '12', '16');
INSERT INTO `step` VALUES ('136', '切割成每个 50g 左右的剂子。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/y8ZhMsfxjz.jpg?x-oss-process=image/crop,x_52,y_22,w_783,h_522', '13', '16');
INSERT INTO `step` VALUES ('137', '将每个剂子稍稍拉伸，使其平整。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/EZf5CPnN5S.jpg?x-oss-process=image/crop,x_56,y_43,w_739,h_492', '14', '16');
INSERT INTO `step` VALUES ('138', '依次将剂子的两端切面处捏紧、收拢。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/rm6Pz7iRPw.jpg?x-oss-process=image/crop,x_56,y_33,w_560,h_373', '15', '16');
INSERT INTO `step` VALUES ('139', '最后收拢成小圆球，放在案板上松弛 10 分钟。\r\n', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/sk3ZRhZdjS.jpg?x-oss-process=image/crop,x_111,y_101,w_690,h_459', '16', '16');
INSERT INTO `step` VALUES ('140', '在圆球表面刷上一层调好的面粉生抽水。\r\n', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/wNi3AMcai3.jpg?x-oss-process=image/crop,x_120,y_78,w_729,h_486', '17', '16');
INSERT INTO `step` VALUES ('141', '将刷过生抽水的一面按压在芝麻碟中，轻压成饼状。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/yxJtYYkShw.jpg?x-oss-process=image/crop,x_101,y_63,w_702,h_468', '18', '16');
INSERT INTO `step` VALUES ('142', '两只烧饼有芝麻的一面互相轻轻拍打几下，使多余的芝麻脱落，也令沾上的芝麻更加紧实。并再次整理成型。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/TeWrEPkdzp.jpg?x-oss-process=image/crop,x_140,y_56,w_708,h_472', '19', '16');
INSERT INTO `step` VALUES ('143', '烤盘中刷油或者铺上锡箔纸。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/aMJpPjamCB.jpg?x-oss-process=image/crop,x_54,y_35,w_795,h_530', '20', '16');
INSERT INTO `step` VALUES ('144', '放入上、下火 200 ℃预热好的烤箱烤制 18 分钟左右，至烧饼芝麻面颜色金黄即可出炉。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171218/GNwCWaGbYp.jpg?x-oss-process=image/crop,x_0,y_41,w_745,h_496', '21', '16');
INSERT INTO `step` VALUES ('145', '鸡翅的选择上，建议使用鸡中翅这样不仅好吃口感也好', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20181125/Q4x2P5AWNR.jpg?x-oss-process=image/crop,x_0,y_116,w_2015,h_1343', '1', '17');
INSERT INTO `step` VALUES ('146', '冷水下锅煮开汆水五分钟，然后清洗干净去除残留的毛絮', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20181125/3md3pPixz4.jpg?x-oss-process=image/crop,x_0,y_64,w_2169,h_1447', '2', '17');
INSERT INTO `step` VALUES ('147', '辅料所需的香料要提前准备好', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20181125/sNMxKJ26Kf.jpg?x-oss-process=image/crop,x_5,y_74,w_1950,h_1300', '3', '17');
INSERT INTO `step` VALUES ('148', '锅热少许油爆干爆香老姜片', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20181125/aPnzhJtWED.jpg?x-oss-process=image/crop,x_127,y_219,w_2266,h_1510', '4', '17');
INSERT INTO `step` VALUES ('149', '再倒入冰糖炒出糖色，然后倒入鸡中翅翻匀', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20181125/4j8jY2xQfN.jpg?x-oss-process=image/crop,x_8,y_55,w_1636,h_1091', '5', '17');
INSERT INTO `step` VALUES ('150', '加入适量的水并加入生抽和老抽及香料，大火烧开小火慢卤烧煮至收汁即可', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20181125/RdZJaDHaDy.jpg?x-oss-process=image/crop,x_6,y_51,w_1682,h_1121', '6', '17');
INSERT INTO `step` VALUES ('151', '味道一级棒', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20181125/yjdxMTNkNT.jpg?x-oss-process=image/crop,x_86,y_96,w_2006,h_1337', '7', '17');
INSERT INTO `step` VALUES ('152', '试试你也会喜欢', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20181125/TQ7bB8jRED.jpg?x-oss-process=image/crop,x_1,y_5,w_2638,h_1758', '8', '17');
INSERT INTO `step` VALUES ('153', '准备好材料；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/JM8xWrf2r2.JPG', '1', '18');
INSERT INTO `step` VALUES ('154', '西芹去叶洗净，切成丁状', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/2Pjmkd35Gc.JPG', '2', '18');
INSERT INTO `step` VALUES ('155', '将玉米粒和芹菜段分别放入开水中焯烫，芹菜焯烫完要立即过凉；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/3xhFiEdB8k.JPG', '3', '18');
INSERT INTO `step` VALUES ('156', '枸杞清洗后用清水浸泡一会儿让其泡软；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/6T4Q8KwDQx.JPG', '4', '18');
INSERT INTO `step` VALUES ('157', '热锅不放油直接放入腰果，小火慢慢的炒熟出香味后捞出待用；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/WRt6EeXMmF.JPG', '5', '18');
INSERT INTO `step` VALUES ('158', '锅里倒入适量油，放蒜末爆香后，加入西芹进行翻炒至翠绿色；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/RF3E6GJcSS.JPG', '6', '18');
INSERT INTO `step` VALUES ('159', '倒入玉米粒进去翻炒一会儿；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/XpiQMCsT55.JPG', '7', '18');
INSERT INTO `step` VALUES ('160', '放盐调味；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/55wjTbF86W.JPG', '8', '18');
INSERT INTO `step` VALUES ('161', '最后倒入腰果和枸杞翻炒，放入鸡粉炒匀即可出锅；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/wcwX8pW5Mc.JPG', '9', '18');
INSERT INTO `step` VALUES ('162', '习惯性来张特写，诱惑下亲们的味觉~', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/wcwX8pW5Mc.JPG', '10', '18');
INSERT INTO `step` VALUES ('163', '准备好材料；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/XWQEywHkXC.JPG', '1', '19');
INSERT INTO `step` VALUES ('164', '把鸡胸肉切成1.5厘米左右大的肉粒。', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/xwpAZ58DmT.JPG', '2', '19');
INSERT INTO `step` VALUES ('165', '放入盐和料酒抓一下，腌制十五分钟；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/hT6mAWbJ4w.JPG', '3', '19');
INSERT INTO `step` VALUES ('166', '黄瓜洗干净切成和鸡肉大的小方块；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/JP6esAxiGp.JPG', '4', '19');
INSERT INTO `step` VALUES ('167', '锅内放入油，比平常炒菜放多一点，把干辣椒和蒜还有花椒倒入，中小火炒出香味；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/fDJJp6Xh6f.JPG', '5', '19');
INSERT INTO `step` VALUES ('168', '倒入豆瓣酱翻炒，豆瓣酱容易糊，一定要用小火；\r\n', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/s8y2demwfm.JPG', '6', '19');
INSERT INTO `step` VALUES ('169', '倒入鸡胸肉，调成大火翻炒至鸡肉变白；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/RGHaNKzthn.JPG', '7', '19');
INSERT INTO `step` VALUES ('170', '再倒入黄瓜；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/5Jrnt7zDdB.JPG', '8', '19');
INSERT INTO `step` VALUES ('171', '倒入花生米，放入一茶匙糖翻炒均匀；', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/3KdixiGYPb.JPG', '9', '19');
INSERT INTO `step` VALUES ('172', '最后倒入淀粉水翻炒至收汁即可；\r\n', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/HDj4Cjb4fe.JPG', '10', '19');
INSERT INTO `step` VALUES ('173', '习惯性来张特写，诱惑下亲们的味觉~\r\n', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/kGHCyCRxrA.jpg', '11', '19');
INSERT INTO `step` VALUES ('174', '准备好鸡腿，鸡腿洗净后，准备洋葱和姜', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190516/hSmxPGK7SX.jpg', '1', '20');
INSERT INTO `step` VALUES ('175', '把鸡腿的骨头剔下来', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190516/cE7rPYHfi6.jpg', '2', '20');
INSERT INTO `step` VALUES ('176', '准备一个照烧汁：老抽、生抽、蚝油、料酒、蜂蜜、水，拌匀就可以了，把照烧汁倒入鸡腿中', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190516/p8AFddnN2z.jpg', '3', '20');
INSERT INTO `step` VALUES ('177', '加入盐', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190516/2pChTctja3.jpg', '4', '20');
INSERT INTO `step` VALUES ('178', '洋葱和姜搅拌碎或者切碎', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190516/H78srFCYKm.jpg', '5', '20');
INSERT INTO `step` VALUES ('179', '把洋葱和姜放入鸡腿中，抓匀，腌制1小时', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190516/cx5XjQGaGM.jpg', '6', '20');
INSERT INTO `step` VALUES ('180', '锅中加食用油，加入腌制好的鸡腿', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190516/5fPJ7zz83z.jpg', '7', '20');
INSERT INTO `step` VALUES ('181', '汤汁也都加入锅中，两面都煎熟，切成条', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190516/2zeedCBfMx.jpg', '8', '20');
INSERT INTO `step` VALUES ('182', '西兰花掰成小朵，胡萝卜切片，放开水中烫一下', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190516/cMpQj43ENj.jpg', '9', '20');
INSERT INTO `step` VALUES ('183', '米饭放盘中，加入鸡腿、西兰花、胡萝卜，就可以开吃啦', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190516/e4Jr8hEkCb.jpg', '10', '20');
INSERT INTO `step` VALUES ('184', '把除了盐和黄油以外的材料全部倒进厨师机里，没有厨师机也可以用手揉，揉成表面光滑的面团。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/6T5DnGtsYR.jpg?x-oss-process=image/crop,x_339,y_133,w_1499,h_999', '1', '21');
INSERT INTO `step` VALUES ('185', '在揉好的面团中加入盐和黄油，继续揉出手套膜即可。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/dK4dYceXrB.jpg?x-oss-process=image/crop,x_577,y_234,w_1276,h_850', '2', '21');
INSERT INTO `step` VALUES ('186', '揉好的面团状态是这样的，再盖上一层保鲜膜发酵一小时。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/GrSKjHtpPQ.jpg?x-oss-process=image/crop,x_475,y_199,w_1335,h_889', '3', '21');
INSERT INTO `step` VALUES ('187', '面团基础发酵至2倍大时取出，均匀按压排气。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/7E2wzkwMas.jpg?x-oss-process=image/crop,x_267,y_142,w_1508,h_1005', '4', '21');
INSERT INTO `step` VALUES ('188', '均分成10份80g/个，揉圆盖上保鲜膜松弛15分钟。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/dW32QmaY2A.jpg?x-oss-process=image/crop,x_291,y_139,w_1576,h_1050', '5', '21');
INSERT INTO `step` VALUES ('189', '烤盘内倒入适量食用油。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/3Xm2XknXET.jpg?x-oss-process=image/crop,x_467,y_223,w_1406,h_937', '6', '21');
INSERT INTO `step` VALUES ('190', '取出松弛好的面团，擀成长条状。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/CrQ7HnDXc5.jpg?x-oss-process=image/crop,x_371,y_121,w_1490,h_993', '7', '21');
INSERT INTO `step` VALUES ('191', '再从上至下卷起来。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/sBNi6EFfET.jpg?x-oss-process=image/crop,x_410,y_50,w_1460,h_972', '8', '21');
INSERT INTO `step` VALUES ('192', '用刮刀从中间切开一分为二。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/xfJm8Rm6ty.jpg?x-oss-process=image/crop,x_416,y_68,w_1630,h_1085', '9', '21');
INSERT INTO `step` VALUES ('193', '适量白芝麻和细糖混合，将面团底部沾满。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/cPeyP34PAQ.jpg?x-oss-process=image/crop,x_365,y_145,w_1630,h_1085', '10', '21');
INSERT INTO `step` VALUES ('194', '卷好放入烤盘内，放在温暖湿润的地方再次发酵，面包发至两倍大小即可。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/tepmJ2jiPJ.jpg?x-oss-process=image/crop,x_475,y_172,w_1401,h_934', '11', '21');
INSERT INTO `step` VALUES ('195', '在空隙处挤适量黄油。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/YmKdrJWP7e.jpg?x-oss-process=image/crop,x_484,y_205,w_1356,h_904', '12', '21');
INSERT INTO `step` VALUES ('196', '上火150度，下火200度，烘烤20分钟。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/Qi2zdWQxyZ.jpg?x-oss-process=image/crop,x_455,y_130,w_1499,h_999', '13', '21');
INSERT INTO `step` VALUES ('197', '蜂蜜与水1:1均匀混合，用毛刷在面包表面均匀涂抹。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/WF8cYHkweY.jpg?x-oss-process=image/crop,x_401,y_133,w_1630,h_1085', '14', '21');
INSERT INTO `step` VALUES ('198', '再根据个人喜好撒上适量熟白芝麻，倒扣脱模，美味即享！', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190513/SiKAR66sYp.jpg?x-oss-process=image/crop,x_252,y_0,w_1790,h_1192', '15', '21');
INSERT INTO `step` VALUES ('199', '准备好所需食材。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/nMzDsZs5Rb.jpg?x-oss-process=image/crop,x_0,y_7,w_2820,h_1880', '1', '23');
INSERT INTO `step` VALUES ('200', '香蕉去皮切小块放到容器中，用勺子碾压成香蕉泥。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/ARbKeDR7WQ.jpg?x-oss-process=image/crop,x_0,y_7,w_2820,h_1880', '2', '23');
INSERT INTO `step` VALUES ('201', '加入即食燕麦片，用刮刀翻拌均匀。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/68ihRPiZJP.jpg?x-oss-process=image/crop,x_0,y_7,w_2820,h_1880', '3', '23');
INSERT INTO `step` VALUES ('202', '再加入橄榄油，搅拌成粘稠状态。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/daH4AwX5Ht.jpg?x-oss-process=image/crop,x_0,y_7,w_2820,h_1880', '4', '23');
INSERT INTO `step` VALUES ('203', '取适量燕麦香蕉糊放到蛋挞模具中，用小勺顺着模具按压平整，做出深碗形状。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/NpENjN3ZBN.jpg?x-oss-process=image/crop,x_0,y_7,w_2820,h_1880', '5', '23');
INSERT INTO `step` VALUES ('204', '烤箱上下火180度预热好，将燕麦蛋挞皮放进中层烤约十分钟。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/xQaQWDWxtZ.jpg', '6', '23');
INSERT INTO `step` VALUES ('205', '趁着烤挞皮的时间来做挞水，将鸡蛋磕入碗中搅打均匀。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/CC47b7JEWD.jpg', '7', '23');
INSERT INTO `step` VALUES ('206', '再加入纯牛奶混合搅拌均匀，过一遍筛使挞水更细腻。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/RrBeCmDNyh.jpg', '8', '23');
INSERT INTO `step` VALUES ('207', '在烤好的蛋挞皮中倒入挞水，大概八分满即可', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/5QD8Fc85af.jpg', '9', '23');
INSERT INTO `step` VALUES ('208', '烤箱上下火200度预热，再次放进中层烤15-20分钟至蛋奶液熟了出炉即可。', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/YNt2xAN5iT.jpg?x-oss-process=image/crop,x_0,y_7,w_2820,h_1880', '10', '23');
INSERT INTO `step` VALUES ('209', '低脂美味的燕麦蛋挞就做好了，好吃还不胖人！', 'http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190623/m7d2GCAXSM.jpg', '11', '23');
INSERT INTO `step` VALUES ('220', '将75克消化饼干放入放在保鲜袋中用擀面杖擀碎。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/cF333DGKiF.jpg?x-oss-process=image/crop,x_398,y_236,w_1106,h_737', '1', '25');
INSERT INTO `step` VALUES ('221', '将溶化的黄油，倒入饼干屑中，用小勺混合均匀，使每一粒饼干屑都沾满黄油。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/W78XMmtH6b.jpg?x-oss-process=image/crop,x_114,y_194,w_1267,h_844', '2', '25');
INSERT INTO `step` VALUES ('222', '活底6寸蛋糕模，剪一张和底盘一般大小的油纸铺在上面，脱模的时候容易。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/54s2Sd4riZ.jpg?x-oss-process=image/crop,x_302,y_102,w_1122,h_747', '3', '25');
INSERT INTO `step` VALUES ('223', '将黄油饼干屑铺在底部，先用小勺按压瓷实，再用擀面杖一端按压结实，蒙上保鲜膜放冰箱冷藏保存备用。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/ZmPbSdjcpt.jpg?x-oss-process=image/crop,x_180,y_52,w_1303,h_868', '4', '25');
INSERT INTO `step` VALUES ('224', '吉利丁片剪成小块，每片分开，放在冰水里泡软。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/5rHdt2AWbK.jpg?x-oss-process=image/crop,x_595,y_132,w_1311,h_874', '5', '25');
INSERT INTO `step` VALUES ('225', '用刀贴着芒果核切成3份，在两片果肉上分别切花刀，把整齐的芒果块做内部和表面装饰用，边角料用料理机打成芒果泥。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/jrtJiWfZiC.jpg?x-oss-process=image/crop,x_392,y_170,w_1178,h_785', '6', '25');
INSERT INTO `step` VALUES ('226', '将原味酸奶和备好的芒果泥混合，搅拌均匀。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/kNZGiS3Cwh.jpg?x-oss-process=image/crop,x_120,y_142,w_1371,h_914', '7', '25');
INSERT INTO `step` VALUES ('227', '取出已经泡软的吉利丁片，隔热水融化，水温不要超过50度，用小勺搅拌几下，让吉利丁片受热均匀，融化即可，从热水中取出，晾凉后再使用。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/YxmDjQEEhN.jpg?x-oss-process=image/crop,x_348,y_0,w_1112,h_741', '8', '25');
INSERT INTO `step` VALUES ('228', '取出冷藏了8小时以上的淡奶油，用电动打蛋器先中速打发略微膨胀，再转低速打发，打到6成发，粘稠有纹路，但还能顺畅地流动。\r\n', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/44aykjdd6k.jpg?x-oss-process=image/crop,x_0,y_26,w_1359,h_906', '9', '25');
INSERT INTO `step` VALUES ('229', '将芒果酸奶糊倒入淡奶油中，再倒入吉利丁液，搅拌均匀，这就是慕斯液了。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/tJXKwyptPY.jpg?x-oss-process=image/crop,x_0,y_120,w_1439,h_960', '10', '25');
INSERT INTO `step` VALUES ('230', '把冷藏的慕斯底模具取出来，倒一部分慕斯液在模具中，零星撒入芒果丁。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/2p4Y2HjjbS.jpg?x-oss-process=image/crop,x_94,y_28,w_1545,h_1030', '11', '25');
INSERT INTO `step` VALUES ('231', '再把剩下的慕斯液倒入模具中，端起来轻轻晃动几下，让表面平整。蒙上保鲜膜重新放入冰箱冷藏2小时左右。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/cnF5CAWFyf.jpg?x-oss-process=image/crop,x_352,y_140,w_1411,h_940', '12', '25');
INSERT INTO `step` VALUES ('232', '做慕斯镜面：将准备好的30克左右芒果泥，50克纯净水，5克吉利丁溶液，混合在一起，搅拌均匀后过筛。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/6exzAimysJ.jpg?x-oss-process=image/crop,x_22,y_0,w_1371,h_914', '13', '25');
INSERT INTO `step` VALUES ('233', '淋在冷藏好的慕斯蛋糕顶面。蒙上保鲜膜，再冷藏2个小时左右。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/FbXhH7Bm7a.jpg?x-oss-process=image/crop,x_68,y_40,w_1559,h_1040', '14', '25');
INSERT INTO `step` VALUES ('234', '等到慕斯液彻底凝固后，就可以取出切块食用了。', 'https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190529/pKkCCwi62z.jpg?x-oss-process=image/crop,x_0,y_30,w_1357,h_904', '15', '25');
INSERT INTO `step` VALUES ('235', '首先室温或隔热水软化黄油至膏状，手指轻触可变形即可', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/dN7rtZBMDk.jpg', '1', '26');
INSERT INTO `step` VALUES ('236', '用电动打蛋器将软化的黄油打至微发，即微微发白的状态', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/ncm8FbmtxC.jpg', '2', '26');
INSERT INTO `step` VALUES ('237', '然后加入过筛的糖粉，将糖粉和黄油搅打至顺滑', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/6fdpdC5Bcy.jpg', '3', '26');
INSERT INTO `step` VALUES ('238', '将1克香草精和1克苏打粉加入50毫升牛奶中混合均匀', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/45dd4A8nTW.jpg', '4', '26');
INSERT INTO `step` VALUES ('239', '牛奶混合液分三次加入到打发的黄油中，并搅打均匀', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/TK7MeGmmk7.jpg', '5', '26');
INSERT INTO `step` VALUES ('240', '然后加入过筛的170克低筋面粉', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/TK7MeGmmk7.jpg', '6', '26');
INSERT INTO `step` VALUES ('241', '使用橡皮刮刀将面糊切拌成团', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/TK7MeGmmk7.jpg', '7', '26');
INSERT INTO `step` VALUES ('242', '提前铺一张油纸在保鲜盒底部，放入面团，用刮板抹平、压实至1cm厚，然后放入冰箱冷冻30分钟', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/6GccTjBsZh.jpg', '8', '26');
INSERT INTO `step` VALUES ('243', '取出后用牛角刀切3cm*3cm方块，放入不沾烤盘', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/A2bxMYSfsF.jpg', '9', '26');
INSERT INTO `step` VALUES ('244', '放入提前预热的烤箱中，上下火170度，烘烤20分钟', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/8M7Qdwdpwd.jpg', '10', '26');
INSERT INTO `step` VALUES ('245', '出炉', 'http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170818/pPW7zaEbwa.jpg?x-oss-process=image/crop,x_2,y_350,w_1331,h_886', '11', '26');
INSERT INTO `step` VALUES ('246', '准备好所需食材', 'http://localhost:7001/public/foodsupload/step/16008505327591.jpg', '1', '27');
INSERT INTO `step` VALUES ('247', '把豆腐切成小方块', 'http://localhost:7001/public/foodsupload/step/16008505327632.jpg', '2', '27');
INSERT INTO `step` VALUES ('248', '西红柿和青椒切成块', 'http://localhost:7001/public/foodsupload/step/16008505327663.jpg', '3', '27');
INSERT INTO `step` VALUES ('249', '小葱切成段，大葱切成沫', 'http://localhost:7001/public/foodsupload/step/16008505327684.jpg', '4', '27');
INSERT INTO `step` VALUES ('250', '锅中倒适量油烧至五成热，炒香葱段和蒜末', 'http://localhost:7001/public/foodsupload/step/16008505327725.jpg', '5', '27');
INSERT INTO `step` VALUES ('251', '加入一半的西红柿，小火炒出汤汁', 'http://localhost:7001/public/foodsupload/step/16008505327746.jpg', '6', '27');
INSERT INTO `step` VALUES ('252', '再放入豆腐块晃动锅子，使豆腐裹上西红柿的汤汁', 'http://localhost:7001/public/foodsupload/step/16008505327777.jpg', '7', '27');
INSERT INTO `step` VALUES ('253', '再放入剩下的西红柿和青椒', 'http://localhost:7001/public/foodsupload/step/16008505327808.jpg', '8', '27');
INSERT INTO `step` VALUES ('254', ' 轻轻翻炒均匀盛出即可', 'http://localhost:7001/public/foodsupload/step/16008505327829.jpg', '9', '27');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '官方账号', '12345678', '15982382353', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600374225097&di=749a8666402bc864e83b2a4eac3d3db2&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201108%2F12%2F153524babrex391xoaz5za.jpg');
INSERT INTO `user` VALUES ('2', '飞翔的企鹅', '12345678', '19149847273', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1373560079,871367259&fm=26&gp=0.jpg');
INSERT INTO `user` VALUES ('3', '瑞瑞', '12345678', '15282650712', 'https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2156833431,1671740038&fm=26&gp=0.jpg');
INSERT INTO `user` VALUES ('4', '杨过', 'a123456789', '19149847276', 'http://127.0.0.1:7001/public/images/defaulthead.jpg');
