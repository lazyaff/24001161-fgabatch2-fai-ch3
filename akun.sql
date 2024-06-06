-- create table akun
CREATE TABLE akun (
    id SERIAL PRIMARY KEY,
    id_nasabah INT NOT NULL,
    jenis VARCHAR(50),
    status VARCHAR(50),
    saldo DECIMAL(15, 2),
    FOREIGN KEY (id_nasabah) REFERENCES nasabah(id)
);

-- create data akun
INSERT INTO akun (id_nasabah, jenis, status, saldo)
VALUES (1, 'Tabungan', 'Aktif', 1000000.00);

-- select data akun
SELECT * FROM akun;
SELECT id, id_nasabah, saldo FROM akun WHERE id = 1;

-- update data akun
UPDATE akun
SET saldo = 1500000.00
WHERE id = 1;

-- delete data akun
DELETE FROM akun WHERE id = 1;