SELECT
    k.id_karyawan,
    k.nama_depan || ' ' || k.nama_belakang AS nama_lengkap,
    k.kode_ptkp
FROM
    karyawan k
WHERE
    k.kode_ptkp IN (
        SELECT p.kode_ptkp
        FROM ref_ptkp p
        WHERE p.kode_ptkp = 'K3'
    );