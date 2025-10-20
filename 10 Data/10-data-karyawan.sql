-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS "public"."karyawan";
CREATE TABLE "public"."karyawan" (
  "id_karyawan" int4 NOT NULL,
  "nama_depan" varchar(50) COLLATE "pg_catalog"."default",
  "nama_belakang" varchar(50) COLLATE "pg_catalog"."default",
  "status" varchar(20) COLLATE "pg_catalog"."default",
  "alamat" varchar(150) COLLATE "pg_catalog"."default",
  "kota" varchar(100) COLLATE "pg_catalog"."default",
  "kode_pos" varchar(10) COLLATE "pg_catalog"."default",
  "id_jabatan" int4,
  "kode_ptkp" varchar(5) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO "public"."karyawan" VALUES (1, 'Ira', 'Aurora Hartati', 'aktif', 'Gg. Raden No. 385', 'Denpasar', '36616', 12, 'KI2');
INSERT INTO "public"."karyawan" VALUES (2, 'Dipa', 'Reksa Siregar', 'aktif', 'Ki. Baladewa No. 606', 'Pangkal Pinang', '52740', 15, 'TK3');
INSERT INTO "public"."karyawan" VALUES (3, 'Tasnim', 'Kusumo', 'aktif', 'Gg. Bayam No. 574', 'Payakumbuh', '13565', 8, 'K3');
INSERT INTO "public"."karyawan" VALUES (4, 'Kawaca', 'Januar', 'aktif', 'Psr. Surapati No. 548', 'Tebing Tinggi', '47619', 1, 'K3');
INSERT INTO "public"."karyawan" VALUES (5, 'Fathonah', 'Winarsih', 'aktif', 'Psr. Baranang Siang No. 315', 'Pematangsiantar', '17366', 2, 'KI0');
INSERT INTO "public"."karyawan" VALUES (6, 'Hamima', 'Icha Wahyuni', 'aktif', 'Gg. Honggowongso No. 896', 'Palopo', '22889', 4, 'K0');
INSERT INTO "public"."karyawan" VALUES (7, 'Jaga', 'Irawan', 'aktif', 'Dk. Sukabumi No. 831', 'Tegal', '75206', 16, 'KI3');
INSERT INTO "public"."karyawan" VALUES (8, 'Azalea', 'Farida', 'aktif', 'Jln. Karel S. Tubun No. 289', 'Tegal', '92705', 2, 'TK0');
INSERT INTO "public"."karyawan" VALUES (9, 'Bagya', 'Kurniawan', 'aktif', 'Psr. Jayawijaya No. 87', 'Batu', '83382', 3, 'K2');
INSERT INTO "public"."karyawan" VALUES (10, 'Diana', 'Lestari', 'aktif', 'Ki. B.Agam Dlm No. 342', 'Langsa', '77985', 8, 'TK1');

-- ----------------------------
-- Primary Key structure for table karyawan
-- ----------------------------
ALTER TABLE "public"."karyawan" ADD CONSTRAINT "karyawan_pkey" PRIMARY KEY ("id_karyawan");

-- ----------------------------
-- Foreign Keys structure for table karyawan
-- ----------------------------
ALTER TABLE "public"."karyawan" ADD CONSTRAINT "karyawan_id_jabatan_fkey" FOREIGN KEY ("id_jabatan") REFERENCES "public"."jabatan" ("id_jabatan") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."karyawan" ADD CONSTRAINT "karyawan_kode_ptkp_fkey" FOREIGN KEY ("kode_ptkp") REFERENCES "public"."ref_ptkp" ("kode_ptkp") ON DELETE NO ACTION ON UPDATE NO ACTION;
