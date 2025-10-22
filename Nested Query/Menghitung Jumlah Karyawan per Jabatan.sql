SELECT 
    j.id_jabatan,
    j.nama_jabatan,
    (
        SELECT COUNT(*)
        FROM karyawan k
        WHERE k.id_jabatan = j.id_jabatan
    ) AS jumlah_karyawan
FROM jabatan j
ORDER BY jumlah_karyawan DESC;