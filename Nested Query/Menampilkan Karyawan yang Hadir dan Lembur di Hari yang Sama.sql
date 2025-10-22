SELECT
    k.id_karyawan,
    k.nama_depan || ' ' || k.nama_belakang AS nama_lengkap,
    a.tanggal
FROM
    absensi a
JOIN
    karyawan k ON a.id_karyawan = k.id_karyawan
WHERE
    a.status_absensi = 'Hadir'
    AND EXISTS (
        SELECT 1
        FROM lembur l
        WHERE l.id_karyawan = a.id_karyawan
          AND l.tanggal = a.tanggal 
    )
ORDER BY
    nama_lengkap, a.tanggal;