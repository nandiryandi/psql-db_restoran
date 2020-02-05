CREATE TABLE level (
	id_level VARCHAR (9) PRIMARY KEY,
    nama_level VARCHAR (50)
);

CREATE TABLE pengguna (
	id_user VARCHAR (9) PRIMARY KEY,
    username VARCHAR (50),
    password VARCHAR (50),
    nama_user VARCHAR (50),
    id_level VARCHAR (9)
);

CREATE TABLE masakan (
	id_masakan VARCHAR (9) PRIMARY KEY,
    nama_masakan VARCHAR (50),
    harga int,
    status_makanan VARCHAR (50)
);

CREATE TABLE detail_order (
	id_detail_order VARCHAR (9) PRIMARY KEY,
    id_order VARCHAR (9),
    id_masakan VARCHAR (9),
    keterangan VARCHAR (50),
    status_detail_order VARCHAR (50)
);

CREATE TABLE orderr (
	id_order VARCHAR (9) PRIMARY KEY,
    no_meja int,
    tanggal date,
    id_user VARCHAR (9),
    keterangan VARCHAR (50),
    status_order VARCHAR (50)
);

CREATE TABLE transaksi (
	id_transaksi VARCHAR (9) PRIMARY KEY,
    id_user VARCHAR (9),
    id_order VARCHAR (9),
    tanggal date,
    total_bayar int
);