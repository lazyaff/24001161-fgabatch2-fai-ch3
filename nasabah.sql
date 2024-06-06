-- create table nasabah
CREATE TABLE nasabah (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    alamat TEXT,
    no_telp VARCHAR(15),
    email VARCHAR(100),
    tgl_lahir DATE,
    jenis_kelamin CHAR(1) 
);

-- create data nasabah
INSERT INTO nasabah (nama, alamat, no_telp, email, tgl_lahir, jenis_kelamin)
VALUES ('John Doe', 'Jl. Merdeka No. 1', '08123456789', 'john.doe@example.com', '1980-01-01', 'L');

-- select data nasabah
SELECT * FROM nasabah;
SELECT id, nama, alamat FROM nasabah WHERE id = 1;

-- update data nasabah
UPDATE nasabah
SET alamat = 'Jl. Merdeka No. 2', no_telp = '08198765432'
WHERE id = 1;

-- delete data nasabah
DELETE FROM nasabah WHERE id = 1;