-- -------------------------------------------------------------
-- TablePlus 4.8.8(450)
--
-- https://tableplus.com/
--
-- Database: recipe_directory
-- Generation Time: 2022-09-29 13:53:35.2960
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS recipes_id_seq;

-- Table Definition
CREATE TABLE "public"."recipes" (
    "id" int4 NOT NULL DEFAULT nextval('recipes_id_seq'::regclass),
    "name" text,
    "cooking_time" int4,
    "rating" int4,
    PRIMARY KEY ("id")
);

