SELECT
    data_kalkulasi.id_karyawan,
    data_kalkulasi.nama_lengkap,
    data_kalkulasi.penghasilan_bruto_bulan,
    data_kalkulasi.nilai_ptkp,
    ROUND(GREATEST(
        (data_kalkulasi.penghasilan_bruto_bulan * 12) - data_kalkulasi.nilai_ptkp,
        0
    ) * 0.05 / 12, 2) AS pph21_perbulan
FROM (
    SELECT
        k.id_karyawan,
        k.nama_depan || ' ' || k.nama_belakang AS nama_lengkap,
        (
            SELECT ROUND(AVG(r.gaji_pokok + r.tunjangan + r.lembur - r.potongan), 2)
            FROM riwayat_gaji r
            WHERE r.id_karyawan = k.id_karyawan
        ) AS penghasilan_bruto_bulan,
        (
            SELECT p.nilai_ptkp
            FROM ref_ptkp p
            WHERE p.kode_ptkp = k.kode_ptkp
        ) AS nilai_ptkp
    FROM
        karyawan k
) AS data_kalkulasi
ORDER BY
    data_kalkulasi.nama_lengkap;