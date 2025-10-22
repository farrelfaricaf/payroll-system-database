SELECT
    rekap_gaji.id_karyawan,
    rekap_gaji.nama_lengkap,
    rekap_gaji.gaji_tertinggi
FROM (
    SELECT
        k.id_karyawan,
        k.nama_depan || ' ' || k.nama_belakang AS nama_lengkap,
        MAX(r.total_bersih) AS gaji_tertinggi
    FROM
        riwayat_gaji r
    JOIN
        karyawan k ON r.id_karyawan = k.id_karyawan
    WHERE
        r.periode = '2025-01-01'
    GROUP BY
        k.id_karyawan, k.nama_depan, k.nama_belakang
) AS rekap_gaji

ORDER BY
    rekap_gaji.gaji_tertinggi DESC
LIMIT 5;