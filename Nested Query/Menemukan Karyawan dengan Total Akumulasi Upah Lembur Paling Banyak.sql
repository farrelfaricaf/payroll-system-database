SELECT
    k.id_karyawan,
    k.nama_depan || ' ' || k.nama_belakang AS nama_lengkap,
    rekap_lembur.total_upah_lembur
FROM
    karyawan k
JOIN (
    SELECT
        id_karyawan,
        SUM(upah_lembur) AS total_upah_lembur
    FROM lembur
    GROUP BY id_karyawan
) AS rekap_lembur ON k.id_karyawan = rekap_lembur.id_karyawan
ORDER BY
    rekap_lembur.total_upah_lembur DESC
LIMIT 1;