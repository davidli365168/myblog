/*
 Navicat Premium Data Transfer

 Source Server         : mysql5
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 09/04/2022 15:14:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (33);

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint(20) NOT NULL,
  `comment_status` bit(1) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish_status` bit(1) NOT NULL,
  `recommend_status` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `views` int(11) NULL DEFAULT NULL,
  `category_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKm6k0c9te0ya8npu78aaklyg7o`(`category_id`) USING BTREE,
  INDEX `FK8ky5rrsxh01nkhctmo7d48p82`(`user_id`) USING BTREE,
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKm6k0c9te0ya8npu78aaklyg7o` FOREIGN KEY (`category_id`) REFERENCES `t_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (22, b'1', 'As we are at the start of the course, this seems a good moment to offer some advice on how to make the task of learning English easier.\r\n#### Some Strategies for Learning English\r\nLearning English is by no means easy. It takes great diligence and prolonged effort.\r\n\r\nNevertheless, while you cannot expect to gain a good command of English without sustained hard work, there are various helpful learning strategies you can employ to make the task easier. Here are some of them.\r\n\r\n1. Do not treat all new words in exactly the same way. Have you ever complained about your memory because you find it simply impossible to memorize all the new words you are learning? But, in fact, it is not your memory that is at fault. If you cram your head with too many new words at a time, some of them are bound to be crowded out. What you need to do is to deal with new words in different ways according to how frequently they occur in everyday use. While active words demand constant practice and useful words must be committed to memory, words that do not often occur in everyday situations require just a nodding acquaintance. You will find concentrating on active and useful words the most effective route to enlarging your vocabulary.\r\n\r\n2. Watch out for idiomatic ways of saying things. Have you ever wondered why we say, \"I am interested in English\", but \"I am good at French\"? And have you ever asked yourself why native English speakers say, \"learn the news or secret\", but \"learn of someone\'s success or arrival \"? These are all examples of idiomatic usage. In learning English, you must pay attention not only to the meaning of a word, but also to the way native speakers use it in their daily lives.\r\n\r\n3. Listen to English every day. Listening to English on a regular basis will not only improve your ear, but will also help you build your speaking skills. In addition to language tapes especially prepared for your course, you can also listen to English radio broadcasts, watch English TV, and see English movies. The first time you listen to a taped conversation or passage in English, you may not be able to catch a great deal. Try to get its general meaning first and listen to it over and over again. You will find that with each repetition you will get something more.\r\n\r\n4. Seize opportunities to speak. It is true that there are few situations at school where you have to communicate in English, but you can seek out opportunities to practice speaking the language. Talking with your classmates, for example, can be an easy and enjoyable way to get some practice. Also try to find native speakers on your campus and feel free to talk with them. Perhaps the easiest way to practice speaking is to rehearse aloud, since this can be done at any time, in any place, and without a partner. For instance, you can look at pictures or objects around you and try to describe them in detail. You can also rehearse everyday situations. After you have made a purchase in a shop or finished a meal in a restaurant and paid the check, pretend that all this happened in an English-speaking country and try to act it out in English.\r\n\r\n5. Read widely. It is important to read widely because in our learning environment, reading is the main and most reliable source of language input. When you choose reading materials, look for things that you find interesting, that you can understand without relying too much on a dictionary. A page a day is a good way to start. As you go on, you will find that you can do more pages a day and handle materials at a higher level of difficulty.\r\n\r\n6. Write regularly. Writing is a good way to practice what you already know. Apart from compositions assigned by your teacher, you may find your own reasons for writing. A pen pal provides good motivation; you will learn a lot by trying to communicate with someone who shares your interests, but comes from a different culture. Other ways to write regularly include keeping a diary, writing a short story and summarizing the daily news.\r\n\r\nLanguage learning is a process of accumulation. It pays to absorb as much as you can from reading and listening and then try to put what you have learned into practice through speaking and writing.\r\n', '2022-03-28 09:50:28', 'Language learning is a process of accumulation. It pays to absorb as much as you can from reading and listening and then try to put what you have learned into practice through speaking and writing.\r\n', 'https://picsum.photos/id/210/220/150', 'original', b'1', b'1', b'1', 'Some Strategies for Learning English', '2021-12-24 09:51:20', 5, 18, 1);
INSERT INTO `t_blog` VALUES (23, b'1', 'This MySQL tutorial explains how to use the MySQL GROUP BY clause with syntax and examples.\r\n#### Description\r\nThe MySQL GROUP BY clause is used in a SELECT statement to collect data across multiple records and group the results by one or more columns.\r\n#### Syntax\r\nThe syntax for the GROUP BY clause in MySQL is:\r\n```sql\r\nSELECT expression1, expression2, ... expression_n, \r\n       aggregate_function (expression)\r\nFROM tables\r\n[WHERE conditions]\r\nGROUP BY expression1, expression2, ... expression_n;\r\n```\r\nParameters or Arguments\r\n\r\nexpression1, expression2, ... expression_n\r\n    The expressions that are not encapsulated within an aggregate function and must be included in the GROUP BY clause.\r\naggregate_function\r\n    A function such as SUM, COUNT, MIN, MAX, or AVG functions.\r\ntables\r\n    The tables that you wish to retrieve records from. There must be at least one table listed in the FROM clause.\r\nWHERE conditions\r\n    Optional. The conditions that must be met for the records to be selected. \r\n	\r\n#### Example - Using SUM function\r\nLet\'s look at a MySQL GROUP BY query example that uses the SUM function.\r\n\r\nThis MySQL GROUP BY example uses the SUM function to return the name of the product and the total quantity (for the product).\r\n```sql\r\nSELECT product, SUM(quantity) AS \"Total quantity\"\r\nFROM order_details\r\nGROUP BY product;\r\n```\r\nBecause you have listed one column (the product field) in your SELECT statement that is not encapsulated in the SUM function, you must use the GROUP BY Clause. The product field must, therefore, be listed in the GROUP BY clause.', '2022-03-28 10:08:58', 'This MySQL tutorial explains how to use the MySQL GROUP BY clause with syntax and examples. The MySQL GROUP BY clause is used in a SELECT statement to collect data across multiple records and group th', 'https://picsum.photos/id/239/220/150', 'reprint', b'1', b'1', b'1', 'MySQL: GROUP BY Clause', '2022-01-07 10:08:58', 1, 1, 1);
INSERT INTO `t_blog` VALUES (27, b'1', 'SAN ANTONIO -- LeBron James did not play Monday night against the San Antonio Spurs, with Los Angeles Lakers coach Frank Vogel saying pregame that James had \"significant\" soreness in his left knee coming off his 56-point effort against the Golden State Warriors.\r\n\r\nJames, 37, missed five games because of his knee from late January until early February, but had not missed any time because of it since.\r\n\r\n\"With the heavy load that he\'s carrying for us this year, we know that it\'s always a possibility,\" Vogel said of James sitting out, before the Lakers\' 117-110 loss. \"I think that\'s why we continue to list him as questionable to see how it\'s responding over the 48 hours between games. And this is just one of those days where it was significant enough to hold him out.\"\r\n\r\nAside from James\' 39-minute workload against Golden State, Los Angeles\' travel day on Sunday -- when a mechanical issue caused the Lakers to sit on the runway for two hours before changing planes for the nearly three-hour flight to San Antonio -- did not help with recovery time, sources told ESPN.\r\n\r\nVogel said the Lakers are \"hopeful\" James will play Wednesday in Houston. After the loss to the Spurs, Vogel said the knee is in better shape than it was when James initially had to sit out because of swelling.\r\n\r\n\"We don\'t think it\'s that,\" Vogel said. \"We\'re hopeful that another day or two will get us back, get him back for the Houston game.\"\r\nEditor\'s Picks\r\n\r\n\r\nJames\' performance against the Warriors was his highest-scoring game with the Lakers and tied for third-highest in his 19-year career, as Los Angeles rallied from a 14-point deficit to win 124-116.\r\n\r\nAny momentum generated from that win was short lived. Monday marked two months to the day since L.A. last posted consecutive victories, and the loss to the Spurs dropped the Lakers\' record to 28-36, leaving them in ninth place in the Western Conference, just a game ahead of the No. 10 New Orleans Pelicans and three games up on the No. 11 Portland Trail Blazers.\r\n\r\n\"[James\'] health takes precedence over any matchup, any individual one game, for sure,\" Vogel said of the playoff implications of James resting.\r\n\r\nLos Angeles also is dealing with the absence of Anthony Davis, who has been out for nearly three weeks with a midfoot sprain.\r\n\r\nJames is averaging 29.4 points, 8.1 rebounds and 6.2 assists in 36.8 minutes per game for the Lakers this season.\r\n\r\nThe Lakers started Austin Reaves, Talen Horton-Tucker, Dwight Howard, Malik Monk and Russell Westbrook against the Spurs, accounting for the 32nd different starting lineup of the season.\r\n\r\n\"No one player is going to have to try to pick up where he left off,\" Vogel said. \"Although I did tell Malik that he\'s got to score 56 tonight since Bron\'s out, he can try to have that mindset. And then I told him quickly that I was just kidding. Because he will actually go out and try to do that. But, it\'s the next man up, but when it\'s someone like LeBron, it has to be done by committee.\"\r\n\r\nMonk scored 17 points -- one off Horton-Tucker\'s team-high 18 -- but shot just 8-for-22, including 1-for-7 from 3.\r\n\r\n\"I got to hit a couple more shots, man,\" Monk said. \"I take full responsibility on that. Not being LeBron, but taking a little load, a little more of a load than I do when he\'s there.\"\r\n\r\nVogel was asked how he thinks James\' knee will be a factor down the stretch as the Lakers jostle for a spot in the play-in tournament over the final games of the regular season.\r\n\r\n\"I think the simplest way to put it is he\'s going to plan on being in unless his knee tells him otherwise,\" Vogel said. \"I don\'t know if we can really forecast any more clearly than that.\"', '2022-03-28 10:16:22', 'SAN ANTONIO -- LeBron James did not play Monday night against the San Antonio Spurs, with Los Angeles Lakers coach Frank Vogel saying pregame that James had \"significant\" soreness in his left knee com', 'https://img2.baidu.com/it/u=961032225,1052626341&fm=253&fmt=auto&app=120&f=JPEG?w=220&h=150', 'reprint', b'1', b'1', b'1', 'LeBron James sits out loss to San Antonio Spurs with \'significant\' knee soreness', '2022-02-11 10:19:41', 1, 6, 1);
INSERT INTO `t_blog` VALUES (29, b'1', 'Shifting from red to orange in the traffic light system could be done regionally, depending largely on hospitalisations, Prime Minister Jacinda Ardern has confirmed.\r\n\r\nArdern this morning spoke to media at Eden Park, touring the facility to see how preparations for the return of outdoor crowds are coming along.\r\n\r\nShe announced the changes yesterday, including an end to scanning and vaccine pass requirements, the removal of some vaccine mandates, and an easing of some gathering limits.\r\n\r\nFrom this weekend there will be be no outdoor gathering limits, but indoor limits under red are set at 200.\r\n\r\nThe government copped criticism over the moves from other political parties with National particularly targeting the traffic light system, saying it was based on the soon-to-be-defunct passes and a simple set of rules would be more straightforward.\r\n\r\nArdern today said the traffic light system had the capacity for regions to be at different levels without worrying about enforcing a hard border.\r\n\r\n\"So we will consider whether some regions are ready to move sooner than others but the first point that we\'ll consider that will be in the first week of April.\"\r\n\r\nShe said hospitalisations would be a \"big factor\" in any such decisions.\r\n\r\nCabinet is expected to consider changes to the traffic light settings on 4 April, which Auckland\'s Heart of the City business group said was too slow.\r\n\r\nHospitality businesses have also raised concerns over the \"seated and separated\" rules, which would limit the capacity of venues even further.\r\n\r\nThere had been costs from Covid-19 restrictions right from the beginning, Ardern said, and while no one would want to see continued anxiety caused by that the restrictions being retained were kept for good reason.\r\n\r\nShe also addressed questions about some of the mandates.\r\n\r\n\"Over the last several months when people have referred to the mandates, often they have been ones that have been put in place in workplaces rather than ones that government themselves have driven,\" she said.\r\n\r\nSome businesses imposed mandates based on government risk assessment advice which they could apply to specific roles. Ardern said employers may need to go through that process again and some had already done so, but the government would continue to play a role in providing advice and guidance.\r\n\r\nBusinesses would not need to act on that advice immediately, however.\r\n\r\n\"It\'s not that instantly any business needs to switch off the way they\'ve been mandating ... the public health advice is key,\" Ardern said.\r\n\r\n\"That\'s the primary consideration, we have to make sure there\'s a strong rationale for their use and then legal advice often sits behind that.\"\r\n\r\nShe said the legal advice to the government was often based on the justification from a public health perspective, so it often supported the public health advice provided to the government.\r\n\r\n\"Each workplace will have its own specific circumstances so it\'s not for me to make those judgements as to whether or not those workplaces are the places where they\'ll continue or not but we\'ll continue to make sure we\'re just updating the advice,\" she said.\r\n', '2022-03-28 10:38:20', 'Shifting from red to orange in the traffic light system could be done regionally, depending largely on hospitalisations, Prime Minister Jacinda Ardern has confirmed.\r\n\r\nArdern this morning spoke to medi', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fp1.itc.cn%2Fimages01%2F20200713%2F0ecc7069565c4e688212140ed6198cc2.jpeg&refer=http%3A%2F%2Fp1.itc.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651027220&t=00d8fb3fd8f99dce9147ffdae77b7931', 'translate', b'1', b'0', b'1', 'Traffic lights change may be regional - PM Jacinda Ardern', '2022-02-26 10:38:20', 3, 3, 1);
INSERT INTO `t_blog` VALUES (30, b'0', 'LOS ANGELES -- — Joel Embiid had 30 points and 10 rebounds, James Harden added 24 points and the Philadelphia 76ers hung on for a 126-121 victory over the Los Angeles Lakers without LeBron James on Wednesday night.\r\n\r\nTwo nights after the Sixers surprisingly beat Eastern Conference-leading Miami despite playing without Embiid and Harden, both stars returned for a tougher-than-expected win over the up-and-down Lakers. Tyrese Maxey scored 21 points for Philadelphia, which has won five of seven overall.\r\n\r\n“Guys played well,” Harden said. “Obviously, we wanted to play a lot better, especially defensively. But we’ll take the win, and we’ve just got to continue to get better in these last games before the playoffs.”\r\n\r\nJames sat out to rest his sore knees, scuttling the potential showdown between the NBA\'s leading scorer and Embiid, who was a fraction of a point behind him.\r\n\r\nPhiladelphia coach Doc Rivers saw his team\'s second-half play behind its stars as an encouraging sign for the process of building teamwork between Embiid and newcomer Harden before the playoffs.\r\n\r\n“Big picture, it’s going great, because they want to do it,” Rivers said. “As far as doing it well, they’re up and down. If you’ve got two guys that want to get it right, they’ll get it right. It’s difficult because it’s being done with 22 games left.”\r\n\r\nDwight Howard scored a season-high 24 points and Malik Monk had 23 for Los Angeles in a spirited effort from the supporting cast, but the Lakers lost for the 11th time in 15 games to fall 11 games below .500 again (31-42).\r\n\r\n“Our goal is championships, and it\'s still there,” said Stanley Johnson, who scored 13 points. “We\'re trying to put the work toward things so when we get to the play-in game and the playoffs that we\'re ready, playing our best basketball. There\'s no win tonight for us at all, but the effort is something that we can continue, and we can use that later.”\r\n\r\nThe ninth-place Lakers are still in the expanded playoff picture, but they are now guaranteed to finish with their seventh losing record in nine years. That\'s the same number of losing seasons they had in the previous 53 years, starting after they moved from Minneapolis to Los Angeles in 1960.\r\n\r\n“We\'re making progress,” Lakers coach Frank Vogel said. “We\'re building habits that are going to win for us in the postseason, and we\'re continuing to grow. We\'re disappointed we lost, but without Bron, without AD, the group that played showed everyone we\'ve still got a whole lot of fight left in us.”\r\n\r\nPhiladelphia led by 14 in the second half, but the Lakers got within 93-91 heading to the fourth quarter. Los Angeles focused its defense on Embiid, but Maxey and Tobias Harris hit big shots down the stretch as Philly hung on.\r\n\r\nRussell Westbrook finished with 24 points, and he got a steal and a layup with 32 seconds left to trim Philadelphia\'s lead to four points before the Sixers hit their free throws to ice it. Harris scored nine of his 20 points in the fourth quarter.', '2022-03-28 10:43:08', 'Joel Embiid had 30 points and 10 rebounds, James Harden added 24 points and the Philadelphia 76ers hung on for a 126-121 victory over the Los Angeles Lakers without LeBron James on Wednesday night.', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fi-1.yxdown.com%2F2013%2F9%2F29%2Ff8d9b725-0635-44b0-831f-285b5691de9d.jpg&refer=http%3A%2F%2Fi-1.yxdown.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651027417&t=e6207eac759f13d01b18914a7b', 'reprint', b'1', b'1', b'0', 'Joel Embiid, Sixers hold off LeBron-less Lakers, 126-121', '2022-03-02 10:43:08', 2, 6, 1);
INSERT INTO `t_blog` VALUES (32, b'1', '#### AOP\r\nAOP (Aspect-Oriented Programming) is a programming pattern that increases modularity by allowing the separation of the cross-cutting concern. These cross-cutting concerns are different from the main business logic. We can add additional behavior to existing code without modification of the code itself.\r\n\r\nSpring\'s AOP framework helps us to implement these cross-cutting concerns.\r\n\r\nUsing AOP, we define common functionality in one place. We are free to define how and where this functionality is applied without modifying the class to which we are applying the new feature. The cross-cutting concern can now be modularized into special classes, called aspect.\r\n\r\nThere are two benefits of aspects:\r\n- First, the logic for each concern is now in one place instead of scattered all over the codebase.\r\n- Second, the business modules only contain code for their primary concern. The secondary concern has been moved to the aspect.\r\n\r\nThe aspects have the responsibility that is to be implemented, called advice. We can implement an aspect\'s functionality into a program at one or more join points.\r\n\r\n### AOP Terminology\r\n1. Aspect: An aspect is a module that encapsulates advice and pointcuts and provides cross-cutting An application can have any number of aspects. We can implement an aspect using regular class annotated with @Aspect annotation.\r\n2. Pointcut: A pointcut is an expression that selects one or more join points where advice is executed. We can define pointcuts using expressions or patterns. It uses different kinds of expressions that matched with the join points. In Spring Framework, AspectJ pointcut expression language is used.\r\n3. Join point: A join point is a point in the application where we apply an AOP aspect. Or it is a specific execution instance of an advice. In AOP, join point can be a method execution, exception handling, changing object variable value, etc.\r\n4. Advice: The advice is an action that we take either before or after the method execution. The action is a piece of code that invokes during the program execution. There are five types of advices in the Spring AOP framework: before, after, after-returning, after-throwing, and around advice. Advices are taken for a particular join point. We will discuss these advices further in this section.\r\n5. Target object: An object on which advices are applied, is called the target object. Target objects are always a proxied It means a subclass is created at run time in which the target method is overridden, and advices are included based on their configuration.\r\n6. Weaving: It is a process of linking aspects with other application types. We can perform weaving at run time, load time, and compile time.\r\n[![aa](https://static.javatpoint.com/springboot/images/pring-boot-aop.png \"aa\")](https://static.javatpoint.com/springboot/images/pring-boot-aop.png \"aa\")\r\n#### AOP vs. OOP\r\nThe differences between AOP and OOP are as follows:\r\nAOP 	OOP\r\nAspect: A code unit that encapsulates pointcuts, advices, and attributes. 	Class: A code unit that encapsulates methods and attributes.\r\nPointcut: It defines the set of entry points in which advice is executed. 	Method signature: It defines the entry points for the execution of method bodies.\r\nAdvice: It is an implementation of cross-cutting concerns. 	Method bodies: It is an implementation of the business logic concerns.\r\nWaver: It constructs code (source or object) with advice. 	Compiler: It converts source code to object code.\r\n\r\n', '2022-03-28 10:51:13', 'AOP (Aspect-Oriented Programming) is a programming pattern that increases modularity by allowing the separation of the cross-cutting concern. These cross-cutting concerns are different from the main b', 'https://static.javatpoint.com/springboot/images/pring-boot-aop.png', 'original', b'1', b'1', b'1', 'Spring Boot AOP', '2022-03-26 10:53:21', 2, 1, 1);

-- ----------------------------
-- Table structure for t_blog_tag_list
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tag_list`;
CREATE TABLE `t_blog_tag_list`  (
  `blog_list_id` bigint(20) NOT NULL,
  `tag_list_id` bigint(20) NOT NULL,
  INDEX `FKbsvu93nqlg2x1cl7uy2e9qot1`(`tag_list_id`) USING BTREE,
  INDEX `FKnphq6t46mob1explnj9hb17p1`(`blog_list_id`) USING BTREE,
  CONSTRAINT `FKbsvu93nqlg2x1cl7uy2e9qot1` FOREIGN KEY (`tag_list_id`) REFERENCES `t_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKnphq6t46mob1explnj9hb17p1` FOREIGN KEY (`blog_list_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blog_tag_list
-- ----------------------------
INSERT INTO `t_blog_tag_list` VALUES (22, 19);
INSERT INTO `t_blog_tag_list` VALUES (22, 20);
INSERT INTO `t_blog_tag_list` VALUES (22, 21);
INSERT INTO `t_blog_tag_list` VALUES (23, 9);
INSERT INTO `t_blog_tag_list` VALUES (27, 12);
INSERT INTO `t_blog_tag_list` VALUES (27, 13);
INSERT INTO `t_blog_tag_list` VALUES (29, 14);
INSERT INTO `t_blog_tag_list` VALUES (29, 16);
INSERT INTO `t_blog_tag_list` VALUES (32, 7);
INSERT INTO `t_blog_tag_list` VALUES (32, 11);

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES (1, 'IT');
INSERT INTO `t_category` VALUES (2, 'Life');
INSERT INTO `t_category` VALUES (3, 'News');
INSERT INTO `t_category` VALUES (4, 'Technical Articles');
INSERT INTO `t_category` VALUES (5, 'Military');
INSERT INTO `t_category` VALUES (6, 'Sports');
INSERT INTO `t_category` VALUES (17, 'Games');
INSERT INTO `t_category` VALUES (18, 'Learning');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blog_id` bigint(20) NULL DEFAULT NULL,
  `parent_comment_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKke3uogd04j4jx316m1p51e05u`(`blog_id`) USING BTREE,
  INDEX `FK4jj284r3pb7japogvo6h72q95`(`parent_comment_id`) USING BTREE,
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (24, '/image/avatar.jpg', 'Good', '2022-03-28 10:11:25', '769673498@qq.com', 'David', 22, NULL);
INSERT INTO `t_comment` VALUES (25, '/image/avatar.jpg', 'Nice', '2022-03-28 10:11:34', '769673498@qq.com', 'David', 22, 24);
INSERT INTO `t_comment` VALUES (26, '/image/avatar.jpg', 'I like it!', '2022-03-28 10:11:54', '769673498@qq.com', 'Tom', 22, NULL);

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (7, 'java');
INSERT INTO `t_tag` VALUES (8, 'javascript');
INSERT INTO `t_tag` VALUES (9, 'mysql');
INSERT INTO `t_tag` VALUES (10, 'vue');
INSERT INTO `t_tag` VALUES (11, 'sprring');
INSERT INTO `t_tag` VALUES (12, 'Lebron James');
INSERT INTO `t_tag` VALUES (13, 'Lakers');
INSERT INTO `t_tag` VALUES (14, 'New Zealand');
INSERT INTO `t_tag` VALUES (15, 'Russia');
INSERT INTO `t_tag` VALUES (16, 'Covid 19');
INSERT INTO `t_tag` VALUES (19, 'English');
INSERT INTO `t_tag` VALUES (20, 'read');
INSERT INTO `t_tag` VALUES (21, 'write');
INSERT INTO `t_tag` VALUES (31, 'spring');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'https://picsum.photos/id/256/200/200', '2022-03-02 08:25:41', NULL, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '2022-03-02 08:25:43', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
