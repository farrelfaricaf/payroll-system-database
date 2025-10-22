SELECT
    j.id_jabatan,
    j.nama_jabatan,
    j.gaji_pokok
FROM jabatan j
WHERE j.gaji_pokok > (
    SELECT AVG(j2.gaji_pokok)
    FROM jabatan j2
)
ORDER BY j.gaji_pokok DESC;