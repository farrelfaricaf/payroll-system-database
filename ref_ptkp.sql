-- ----------------------------
-- Table structure for ref_ptkp
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_ptkp";
CREATE TABLE "public"."ref_ptkp" (
  "kode_ptkp" varchar(5) COLLATE "pg_catalog"."default" NOT NULL,
  "keterangan" varchar(100) COLLATE "pg_catalog"."default",
  "nilai_ptkp" numeric(15,2)
)
;

-- ----------------------------
-- Records of ref_ptkp
-- ----------------------------
INSERT INTO "public"."ref_ptkp" VALUES ('TK3', 'Tidak Kawin, 3 Tanggungan', 67500000.00);
INSERT INTO "public"."ref_ptkp" VALUES ('TK2', 'Tidak Kawin, 2 Tanggungan', 63000000.00);
INSERT INTO "public"."ref_ptkp" VALUES ('TK1', 'Tidak Kawin, 1 Tanggungan', 58500000.00);
INSERT INTO "public"."ref_ptkp" VALUES ('TK0', 'Tidak Kawin, Tanpa Tanggungan', 54000000.00);
INSERT INTO "public"."ref_ptkp" VALUES ('KI3', 'Kawin, Istri Penghasilan Digabung, 3 Tgg', 126000000.00);
INSERT INTO "public"."ref_ptkp" VALUES ('KI2', 'Kawin, Istri Penghasilan Digabung, 2 Tgg', 121500000.00);
INSERT INTO "public"."ref_ptkp" VALUES ('KI1', 'Kawin, Istri Penghasilan Digabung, 1 Tgg', 117000000.00);
INSERT INTO "public"."ref_ptkp" VALUES ('KI0', 'Kawin, Istri Penghasilan Digabung, 0 Tgg', 112500000.00);
INSERT INTO "public"."ref_ptkp" VALUES ('K3', 'Kawin, 3 Tanggungan', 72000000.00);
INSERT INTO "public"."ref_ptkp" VALUES ('K2', 'Kawin, 2 Tanggungan', 67500000.00);
INSERT INTO "public"."ref_ptkp" VALUES ('K1', 'Kawin, 1 Tanggungan', 63000000.00);
INSERT INTO "public"."ref_ptkp" VALUES ('K0', 'Kawin, Tanpa Tanggungan', 58500000.00);

-- ----------------------------
-- Primary Key structure for table ref_ptkp
-- ----------------------------
ALTER TABLE "public"."ref_ptkp" ADD CONSTRAINT "ref_ptkp_pkey" PRIMARY KEY ("kode_ptkp");
