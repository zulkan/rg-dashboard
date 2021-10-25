/*
 Navicat Premium Data Transfer

 Source Server         : rgdb
 Source Server Type    : SQLite
 Source Server Version : 3030001
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3030001
 File Encoding         : 65001

 Date: 24/10/2021 22:42:15
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS "orders";
CREATE TABLE orders (
id integer auto increment primary key,
package_id integer not null,
status text not null

, user_id text not null default '');

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO "orders" VALUES (1, 1, 'SUCCEED', 1);
INSERT INTO "orders" VALUES (2, 2, 'IN_PROGRESS', 1);
COMMIT;

-- ----------------------------
-- Table structure for packages
-- ----------------------------
DROP TABLE IF EXISTS "packages";
CREATE TABLE packages (
id integer auto increment not null,
name text not null,
serial text not null,
tag text not null
);

-- ----------------------------
-- Records of packages
-- ----------------------------
BEGIN;
INSERT INTO "packages" VALUES (1, 'Mahir Berbahasa Inggris', 'PKG-EQCB30RW', 'englishacademy');
INSERT INTO "packages" VALUES (2, 'Belajar Mudah Java Untuk Pemula', 'PGK-7RI296FY', 'skillacademy');
COMMIT;

-- ----------------------------
-- Table structure for prizes
-- ----------------------------
DROP TABLE IF EXISTS "prizes";
CREATE TABLE prizes (
id integer auto increment not null,
name text not null
);

-- ----------------------------
-- Records of prizes
-- ----------------------------
BEGIN;
INSERT INTO "prizes" VALUES (1, 'Shoes');
INSERT INTO "prizes" VALUES (2, 'Bag');
INSERT INTO "prizes" VALUES (3, 'Pencils');
COMMIT;

-- ----------------------------
-- Table structure for product_prizes
-- ----------------------------
DROP TABLE IF EXISTS "product_prizes";
CREATE TABLE product_prizes (
product_id integer not null ,
prize_id integeger not null,
primary key (product_id, prize_id)
);

-- ----------------------------
-- Records of product_prizes
-- ----------------------------
BEGIN;
INSERT INTO "product_prizes" VALUES (1, 1);
INSERT INTO "product_prizes" VALUES (2, 2);
INSERT INTO "product_prizes" VALUES (3, 3);
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS "products";
CREATE TABLE products (
id integer auto increment primary key,
name text not null,
tag text not null

);

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO "products" VALUES (1, 'English Academy', 'englishacademy');
INSERT INTO "products" VALUES (2, 'Skill Academy', 'skillacademy');
INSERT INTO "products" VALUES (3, 'Ruang Guru', 'ruangguru');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "roles";
CREATE TABLE roles (
id text primary key not null,
description text not null
);

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO "roles" VALUES ('1', 'user');
INSERT INTO "roles" VALUES ('2', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "users";
CREATE TABLE users (
id text primary key not null,
auth text not null,
name text not null,
email text not null,
phone_number text,
role_id integer not null
);

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO "users" VALUES ('anugrahaman71', '', 'anugrah aman', 'a@a.com', '12345', 1);
INSERT INTO "users" VALUES ('rahelpratama413', '', 'rahelpratama', 'rahelpratama413', '123', 1);
INSERT INTO "users" VALUES ('aisyahrodiah354', '', 'aisyah', 'aisyah@rg.com', '081234', 1);
INSERT INTO "users" VALUES ('donomargonobegono97', '', 'dono margono', 'dono@rg.com', '123222', 1);
INSERT INTO "users" VALUES ('admin', 'admin', 'iqbal', 'iqbal@gmail.com', '11231', 2);
COMMIT;

PRAGMA foreign_keys = true;
