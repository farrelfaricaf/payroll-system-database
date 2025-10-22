WITH RekapLembur AS (
    SELECT
        id_karyawan,
        SUM(upah_lembur) AS total_lembur
    FROM lembur
    GROUP BY id_karyawan
),
RataRataLembur AS (
    SELECT
        AVG(total_lembur) AS rata_rata
    FROM RekapLembur
)
SELECT
    k.id_karyawan,
    k.nama_depan || ' ' || k.nama_belakang AS nama_lengkap,
    j.nama_jabatan,
    rl.total_lembur
FROM karyawan k
JOIN RekapLembur rl ON k.id_karyawan = rl.id_karyawan
JOIN jabatan j ON k.id_jabatan = j.id_jabatan
CROSS JOIN RataRataLembur
WHERE
    rl.total_lembur > RataRataLembur.rata_rata
ORDER BY
    rl.total_lembur DESC;