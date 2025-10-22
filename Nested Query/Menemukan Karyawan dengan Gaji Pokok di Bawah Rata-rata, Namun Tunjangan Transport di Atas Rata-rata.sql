SELECT
    k.id_karyawan,
    k.nama_depan || ' ' || k.nama_belakang AS nama_lengkap,
    j.nama_jabatan,
    j.gaji_pokok,
    t.tunjangan_transport
FROM karyawan k
JOIN jabatan j ON k.id_jabatan = j.id_jabatan
JOIN tunjangan t ON j.id_tunjangan = t.id_tunjangan
WHERE
    j.gaji_pokok < (
        SELECT AVG(j2.gaji_pokok)
        FROM jabatan j2
    )
    AND t.tunjangan_transport > (
        SELECT AVG(t2.tunjangan_transport)
        FROM tunjangan t2
    )
ORDER BY
    t.tunjangan_transport DESC;