-- ----------------------------
-- Table structure for riwayat_gaji
-- ----------------------------
DROP TABLE IF EXISTS "public"."riwayat_gaji";
CREATE TABLE "public"."riwayat_gaji" (
  "id_gaji" int4 NOT NULL,
  "id_karyawan" int4,
  "periode" date,
  "gaji_pokok" numeric(12,2),
  "tunjangan" numeric(12,2),
  "lembur" numeric(12,2),
  "potongan" numeric(12,2),
  "pajak" numeric(12,2),
  "total_bersih" numeric(12,2)
)
;

-- ----------------------------
-- Records of riwayat_gaji
-- ----------------------------
INSERT INTO "public"."riwayat_gaji" VALUES (1, 1, '2025-01-01', 4000000.00, 1180000.00, 0.00, 259000.00, 200000.00, 4721000.00);
INSERT INTO "public"."riwayat_gaji" VALUES (2, 2, '2025-01-01', 2800000.00, 830000.00, 0.00, 181500.00, 50000.00, 3398500.00);
INSERT INTO "public"."riwayat_gaji" VALUES (3, 3, '2025-01-01', 7000000.00, 2050000.00, 1900000.00, 609000.00, 600000.00, 9741000.00);
INSERT INTO "public"."riwayat_gaji" VALUES (4, 4, '2025-01-01', 20000000.00, 5900000.00, 1500000.00, 709000.00, 1000000.00, 25691000.00);
INSERT INTO "public"."riwayat_gaji" VALUES (5, 5, '2025-01-01', 18000000.00, 4900000.00, 2550000.00, 409000.00, 1000000.00, 24041000.00);
INSERT INTO "public"."riwayat_gaji" VALUES (6, 6, '2025-01-01', 14000000.00, 3750000.00, 2000000.00, 559000.00, 800000.00, 18391000.00);
INSERT INTO "public"."riwayat_gaji" VALUES (7, 7, '2025-01-01', 2000000.00, 200000.00, 0.00, 110000.00, 50000.00, 2040000.00);
INSERT INTO "public"."riwayat_gaji" VALUES (8, 8, '2025-01-01', 18000000.00, 4900000.00, 2550000.00, 409000.00, 1000000.00, 24041000.00);
INSERT INTO "public"."riwayat_gaji" VALUES (9, 9, '2025-01-01', 14000000.00, 3750000.00, 1650000.00, 659000.00, 800000.00, 17941000.00);
INSERT INTO "public"."riwayat_gaji" VALUES (10, 10, '2025-01-01', 7000000.00, 2050000.00, 1900000.00, 609000.00, 600000.00, 9741000.00);

-- ----------------------------
-- Primary Key structure for table riwayat_gaji
-- ----------------------------
ALTER TABLE "public"."riwayat_gaji" ADD CONSTRAINT "riwayat_gaji_pkey" PRIMARY KEY ("id_gaji");

-- ----------------------------
-- Foreign Keys structure for table riwayat_gaji
-- ----------------------------
ALTER TABLE "public"."riwayat_gaji" ADD CONSTRAINT "riwayat_gaji_id_karyawan_fkey" FOREIGN KEY ("id_karyawan") REFERENCES "public"."karyawan" ("id_karyawan") ON DELETE NO ACTION ON UPDATE NO ACTION;
