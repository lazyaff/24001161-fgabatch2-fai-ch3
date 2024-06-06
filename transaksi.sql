-- create table transaksi
CREATE TABLE transaksi (
    id SERIAL PRIMARY KEY,
    id_akun INT NOT NULL,
    waktu TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    jenis VARCHAR(50),
    status VARCHAR(50),
    nominal DECIMAL(15, 2),
    deskripsi TEXT,
    FOREIGN KEY (id_akun) REFERENCES akun(id)
);

-- create data transaksi
INSERT INTO transaksi (id_akun, jenis, status, nominal, deskripsi)
VALUES (1, 'Debit', 'Berhasil', 500000.00, 'Pembayaran tagihan listrik');

-- select data transaksi
SELECT * FROM transaksi;
SELECT id, id_akun, nominal FROM transaksi WHERE id = 1;

-- update data transaksi
UPDATE transaksi
SET nominal = 1000000.00
WHERE id = 1;

-- delete data transaksi
DELETE FROM transaksi WHERE id = 1;