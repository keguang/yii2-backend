

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('普通管理员','1',1474457358),('用户管理','1',1474457360),('超级管理员','1',1474433183);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('/*',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/*',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/assignment/*',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/assignment/assign',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/assignment/index',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/assignment/revoke',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/assignment/view',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/default/*',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/default/index',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/menu/*',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/menu/create',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/menu/delete',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/menu/index',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/menu/update',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/menu/view',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/permission/*',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/permission/assign',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/permission/create',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/permission/delete',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/permission/index',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/permission/remove',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/permission/update',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/permission/view',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/role/*',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/role/assign',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/role/create',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/role/delete',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/role/index',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/role/remove',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/role/update',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/role/view',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/route/*',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/route/assign',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/route/create',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/route/index',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/route/refresh',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/route/remove',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/rule/*',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/rule/create',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/rule/delete',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/rule/index',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/rule/update',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/rule/view',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/user/*',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/user/activate',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/user/change-password',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/user/delete',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/user/index',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/user/login',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/user/logout',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/user/request-password-reset',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/user/reset-password',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/user/signup',2,NULL,NULL,NULL,1474432711,1474432711),('/admin/user/view',2,NULL,NULL,NULL,1474432711,1474432711),('/debug/*',2,NULL,NULL,NULL,1474432711,1474432711),('/debug/default/*',2,NULL,NULL,NULL,1474432711,1474432711),('/debug/default/db-explain',2,NULL,NULL,NULL,1474432711,1474432711),('/debug/default/download-mail',2,NULL,NULL,NULL,1474432711,1474432711),('/debug/default/index',2,NULL,NULL,NULL,1474432711,1474432711),('/debug/default/toolbar',2,NULL,NULL,NULL,1474432711,1474432711),('/debug/default/view',2,NULL,NULL,NULL,1474432711,1474432711),('/gii/*',2,NULL,NULL,NULL,1474432711,1474432711),('/gii/default/*',2,NULL,NULL,NULL,1474432711,1474432711),('/gii/default/action',2,NULL,NULL,NULL,1474432711,1474432711),('/gii/default/diff',2,NULL,NULL,NULL,1474432711,1474432711),('/gii/default/index',2,NULL,NULL,NULL,1474432711,1474432711),('/gii/default/preview',2,NULL,NULL,NULL,1474432711,1474432711),('/gii/default/view',2,NULL,NULL,NULL,1474432711,1474432711),('/site/*',2,NULL,NULL,NULL,1474432711,1474432711),('/site/error',2,NULL,NULL,NULL,1474432711,1474432711),('/site/index',2,NULL,NULL,NULL,1474432711,1474432711),('/site/login',2,NULL,NULL,NULL,1474432711,1474432711),('/site/logout',2,NULL,NULL,NULL,1474432711,1474432711),('普通管理员',2,NULL,NULL,NULL,1474433550,1474433550),('用户管理',2,NULL,NULL,NULL,1474433569,1474433569),('超级管理员',1,NULL,NULL,NULL,1474433112,1474433112);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('普通管理员','/*'),('用户管理','/*'),('超级管理员','/*'),('普通管理员','/admin/*'),('用户管理','/admin/*'),('超级管理员','/admin/*'),('普通管理员','/admin/assignment/*'),('用户管理','/admin/assignment/*'),('超级管理员','/admin/assignment/*'),('普通管理员','/admin/assignment/assign'),('用户管理','/admin/assignment/assign'),('超级管理员','/admin/assignment/assign'),('普通管理员','/admin/assignment/index'),('用户管理','/admin/assignment/index'),('超级管理员','/admin/assignment/index'),('普通管理员','/admin/assignment/revoke'),('用户管理','/admin/assignment/revoke'),('超级管理员','/admin/assignment/revoke'),('普通管理员','/admin/assignment/view'),('用户管理','/admin/assignment/view'),('超级管理员','/admin/assignment/view'),('普通管理员','/admin/default/*'),('用户管理','/admin/default/*'),('超级管理员','/admin/default/*'),('普通管理员','/admin/default/index'),('用户管理','/admin/default/index'),('超级管理员','/admin/default/index'),('普通管理员','/admin/menu/*'),('用户管理','/admin/menu/*'),('超级管理员','/admin/menu/*'),('普通管理员','/admin/menu/create'),('用户管理','/admin/menu/create'),('超级管理员','/admin/menu/create'),('普通管理员','/admin/menu/delete'),('用户管理','/admin/menu/delete'),('超级管理员','/admin/menu/delete'),('普通管理员','/admin/menu/index'),('用户管理','/admin/menu/index'),('超级管理员','/admin/menu/index'),('普通管理员','/admin/menu/update'),('用户管理','/admin/menu/update'),('超级管理员','/admin/menu/update'),('普通管理员','/admin/menu/view'),('用户管理','/admin/menu/view'),('超级管理员','/admin/menu/view'),('普通管理员','/admin/permission/*'),('用户管理','/admin/permission/*'),('超级管理员','/admin/permission/*'),('普通管理员','/admin/permission/assign'),('用户管理','/admin/permission/assign'),('超级管理员','/admin/permission/assign'),('普通管理员','/admin/permission/create'),('用户管理','/admin/permission/create'),('超级管理员','/admin/permission/create'),('普通管理员','/admin/permission/delete'),('用户管理','/admin/permission/delete'),('超级管理员','/admin/permission/delete'),('普通管理员','/admin/permission/index'),('用户管理','/admin/permission/index'),('超级管理员','/admin/permission/index'),('普通管理员','/admin/permission/remove'),('用户管理','/admin/permission/remove'),('超级管理员','/admin/permission/remove'),('普通管理员','/admin/permission/update'),('用户管理','/admin/permission/update'),('超级管理员','/admin/permission/update'),('普通管理员','/admin/permission/view'),('用户管理','/admin/permission/view'),('超级管理员','/admin/permission/view'),('普通管理员','/admin/role/*'),('用户管理','/admin/role/*'),('超级管理员','/admin/role/*'),('普通管理员','/admin/role/assign'),('用户管理','/admin/role/assign'),('超级管理员','/admin/role/assign'),('普通管理员','/admin/role/create'),('用户管理','/admin/role/create'),('超级管理员','/admin/role/create'),('普通管理员','/admin/role/delete'),('用户管理','/admin/role/delete'),('超级管理员','/admin/role/delete'),('普通管理员','/admin/role/index'),('用户管理','/admin/role/index'),('超级管理员','/admin/role/index'),('普通管理员','/admin/role/remove'),('用户管理','/admin/role/remove'),('超级管理员','/admin/role/remove'),('普通管理员','/admin/role/update'),('用户管理','/admin/role/update'),('超级管理员','/admin/role/update'),('普通管理员','/admin/role/view'),('用户管理','/admin/role/view'),('超级管理员','/admin/role/view'),('普通管理员','/admin/route/*'),('用户管理','/admin/route/*'),('超级管理员','/admin/route/*'),('普通管理员','/admin/route/assign'),('用户管理','/admin/route/assign'),('超级管理员','/admin/route/assign'),('普通管理员','/admin/route/create'),('用户管理','/admin/route/create'),('超级管理员','/admin/route/create'),('普通管理员','/admin/route/index'),('用户管理','/admin/route/index'),('超级管理员','/admin/route/index'),('普通管理员','/admin/route/refresh'),('用户管理','/admin/route/refresh'),('超级管理员','/admin/route/refresh'),('普通管理员','/admin/route/remove'),('用户管理','/admin/route/remove'),('超级管理员','/admin/route/remove'),('普通管理员','/admin/rule/*'),('用户管理','/admin/rule/*'),('超级管理员','/admin/rule/*'),('普通管理员','/admin/rule/create'),('用户管理','/admin/rule/create'),('超级管理员','/admin/rule/create'),('普通管理员','/admin/rule/delete'),('用户管理','/admin/rule/delete'),('超级管理员','/admin/rule/delete'),('普通管理员','/admin/rule/index'),('用户管理','/admin/rule/index'),('超级管理员','/admin/rule/index'),('普通管理员','/admin/rule/update'),('用户管理','/admin/rule/update'),('超级管理员','/admin/rule/update'),('普通管理员','/admin/rule/view'),('用户管理','/admin/rule/view'),('超级管理员','/admin/rule/view'),('普通管理员','/admin/user/*'),('用户管理','/admin/user/*'),('超级管理员','/admin/user/*'),('普通管理员','/admin/user/activate'),('用户管理','/admin/user/activate'),('超级管理员','/admin/user/activate'),('普通管理员','/admin/user/change-password'),('用户管理','/admin/user/change-password'),('超级管理员','/admin/user/change-password'),('普通管理员','/admin/user/delete'),('用户管理','/admin/user/delete'),('超级管理员','/admin/user/delete'),('普通管理员','/admin/user/index'),('用户管理','/admin/user/index'),('超级管理员','/admin/user/index'),('普通管理员','/admin/user/login'),('用户管理','/admin/user/login'),('超级管理员','/admin/user/login'),('普通管理员','/admin/user/logout'),('用户管理','/admin/user/logout'),('超级管理员','/admin/user/logout'),('普通管理员','/admin/user/request-password-reset'),('用户管理','/admin/user/request-password-reset'),('超级管理员','/admin/user/request-password-reset'),('普通管理员','/admin/user/reset-password'),('用户管理','/admin/user/reset-password'),('超级管理员','/admin/user/reset-password'),('普通管理员','/admin/user/signup'),('用户管理','/admin/user/signup'),('超级管理员','/admin/user/signup'),('普通管理员','/admin/user/view'),('用户管理','/admin/user/view'),('超级管理员','/admin/user/view'),('普通管理员','/debug/*'),('用户管理','/debug/*'),('超级管理员','/debug/*'),('普通管理员','/debug/default/*'),('用户管理','/debug/default/*'),('超级管理员','/debug/default/*'),('普通管理员','/debug/default/db-explain'),('用户管理','/debug/default/db-explain'),('超级管理员','/debug/default/db-explain'),('普通管理员','/debug/default/download-mail'),('用户管理','/debug/default/download-mail'),('超级管理员','/debug/default/download-mail'),('普通管理员','/debug/default/index'),('用户管理','/debug/default/index'),('超级管理员','/debug/default/index'),('普通管理员','/debug/default/toolbar'),('用户管理','/debug/default/toolbar'),('超级管理员','/debug/default/toolbar'),('普通管理员','/debug/default/view'),('用户管理','/debug/default/view'),('超级管理员','/debug/default/view'),('普通管理员','/gii/*'),('用户管理','/gii/*'),('超级管理员','/gii/*'),('普通管理员','/gii/default/*'),('用户管理','/gii/default/*'),('超级管理员','/gii/default/*'),('普通管理员','/gii/default/action'),('用户管理','/gii/default/action'),('超级管理员','/gii/default/action'),('普通管理员','/gii/default/diff'),('用户管理','/gii/default/diff'),('超级管理员','/gii/default/diff'),('普通管理员','/gii/default/index'),('用户管理','/gii/default/index'),('超级管理员','/gii/default/index'),('普通管理员','/gii/default/preview'),('用户管理','/gii/default/preview'),('超级管理员','/gii/default/preview'),('普通管理员','/gii/default/view'),('用户管理','/gii/default/view'),('超级管理员','/gii/default/view'),('普通管理员','/site/*'),('用户管理','/site/*'),('超级管理员','/site/*'),('普通管理员','/site/error'),('用户管理','/site/error'),('超级管理员','/site/error'),('普通管理员','/site/index'),('用户管理','/site/index'),('超级管理员','/site/index'),('普通管理员','/site/login'),('用户管理','/site/login'),('超级管理员','/site/login'),('普通管理员','/site/logout'),('用户管理','/site/logout'),('超级管理员','/site/logout'),('超级管理员','普通管理员'),('普通管理员','用户管理'),('超级管理员','用户管理');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (10,'权限控制',NULL,'/admin/route/index',NULL,'{\"icon\": \"fa fa-key\"}'),(11,'路由列表',10,'/admin/route/index',1,'{\"icon\": \"fa fa-user\", \"visible\": true}'),(12,'菜单管理',10,'/admin/menu/index',2,'{\"icon\": \"fa fa-user\", \"visible\": true}'),(13,'角色管理',10,'/admin/role/index',3,'{\"icon\": \"fa fa-user\", \"visible\": true}'),(14,'分配权限',10,'/admin/assignment/index',4,'{\"icon\": \"fa fa-user\", \"visible\": true}'),(15,'权限分配',10,'/admin/permission/index',5,'{\"icon\": \"fa fa-user\", \"visible\": true}'),(16,'用户管理',NULL,'/admin/user/index',NULL,NULL),(17,'用户列表',16,'/admin/user/index',NULL,'{\"icon\": \"fa fa-user\", \"visible\": true}\r\n');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) NOT NULL COMMENT '自动登录key',
  `password_hash` varchar(255) NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','1Cuitlz25Fww4vy5YCFipq7gIWevDJTB','$2y$13$BSjKH0UNSKy2BD0Q6QiiduNsCsrFvFl1OwbFox6zTbgQaRKvoPU0C',NULL,'admin@qq.com',10,10,1474371787,1474371787);
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

-- Dump completed on 2016-09-21 19:37:10
