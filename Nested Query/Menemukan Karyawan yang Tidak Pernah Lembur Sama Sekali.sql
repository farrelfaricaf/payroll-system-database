SELECT
    k.id_karyawan,
    k.nama_depan || ' ' || k.nama_belakang AS nama_lengkap
FROM
    karyawan k
WHERE
    k.id_karyawan NOT IN (
        SELECT DISTINCT l.id_karyawan
        FROM lembur l
    );