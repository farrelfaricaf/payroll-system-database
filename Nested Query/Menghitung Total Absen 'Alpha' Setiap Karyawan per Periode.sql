SELECT 
    k.id_karyawan,
    k.nama_depan || ' ' || k.nama_belakang AS nama_lengkap,
    (
        SELECT COUNT(*)
        FROM absensi a
        WHERE a.id_karyawan = k.id_karyawan
        AND a.status_absensi = 'Alpha'
        AND a.tanggal BETWEEN '2025-10-01' AND '2025-10-31'
    ) AS total_alpha
FROM karyawan k
ORDER BY total_alpha DESC;