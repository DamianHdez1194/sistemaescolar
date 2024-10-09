/*
 Navicat Premium Data Transfer

 Source Server         : wamp64
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : plantilla

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 03/10/2024 14:31:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment`  (
  `item_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`item_name`, `user_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rule_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  `group_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE,
  INDEX `idx-auth_item-type`(`type`) USING BTREE,
  INDEX `fk_auth_item_group_code`(`group_code`) USING BTREE,
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `auth_item_ibfk_2` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('//*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('//controller', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('//crud', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('//extension', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('//form', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('//index', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('//model', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('//module', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/asset/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/asset/compress', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/asset/template', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/cache/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/cache/flush', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/cache/flush-all', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/cache/flush-schema', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/cache/index', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/debug/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/index', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/view', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/debug/user/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/debug/user/reset-identity', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/debug/user/set-identity', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/doc/*', 3, NULL, NULL, NULL, 1725496436, 1725496436, NULL);
INSERT INTO `auth_item` VALUES ('/doc/documento', 3, NULL, NULL, NULL, 1725496436, 1725496436, NULL);
INSERT INTO `auth_item` VALUES ('/fixture/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/fixture/load', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/fixture/unload', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/gii/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/action', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/diff', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/index', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/preview', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/view', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/gridview/*', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/gridview/export/*', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/gridview/export/download', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/gridview/grid-edited-row/*', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/gridview/grid-edited-row/back', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/hello/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/hello/index', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/help/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/help/index', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/help/list', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/help/list-action-options', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/help/usage', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/message/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/message/config', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/message/config-template', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/message/extract', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/create', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/down', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/fresh', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/history', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/mark', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/new', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/redo', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/to', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/up', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/serve/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/serve/index', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/site/*', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/site/about', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/site/captcha', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/site/contact', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/site/error', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/site/index', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/site/login', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/site/logout', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/tuarchivoestudiante/*', 3, NULL, NULL, NULL, 1723319938, 1723319938, NULL);
INSERT INTO `auth_item` VALUES ('/tuarchivoestudiante/create', 3, NULL, NULL, NULL, 1723319938, 1723319938, NULL);
INSERT INTO `auth_item` VALUES ('/tuarchivoestudiante/delete', 3, NULL, NULL, NULL, 1723319938, 1723319938, NULL);
INSERT INTO `auth_item` VALUES ('/tuarchivoestudiante/index', 3, NULL, NULL, NULL, 1723319938, 1723319938, NULL);
INSERT INTO `auth_item` VALUES ('/tuarchivoestudiante/revisar', 3, NULL, NULL, NULL, 1723319938, 1723319938, NULL);
INSERT INTO `auth_item` VALUES ('/tuarchivoestudiante/sustituir-archivo', 3, NULL, NULL, NULL, 1723319938, 1723319938, NULL);
INSERT INTO `auth_item` VALUES ('/tuarchivoestudiante/update', 3, NULL, NULL, NULL, 1723319938, 1723319938, NULL);
INSERT INTO `auth_item` VALUES ('/tuarchivoestudiante/view', 3, NULL, NULL, NULL, 1723319938, 1723319938, NULL);
INSERT INTO `auth_item` VALUES ('/tuareaapoyo/*', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tuareaapoyo/create', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tuareaapoyo/delete', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tuareaapoyo/index', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tuareaapoyo/update', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tuareaapoyo/view', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacora/*', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacora/create', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacora/delete', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacora/index', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacora/update', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacora/view', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacoraarchivo/*', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacoraarchivo/create', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacoraarchivo/delete', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacoraarchivo/index', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacoraarchivo/update', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tubitacoraarchivo/view', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tucarrera/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tucarrera/create', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tucarrera/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tucarrera/index', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tucarrera/update', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tucarrera/view', 3, NULL, NULL, NULL, 1675278404, 1675278404, NULL);
INSERT INTO `auth_item` VALUES ('/tucicloescolar/*', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tucicloescolar/create', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tucicloescolar/delete', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tucicloescolar/index', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tucicloescolar/update', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tucicloescolar/view', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/bienvenida', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/create', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/enviar', 3, NULL, NULL, NULL, 1724358803, 1724358803, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/finalizado', 3, NULL, NULL, NULL, 1724358803, 1724358803, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/graba-estudiante', 3, NULL, NULL, NULL, 1724358803, 1724358803, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/index', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/iniciar', 3, NULL, NULL, NULL, 1724214220, 1724214220, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/registrar', 3, NULL, NULL, NULL, 1724214220, 1724214220, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/update', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tucuestionario/view', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudepartamento/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudepartamento/create', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudepartamento/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudepartamento/index', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudepartamento/update', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudepartamento/view', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudiagnostico/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudiagnostico/activa', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudiagnostico/bloqueo', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudiagnostico/create', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudiagnostico/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudiagnostico/index', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudiagnostico/update', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudiagnostico/view', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudocente/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudocente/create', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudocente/create-docente', 3, NULL, NULL, NULL, 1724457728, 1724457728, NULL);
INSERT INTO `auth_item` VALUES ('/tudocente/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudocente/index', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudocente/update', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tudocente/view', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuestatu/*', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tuestatu/create', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tuestatu/delete', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tuestatu/index', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tuestatu/update', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tuestatu/view', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tuestudiante/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuestudiante/create', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuestudiante/create-estudiante', 3, NULL, NULL, NULL, 1724457728, 1724457728, NULL);
INSERT INTO `auth_item` VALUES ('/tuestudiante/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuestudiante/index', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuestudiante/update', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuestudiante/view', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tugrupo/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tugrupo/create', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tugrupo/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tugrupo/index', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tugrupo/lista', 3, NULL, NULL, NULL, 1680320071, 1680320071, NULL);
INSERT INTO `auth_item` VALUES ('/tugrupo/lista-grupo', 3, NULL, NULL, NULL, 1723319938, 1723319938, NULL);
INSERT INTO `auth_item` VALUES ('/tugrupo/update', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tugrupo/view', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tumodalidad/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tumodalidad/create', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tumodalidad/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tumodalidad/index', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tumodalidad/update', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tumodalidad/view', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tumovimiento/*', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tumovimiento/create', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tumovimiento/delete', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tumovimiento/index', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tumovimiento/update', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tumovimiento/view', 3, NULL, NULL, NULL, 1674134915, 1674134915, NULL);
INSERT INTO `auth_item` VALUES ('/tuperiodo/*', 3, NULL, NULL, NULL, 1674134914, 1674134914, NULL);
INSERT INTO `auth_item` VALUES ('/tuperiodo/create', 3, NULL, NULL, NULL, 1674134914, 1674134914, NULL);
INSERT INTO `auth_item` VALUES ('/tuperiodo/delete', 3, NULL, NULL, NULL, 1674134914, 1674134914, NULL);
INSERT INTO `auth_item` VALUES ('/tuperiodo/index', 3, NULL, NULL, NULL, 1674134914, 1674134914, NULL);
INSERT INTO `auth_item` VALUES ('/tuperiodo/lista', 3, NULL, NULL, NULL, 1723319938, 1723319938, NULL);
INSERT INTO `auth_item` VALUES ('/tuperiodo/update', 3, NULL, NULL, NULL, 1674134914, 1674134914, NULL);
INSERT INTO `auth_item` VALUES ('/tuperiodo/view', 3, NULL, NULL, NULL, 1674134914, 1674134914, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneacion/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneacion/create', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneacion/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneacion/index', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneacion/iniciar-planeacion', 3, NULL, NULL, NULL, 1675738422, 1675738422, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneacion/update', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneacion/view', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneaciondetalle/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneaciondetalle/create', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneaciondetalle/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneaciondetalle/formato-planeacion', 3, NULL, NULL, NULL, 1724457728, 1724457728, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneaciondetalle/index', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneaciondetalle/nuevo', 3, NULL, NULL, NULL, 1675654732, 1675654732, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneaciondetalle/plan', 3, NULL, NULL, NULL, 1675654732, 1675654732, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneaciondetalle/update', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tuplaneaciondetalle/view', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/asignar', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/asignar-tutorado', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/borrar-tutor', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/ciclo', 3, NULL, NULL, NULL, 1675278754, 1675278754, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/ciclo-tutor', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/create', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/index', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/lista', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/lista-asignados', 3, NULL, NULL, NULL, 1675280493, 1675280493, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/lista-tutor', 3, NULL, NULL, NULL, 1725496436, 1725496436, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/lista-tutorados', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/lista-tutores', 3, NULL, NULL, NULL, 1724457728, 1724457728, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/plan', 3, NULL, NULL, NULL, 1675649891, 1675649891, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/update', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututor/view', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututorado/*', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututorado/borrar-tutorado', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututorado/create', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututorado/delete', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututorado/formato', 3, NULL, NULL, NULL, 1725496436, 1725496436, NULL);
INSERT INTO `auth_item` VALUES ('/tututorado/index', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututorado/mi-ciclo', 3, NULL, NULL, NULL, 1725496436, 1725496436, NULL);
INSERT INTO `auth_item` VALUES ('/tututorado/mi-tutor', 3, NULL, NULL, NULL, 1725496436, 1725496436, NULL);
INSERT INTO `auth_item` VALUES ('/tututorado/update', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/tututorado/view', 3, NULL, NULL, NULL, 1675278403, 1675278403, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/*', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/*', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-activate', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-deactivate', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-delete', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/create', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/delete', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/grid-page-size', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/grid-sort', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/index', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/toggle-attribute', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/update', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/view', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/*', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/captcha', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/change-own-password', 3, NULL, NULL, NULL, 1673821793, 1673821793, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-email', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-email-receive', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-registration-email', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/login', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/logout', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/password-recovery', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/password-recovery-receive', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/registration', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/*', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-activate', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-deactivate', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-delete', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/create', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/delete', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/grid-page-size', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/grid-sort', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/index', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/refresh-routes', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/set-child-permissions', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/set-child-routes', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/toggle-attribute', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/update', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/view', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/*', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-activate', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-deactivate', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-delete', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/create', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/delete', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/grid-page-size', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/grid-sort', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/index', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/set-child-permissions', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/set-child-roles', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/toggle-attribute', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/update', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/view', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/*', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/set', 3, NULL, NULL, NULL, 1673821793, 1673821793, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/set-roles', 3, NULL, NULL, NULL, 1673821793, 1673821793, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/*', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-activate', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-deactivate', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-delete', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/create', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/delete', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/grid-page-size', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/grid-sort', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/index', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/toggle-attribute', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/update', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/view', 3, NULL, NULL, NULL, 1673826398, 1673826398, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/*', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-activate', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-deactivate', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-delete', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/change-password', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/create', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/delete', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/grid-page-size', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/grid-sort', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/index', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/toggle-attribute', 3, NULL, NULL, NULL, 1673826399, 1673826399, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/update', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/view', 3, NULL, NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('Admin', 1, 'Admin', NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('assignRolesToUsers', 2, 'Assign roles to users', NULL, NULL, 1673821793, 1673821793, 'userManagement');
INSERT INTO `auth_item` VALUES ('bindUserToIp', 2, 'Bind user to IP', NULL, NULL, 1673821793, 1673821793, 'userManagement');
INSERT INTO `auth_item` VALUES ('changeOwnPassword', 2, 'Change own password', NULL, NULL, 1673821793, 1673821793, 'userCommonPermissions');
INSERT INTO `auth_item` VALUES ('changeUserPassword', 2, 'Change user password', NULL, NULL, 1673821792, 1673821792, 'userManagement');
INSERT INTO `auth_item` VALUES ('commonPermission', 2, 'Common permission', NULL, NULL, 1673821792, 1673821792, NULL);
INSERT INTO `auth_item` VALUES ('createUsers', 2, 'Create users', NULL, NULL, 1673821792, 1673821792, 'userManagement');
INSERT INTO `auth_item` VALUES ('deleteUsers', 2, 'Delete users', NULL, NULL, 1673821792, 1673821792, 'userManagement');
INSERT INTO `auth_item` VALUES ('editUserEmail', 2, 'Edit user email', NULL, NULL, 1673821793, 1673821793, 'userManagement');
INSERT INTO `auth_item` VALUES ('editUsers', 2, 'Edit users', NULL, NULL, 1673821792, 1673821792, 'userManagement');
INSERT INTO `auth_item` VALUES ('viewRegistrationIp', 2, 'View registration IP', NULL, NULL, 1673821793, 1673821793, 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUserEmail', 2, 'View user email', NULL, NULL, 1673821793, 1673821793, 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUserRoles', 2, 'View user roles', NULL, NULL, 1673821793, 1673821793, 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUsers', 2, 'View users', NULL, NULL, 1673821792, 1673821792, 'userManagement');
INSERT INTO `auth_item` VALUES ('viewVisitLog', 2, 'View visit log', NULL, NULL, 1673821793, 1673821793, 'userManagement');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child`  (
  `parent` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`parent`, `child`) USING BTREE,
  INDEX `child`(`child`) USING BTREE,
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('changeOwnPassword', '/user-management/auth/change-own-password');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', '/user-management/user-permission/set');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', '/user-management/user-permission/set-roles');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/bulk-activate');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/bulk-deactivate');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', '/user-management/user/bulk-delete');
INSERT INTO `auth_item_child` VALUES ('changeUserPassword', '/user-management/user/change-password');
INSERT INTO `auth_item_child` VALUES ('createUsers', '/user-management/user/create');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', '/user-management/user/delete');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/grid-page-size');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/index');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/update');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/view');
INSERT INTO `auth_item_child` VALUES ('Admin', 'assignRolesToUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'changeOwnPassword');
INSERT INTO `auth_item_child` VALUES ('Admin', 'changeUserPassword');
INSERT INTO `auth_item_child` VALUES ('Admin', 'createUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'deleteUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'editUsers');
INSERT INTO `auth_item_child` VALUES ('editUserEmail', 'viewUserEmail');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', 'viewUserRoles');
INSERT INTO `auth_item_child` VALUES ('Admin', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('changeUserPassword', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('createUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('editUsers', 'viewUsers');

-- ----------------------------
-- Table structure for auth_item_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_group`;
CREATE TABLE `auth_item_group`  (
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_item_group
-- ----------------------------
INSERT INTO `auth_item_group` VALUES ('userCommonPermissions', 'User common permission', 1673821793, 1673821793);
INSERT INTO `auth_item_group` VALUES ('userManagement', 'User management', 1673821792, 1673821792);

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for tu_estatu
-- ----------------------------
DROP TABLE IF EXISTS `tu_estatu`;
CREATE TABLE `tu_estatu`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `update_at` int(11) NULL DEFAULT NULL,
  `fk_user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `fk_user`(`fk_user`) USING BTREE,
  CONSTRAINT `tu_estatu_ibfk_1` FOREIGN KEY (`fk_user`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tu_estatu
-- ----------------------------
INSERT INTO `tu_estatu` VALUES (1, 'VIGENTE', 1673929540, 1674222535, 1);
INSERT INTO `tu_estatu` VALUES (2, 'NO VIGENTE', 1673972348, 1674222540, 1);
INSERT INTO `tu_estatu` VALUES (3, 'EN CAPTURA', 1673972416, 1674222545, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `confirmation_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `superadmin` smallint(6) NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bind_to_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_confirmed` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'superadmin', 'r4ERAM1vlXJvQ9TeFxHpHfrBczr0rnwb', '$2y$13$vKVft/qAy1Wpe.oGNKF/PukVs7evaMYVgXQyP1KRABpPh6aqoJ702', NULL, 1, 1, 1673821792, 1727981850, NULL, '', NULL, 0);

-- ----------------------------
-- Table structure for user_visit_log
-- ----------------------------
DROP TABLE IF EXISTS `user_visit_log`;
CREATE TABLE `user_visit_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `language` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `os` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_visit_log
-- ----------------------------
INSERT INTO `user_visit_log` VALUES (1, '66fef3cbdc9fe', '::1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 1, 1727984587, 'Chrome', 'Windows');

SET FOREIGN_KEY_CHECKS = 1;
