SELECT
    k.id_karyawan,
    k.nama_depan || ' ' || k.nama_belakang AS nama_lengkap,
    (SELECT j.nama_jabatan
     FROM jabatan j
     WHERE j.id_jabatan = k.id_jabatan) AS nama_jabatan
FROM karyawan k
WHERE k.id_karyawan NOT IN (
    SELECT a.id_karyawan
    FROM absensi a
    WHERE a.tanggal = '2025-03-26'
)
ORDER BY nama_lengkap;