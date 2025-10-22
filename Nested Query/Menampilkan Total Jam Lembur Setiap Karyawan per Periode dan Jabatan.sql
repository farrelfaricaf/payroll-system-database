SELECT
    k.id_karyawan,
    k.nama_depan || ' ' || k.nama_belakang AS nama_lengkap,
    j.nama_jabatan,
    COALESCE(
        (
            SELECT SUM(l.jumlah_jam)
            FROM lembur l
            WHERE
                l.id_karyawan = k.id_karyawan
                AND l.tanggal BETWEEN '2025-01-01' AND '2025-01-31'
        ),
        0
    ) AS total_jam_lembur_periode
FROM
    karyawan k
JOIN
    jabatan j ON k.id_jabatan = j.id_jabatan
ORDER BY
    total_jam_lembur_periode DESC;