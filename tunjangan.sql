-- ----------------------------
-- Table structure for tunjangan
-- ----------------------------
DROP TABLE IF EXISTS "public"."tunjangan";
CREATE TABLE "public"."tunjangan" (
  "id_tunjangan" int4 NOT NULL,
  "tunjangan_jabatan" numeric(12,2),
  "tunjangan_transport" numeric(12,2),
  "tunjangan_makan" numeric(12,2)
)
;

-- ----------------------------
-- Records of tunjangan
-- ----------------------------
INSERT INTO "public"."tunjangan" VALUES (1, 5000000.00, 500000.00, 400000.00);
INSERT INTO "public"."tunjangan" VALUES (2, 4000000.00, 500000.00, 400000.00);
INSERT INTO "public"."tunjangan" VALUES (3, 3000000.00, 400000.00, 350000.00);
INSERT INTO "public"."tunjangan" VALUES (4, 3000000.00, 400000.00, 350000.00);
INSERT INTO "public"."tunjangan" VALUES (5, 2000000.00, 350000.00, 300000.00);
INSERT INTO "public"."tunjangan" VALUES (6, 2000000.00, 350000.00, 300000.00);
INSERT INTO "public"."tunjangan" VALUES (7, 1500000.00, 300000.00, 250000.00);
INSERT INTO "public"."tunjangan" VALUES (8, 1500000.00, 300000.00, 250000.00);
INSERT INTO "public"."tunjangan" VALUES (9, 1000000.00, 250000.00, 200000.00);
INSERT INTO "public"."tunjangan" VALUES (10, 1000000.00, 250000.00, 200000.00);
INSERT INTO "public"."tunjangan" VALUES (11, 800000.00, 200000.00, 180000.00);
INSERT INTO "public"."tunjangan" VALUES (12, 800000.00, 200000.00, 180000.00);
INSERT INTO "public"."tunjangan" VALUES (13, 800000.00, 200000.00, 180000.00);
INSERT INTO "public"."tunjangan" VALUES (15, 500000.00, 180000.00, 150000.00);
INSERT INTO "public"."tunjangan" VALUES (16, 0.00, 100000.00, 100000.00);
INSERT INTO "public"."tunjangan" VALUES (17, 3000000.00, 600000.00, 200000.00);
INSERT INTO "public"."tunjangan" VALUES (18, 300000.00, 350000.00, 250000.00);
INSERT INTO "public"."tunjangan" VALUES (19, 250000.00, 50000.00, 100000.00);
INSERT INTO "public"."tunjangan" VALUES (14, 500000.00, 180000.00, 150000.00);

-- ----------------------------
-- Primary Key structure for table tunjangan
-- ----------------------------
ALTER TABLE "public"."tunjangan" ADD CONSTRAINT "tunjangan_pkey" PRIMARY KEY ("id_tunjangan");
