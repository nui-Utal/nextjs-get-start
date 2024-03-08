/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 08/03/2024 17:04:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (1, 'uni', 'A useful test title', 'a brief intro for test', 'article body', 'https://gd-hbimg.huaban.com/502c938751f54f78c7e0b954b5094675946a58a1cf916-OYyHY9_fw658webp');
INSERT INTO `post` VALUES (2, 'uni', '金老师吃了五支香烟 | 正午·访谈', '金宇澄和小转铃，谈文学，谈上海，以及上海的男女关系。\r\n\r\n\r\n\r\n“男女虽然写了很多，但最后还是人与人之间的温情的关系。我觉得这才是《繁花》的底子。上海就像个洪流一样在滚，人们来了又走，有些人就不见了。在这个大时代面前，每个人都是很无力的。人和人之间，哪怕偶尔有一个短暂的温情的相处，就足够了。”', '金宇澄老师喜欢请人在作协食堂吃饭。采访他的人，多半吃过吧，三菜一汤，还有酸奶水果，有点金宇澄风格。有人觉得他高冷，我倒觉得他多数时候，只是含蓄。我提出采访要求，随随便便就答应了。采访前一晚，又打电话来反悔，准备取消。但你一直不欺负他，他好像也不太开心，欲言又止的样子。总之，是非常可爱的性格，傲娇，天真犹存，是让人情不自禁，会想要去哄一哄他的老爷叔。\r\n\r\n\r\n\r\n吃饭时我问他，金舒舒这个原名，上海话要怎么念啦，他感慨得要命，因为这名字，小时候在学校，一直不开心，和同学关系不好，性格也受到巨大影响，内向了。\r\n\r\n\r\n\r\n采访开始，茶泡好，房门打开，很绅士，点点小细节，敏感的人会感激。烟缸放面前，不知不觉中，抽了五支。采访完，和我这个迷妹拍了合影，还让我看一看，会不会都是闭眼睛的。他还有老编辑的职业病，看到一个能写点东西的人，不管男的女的，年纪多大，会像一个母鸡看到陌生鸡蛋，两眼放光，忍不住坐上去孵一下：比如鼓动评论家吴亮写小说；常常反过来为采访者的文学机会出主意。许多采访人，包括我在内，都得到过金老师突如其来的免费指点，没有一点“现象级”大作家的样子，真是又感人，又好笑。上海滩上，女性在职场上拼杀的多，人间的温情，有一半是金老师这样的人提供的，男人能顶半边天。\r\n\r\n \r\n\r\n\r\n\r\n第一支烟：《繁花》底子上是无性的，这个评价我第一次听到。都说里面充满了性。\r\n\r\n \r\n\r\n铃：想先谈一谈女性的形象，包括梅瑞，汪小姐，小琴，还有李李等等，这方面好像有一些争议。你觉得你的女读者多还是男读者多啊？\r\n\r\n \r\n\r\n金：当然是女读者多，比较多。张爱玲说有意思的小说，读者心里想，嗳，就是这样的，就这样的……有共鸣。不止一次听读者说，身边就有小说里写的人。也因为很多都有原型，有原型的人，会和一般想象的人不大一样。大城市非常暧昧，隐秘，和平年代，等于旅行袋的拉链完全拉起来了，你不知道里面是什么。只有到大革命时代，像《繁花》里一些段落，它的拉锁拉开，让各位看看里面是什么，然后慢慢又合起来，城市生活有趣，难写，大概在这地方。\r\n\r\n\r\n\r\n小说里女人写得多，女读者，大概也对男性作者怎么描写城市女性感兴趣。《繁花》在网上的阶段，一般也是女网友喜欢提意见。比如我们上海女人都是很高雅的，我们都是怎么怎么样的，我们都知书达理，都穿旗袍……\r\n\r\n \r\n\r\n铃：噗！穿旗袍？不都是穿睡衣嘛。\r\n\r\n \r\n\r\n金：嗳，问题在哪里？因为这种旗袍女人、三十年代、大世界、百乐门产生了一种……除了打这种牌，还有啥？比如一个老太太，一辈子没去过外滩，是不是上海女人？旗袍也不是现在做出来的旗袍，都是家常朴素、松松垮垮的。日常世界里，穿廉价睡衣睡裤的女人是什么样？弄堂里穿拖鞋女人什么样？每天早上端痰盂跑出来的女人什么样子？头上都是卷发筒。\r\n\r\n\r\n\r\n以前看潘虹演的《股疯》，好片子，潘虹当卖票员，跟乘客大吵，厨房老太婆怀疑潘虹偷自来水，互相吵啊，怎么怎么样啊……夏志清讲写人的真相，最好到社会风俗框子里去写，人的情感是凭社会习俗决定的。不是虚构决定的，就不会假。很多人觉得上海女人，天天就是走T台样子，太吓人了。读者可以进来随便看，包括前言的一句，古罗马诗人所言：不亵不足以使人欢笑。贴近看看是啥样子，生活比较丑陋，也比较动人。\r\n\r\n \r\n\r\n铃：但是我，始终是不能承受文学作品中，所谓审丑的另一个类型。\r\n\r\n \r\n\r\n金：你觉得《繁花》是不是在审丑？\r\n\r\n \r\n\r\n铃：我觉得没有啊，这也是我特别佩服的一点，一开始写卖鱼女人和卖蛋男人这个故事，有捉奸，也有光屁股被人拉到楼下的场景。如果让一个别的男作家来写，可能会写得极其猥琐，带着一种窥淫癖前的热情，对女人的身体要进行详细的描写，再加上别人并不想知道的心理感受。也因为这个原因，捉奸，是一个很敏感的题材，像河豚一样，要处理得干净，需要高超的刀功。《繁花》写得就让我一点也不反感，因为它写的是群像，捉奸者的动作，他徒弟的动作，弄堂邻居如何，居委会老阿姨的反应，群像里每个人都是寥寥几笔，但形成了互相应和的张力，像传统戏剧一样，写到女人被拉下来，就一笔带过，没有去详细地写这个女人身材，长得什么样子。这样写，既真实，没有去掩饰什么，也没故意夸张刻画，这里面需要很好的分寸感，这个在我理解，就是手法高级。\r\n\r\n\r\n\r\n我记得王小龙跟我讲过，拍纪录片如果当事人开始哭，或者有大幅度的情绪波动的时候，镜头往后拉其实是一个比较礼貌的做法。他不往前推，去放大这个人脸上的眼泪，去煽情，而是往后拉一个远景，让这个人能安心地哭。其实捉奸也是这样，因为题材本身已经很戏剧化，写起来就要适可而止，这种分寸感和自知之明是我在一般作家身上很少看到的。\r\n\r\n \r\n\r\n金：人确实喜欢议论男女事情，永远的主题。但要看怎么讲，也有所谓的女权主义说这本书，为什么书里女人都死得早，这些女人怎么都等着上床……我没写到这个地步啊？比如梅瑞，男人拼命勾引她，她就是不理睬，一开始谈恋爱，就脚踏两只船，直到后来，她脑子总是清楚啊。嗳，我说不清楚了。\r\n\r\n \r\n\r\n铃：我也是个女权主义者，但是看《繁花》一点也不反感，恰恰相反，我觉得《繁花》是中国男作家的作品里面，极少几本让我不反感的书。梅瑞是一个很典型的上海女人，一开始接近阿宝，是为了做外贸生意。这也被人批评过，说这里面的男女关系，怎么会有很多功利性目的啊。我恰恰觉得，这就是因为女人的独立性。农村的经济关系比较简单，男人和女人之间的关系，但这小说有职业人身份在，而且这身份是主要的。她有自己的经济能力，这才是她生活的主要部分。她有意识地利用自己的能力，关系啊，社会活动啊，完善、优化自己的整体处境。里面每个女的都让人印象深刻，像那个半夜出门洗衣服的女人，经常被提到的，据说是王家卫最爱，还有苏安这样短短几句话，几个动作，眼神，就让人能够想象出来，非常精彩，是个极其厉害的角色。所以我觉得，小说里的女人很正常，脑子很清楚，当然，后面也有不清楚的时候。\r\n\r\n\r\n\r\n这本书对女性的描绘，都是很温和，沪生式的，却也不是美轮美奂的描画，我觉得真不需要美化，很客观地写就已经足够了。我们现在缺少的就是这种冷淡的描写。就是不带有太多情欲，不带有两性强烈爱恨情仇视角的描写，就足够了。像但丁说的，永恒女性导我飞升，我觉得也没有到这个地步吧。我们都是正常的人，谁也不可能真的导谁飞升。\r\n\r\n\r\n\r\n这么一来的话，男女虽然写了很多，但最后还是人与人之间的温情的关系。我觉得这才是《繁花》的底子。就像你说的，上海就像个洪流一样在滚，人们来了又走，有些人就不见了。在这个大时代面前，每个人都是很无力的。人和人之间，哪怕偶尔有一个短暂的温情的相处，就足够了。它底子上是一个无性的东西。这是我读下来的一个感受。\r\n\r\n \r\n\r\n金：哈哈，无性的？《繁花》底子上是无性的，这个评价我第一次听到。都说这个小说充满了性。\r\n\r\n \r\n\r\n铃：里面确实充满了性的事情，但本质上都不是由性冲动来推动的，是寻求一点温暖，陌生人的大丛林，再怎么交往，也仅此而已。沪生尤其是这样。我最喜欢的是沪生和汪小姐，这两个人截然相反，我都喜欢。\r\n\r\n \r\n\r\n金：一般评论，都把沪生作为三人之中最最薄弱的一个，把汪小姐说成《繁花》里唯一被谴责的对象，你怎么会喜欢汪小姐？是不是因为她不保守，冲破传统？\r\n\r\n \r\n\r\n铃：这倒没有，觉得就像你说，是一种生命力吧。我的个性可能比较接近沪生，对沪生的视角总是特别有共鸣。他不是一个圣人，也是为了房子才跟白萍结婚，白萍出国之后，他也就这样，算了，也不离婚。“如无必要，勿增实体。”这种冷淡的一面，我和他相似，但是我又很羡慕、很欣赏汪小姐这种充满的生命力，她一直在作，不停在搞事情出来，看到她就像看到一团生命的热焰在转。你会觉得这样蛮累的，你自己大概不会想去过这样的生活。但是特别欣赏这样的女性形象，这可能是一对镜像，上海男女的一种典型，男的比较冷淡，带有一种虚无主义的底子，以沉默为主，女的精明强干，不断地在寻找机会，来达成自己的目的，不管是什么样的目的。所以两个人我都很喜欢。我倒是第一次知道大家说沪生写得不好。\r\n\r\n \r\n\r\n金：也不是说不好，只是他和阿宝，小毛相比较之下显得比较单薄一点，他是干部子弟。\r\n\r\n \r\n\r\n铃：但我觉得，小说的叙述口吻，其实是沪生的视角，我知道阿宝和小毛的故事，很多都是你个人的经历，但我觉得那些是材料，世界观是沪生的，基调是他的。\r\n\r\n \r\n\r\n金：这三个人有我接触的原型，是加上我自己打散了的，代表某种状态……很多人大声疾呼，也有像这种沉默的，而且这种人上海很多，貌不惊人，也不是什么知识分子，一开口吓你一跳，见多识广。因此在这个小说里有意不写知识分子……很多能说会道的人，包括知识分子大学老师，很多事其实是不懂，不知道的，贫乏得可怜。我自己也这样，写完这本书，觉得上海越来越看不清楚，有些单位叫我去讲，像我是什么专家了，我不是。而且特别讨厌人家叫我“老克腊”这三个字，我特别特别讨厌。\r\n\r\n \r\n\r\n铃：对，我也是。\r\n\r\n \r\n\r\n金：这三个字我是不喜欢的，根本就不喜欢，因为它代表了某一种腔调，某一种人。\r\n\r\n \r\n\r\n铃：昨天有朋友也讲，老金啊就是这种老克腊，我说他不是，跟老克腊的气质和感觉完全不一样。我觉得你还是很接近沪生的，就是这种冷淡的温和感。\r\n\r\n \r\n\r\n金：第一次听到，真是第一次。\r\n\r\n', 'http://mmbiz.qpic.cn/mmbiz_jpg/0s0ib9B1XUr7BMCWCdewMe0icpH9vVd3qVJiaHD3DWFXLSQuFa2XC6vym32OOPcjGTvIW040Txsib2rLiar6oibkltAA/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&wx_co=1');
INSERT INTO `post` VALUES (22, 'user', 'new title', 'new desc', 'https://gd-hbimg.huaban.com/e415c619dd080a6b3f9dcd49effe30249492d607dd41bb-OuEU7n_fw658webp', 'https://gd-hbimg.huaban.com/e415c619dd080a6b3f9dcd49effe30249492d607dd41bb-OuEU7n_fw658webp');
INSERT INTO `post` VALUES (24, 'user', 'title', 'desc', 'https://gd-hbimg.huaban.com/d9f7ea021a08da4d229c18347dbd5cce84b996a0278c7a-QASouI_fw658webp', 'https://gd-hbimg.huaban.com/d9f7ea021a08da4d229c18347dbd5cce84b996a0278c7a-QASouI_fw658webp');
INSERT INTO `post` VALUES (26, 'user', 'newData', 'newData', 'newData', 'https://gd-hbimg.huaban.com/4cb6da6c71b6c4574dbe04a2cea82527abb143f57e169-OGiL6H_fw658webp');
INSERT INTO `post` VALUES (27, 'user', 'newData', 'newData', 'https://gd-hbimg.huaban.com/229f63abdf42e94cd39c71f14ef0fbd394a03e1854529-nfMQwu_fw658webp', 'https://gd-hbimg.huaban.com/229f63abdf42e94cd39c71f14ef0fbd394a03e1854529-nfMQwu_fw658webp');
INSERT INTO `post` VALUES (29, 'user', '测这个唯一快乐点的就是找美图。。', 'https://gd-hbimg.huaban.com/5d382531f7f3329801f9a261abb2e2926df874aa57ebb-Fn0ID2_fw658webp', 'https://gd-hbimg.huaban.com/5d382531f7f3329801f9a261abb2e2926df874aa57ebb-Fn0ID2_fw658webp', 'https://gd-hbimg.huaban.com/5d382531f7f3329801f9a261abb2e2926df874aa57ebb-Fn0ID2_fw658webp');
INSERT INTO `post` VALUES (30, 'user', '这次没点进去了', 'https://gd-hbimg.huaban.com/162210ecc8abd45977397673a39dfdd6d2c7da3f955be-KHM3tf_fw240webp', 'https://gd-hbimg.huaban.com/162210ecc8abd45977397673a39dfdd6d2c7da3f955be-KHM3tf_fw240webp', 'https://gd-hbimg.huaban.com/162210ecc8abd45977397673a39dfdd6d2c7da3f955be-KHM3tf_fw240webp');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'nui', 'test@gmai.com', 'njsfkzd', NULL);
INSERT INTO `user` VALUES (2, '1', '2', '3', NULL);
INSERT INTO `user` VALUES (4, 'user', 'user@gmail.com', '$2a$05$3uFlNHxGt8XvQc9cHN4IieM.Lu78AQ/Xa7sEjOxCFlr62B5A3J8kK', 'https://gd-hbimg.huaban.com/d5c8371c5ce7cff8ed784e1f2346a82a274b4c271f863-Ttv4Pb_sq75webp');
INSERT INTO `user` VALUES (5, 'user1', 'user1@gmaiL.com', '$2a$05$unsG428/4uqKTdXZUBIJEe.4Tan/gcIjQckiRpKgbUTdjFPOuoT8G', NULL);
INSERT INTO `user` VALUES (6, 'user2', 'user2@gmaiL.com', '$2a$05$o.2EsqYs7QuSbu7F9KMdVOl.E9wEwy/lV4aljlscjUmXh3XDI6/1G', NULL);
INSERT INTO `user` VALUES (7, 'user3', 'user3@gmaiL.com', '$2a$05$UM9KHzDOSyXHIIU7va.AFe9gwwEQkaj2ocutb.jaMG6bORoLLGfOK', NULL);
INSERT INTO `user` VALUES (8, 'test', 'test@gmaiL.com', '$2a$05$HoawRz3kMcnISERn6291nenmRQvFceOAIVcWa94NBvbQzrNkkBl8S', NULL);
INSERT INTO `user` VALUES (9, 'test@gmai.com', 'test@gmaiL.com', '$2a$05$D30itE4RVKw2eg02Nw.5VuXG0AZCB8J2BFdZj8aahO5aV6ptIweq6', NULL);
INSERT INTO `user` VALUES (12, 'test@gmai.com', 'test@gmaiL.com', '$2a$05$JiFaFj3.qtotBQym/i0f.efpbi..R4yKiinSgdPtvD9Dlxd/uTWsG', NULL);
INSERT INTO `user` VALUES (13, 'test@gmai.com', 'test@gmaiL.com', '$2a$05$wjOGZ5d3k.nzI6RBzcY.gOj.G58h85KerKohYx3xZhbY5wAl6TxDC', NULL);
INSERT INTO `user` VALUES (14, 'errMessage', 'errMessage', '$2a$05$VLAw406yCuY3FevjOf8vvuEmlfoP2yw1hQw/EJxzk4dY5CvUYvBU.', NULL);
INSERT INTO `user` VALUES (15, 'err.message', 'err.message', '$2a$05$5xwUbU5DS8p/yk8NC7iNzePl/9j7t.6FyOr9AZ.rfT.1Z14jeB7kS', NULL);
INSERT INTO `user` VALUES (16, 'dashboard', 'dashboard', '$2a$05$lJlupaQ2U.i0lqLgl3XRgOFWFxwIO76VCStYi8C6sirycbdVae4g6', NULL);

SET FOREIGN_KEY_CHECKS = 1;
