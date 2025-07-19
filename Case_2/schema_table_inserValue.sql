CREATE DATABASE db_patient_visits;
USE db_patient_visits;

CREATE TABLE patients(
	id INT NOT NULL,
    name TEXT NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE visits(
	id INT NOT NULL,
    patient_id INT NOT NULL,
    department TEXT NOT NULL,
    visit_date DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (patient_id) REFERENCES patients(id)
);

CREATE TABLE symptoms(
	id INT NOT NULL,
    visit_id INT NOT NULL,
    symptom TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (visit_id) REFERENCES visits(id)
);


INSERT INTO patients (id, name, age) VALUES
(1,"Andi",45),
(2,"Budi",29),
(3,"Citra",62),
(4,"Dita",30),
(5,"Eka",8),
(6,"Fitra",49),
(7,"Gio",49),
(8,"Harianto",33),
(9,"Idul",88),
(10,"Jaka",54);


INSERT INTO visits (id, patient_id, department, visit_date) VALUES
(201, 1, 'Neurologi', '2025-07-19'),
(202, 2, 'Umum', '2025-07-19'),
(203, 3, 'Neurologi', '2025-07-19'),
(204, 4, 'Psikiatri', '2025-07-19'),
(205, 5, 'Gigi dan Mulut', '2025-07-19'),
(206, 6, 'Neurologi', '2025-07-19'),
(207, 7, 'Umum', '2025-07-19'),
(208, 8, 'Gawat Darurat', '2025-07-19'),
(209, 9, 'Psikiatri', '2025-07-19'),
(210, 10, 'Penyakit Dalam', '2025-07-19'),
(211, 1, 'Umum', '2025-07-20'),
(212, 3, 'Neurologi', '2025-07-20'),
(213, 5, 'Gawat Darurat', '2025-07-21'),
(214, 7, 'Penyakit Dalam', '2025-07-21'),
(215, 9, 'Umum', '2025-07-22'),
(216, 2, 'Psikiatri', '2025-07-22'),
(217, 4, 'Neurologi', '2025-07-23'),
(218, 6, 'Gigi dan Mulut', '2025-07-23'),
(219, 8, 'Neurologi', '2025-07-24'),
(220, 10, 'Gawat Darurat', '2025-07-24'),
(221, 1, 'Penyakit Dalam', '2025-07-25'),
(222, 2, 'Umum', '2025-07-25'),
(223, 6, 'Penyakit Dalam', '2025-07-26'),
(224, 7, 'Neurologi', '2025-07-26'),
(225, 3, 'Psikiatri', '2025-07-27'),
(226, 4, 'Umum', '2025-07-28'),
(227, 9, 'Gigi dan Mulut', '2025-07-28'),
(228, 5, 'Gawat Darurat', '2025-07-29'),
(229, 10, 'Penyakit Dalam', '2025-07-30'),
(230, 8, 'Umum', '2025-07-30'),
(231,  3, 'Neurologi', '2025-07-10'),
(232,  9, 'Neurologi', '2025-06-05'),
(233, 10, 'Neurologi', '2025-05-01'),
(234,  3, 'Neurologi', '2025-04-15'),
(235,  9, 'Neurologi', '2025-03-20');


INSERT INTO symptoms(id, visit_id, symptom) VALUES
(1, 201, 'Pusing'),
(2, 231, 'Sakit kepala kronis'),
(3, 202, 'Demam ringan'),
(4, 203, 'Batuk kering'),
(5, 204, 'Kesemutan di tangan'),
(6, 232, 'Kehilangan keseimbangan'),
(7, 204, 'Mual'),
(8, 205, 'Gusi bengkak'),
(9, 206, 'Nyeri saat mengunyah'),
(10, 206, 'Migrain'),
(11, 207, 'Sakit tenggorokan'),
(12, 207, 'Badan pegal-pegal'),
(13, 208, 'Nyeri dada sebelah kiri'),
(14, 208, 'Sesak napas'),
(15, 208, 'Keringat dingin'),
(16, 209, 'Serangan panik'),
(17, 210, 'Mual dan muntah'),
(18, 211, 'Pilek'),
(19, 211, 'Demam tinggi'),
(20, 212, 'Sakit kepala sebelah'),
(21, 213, 'Pendarahan pada gusi'),
(22, 213, 'Nyeri gusi berulang'),
(23, 214, 'Diare'),
(24, 214, 'Kram perut'),
(25, 215, 'Badan lemas'),
(26, 215, 'Sakit punggung'),
(27, 216, 'Mood swing'),
(28, 234, 'Vertigo'),
(29, 217, 'Penglihatan kabur'),
(30, 218, 'Sakit gigi berlubang'),
(31, 219, 'Tremor'),
(32, 219, 'Tangan dan kaki kesemutan'),
(33, 220, 'Luka sobek di lengan'),
(34, 220, 'Pendarahan'),
(35, 221, 'Tekanan darah tinggi'),
(36, 221, 'Sakit di bagian belakang leher'),
(37, 222, 'Radang tenggorokan'),
(38, 223, 'Sakit perut melilit'),
(39, 235, 'Sulit menggerakkan wajah'),
(40, 224, 'Mati rasa sebagian'),
(41, 225, 'Halusinasi pendengaran'),
(42, 225, 'Delusi visual'),
(43, 226, 'Demam'),
(44, 226, 'Nyeri otot'),
(45, 227, 'Sariawan di lidah'),
(46, 228, 'Memar parah setelah jatuh'),
(47, 229, 'Asam lambung naik'),
(48, 229, 'Perut kembung'),
(49, 230, 'Pusing tujuh keliling'),
(50, 203, 'Mual ringan');


