SELECT
    (SELECT j.nama_jabatan
     FROM jabatan j
     WHERE j.id_jabatan = k.id_jabatan) AS nama_jabatan,
     
    ROUND(AVG(r.total_bersih), 2) AS rata_gaji_bersih
FROM
    riwayat_gaji r
JOIN
    karyawan k ON r.id_karyawan = k.id_karyawan
GROUP BY
    k.id_jabatan;