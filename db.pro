facts
nondeterm pertanyaan(integer,symbol,string,symbol)
nondeterm jawaban(symbol,string)
nondeterm observation(symbol)

clauses

jawaban(indonesia, "Indonesia adalah negara kepulauan yang dilewati oleh garis khatulistiwa dengan jumlah penduduk 258.316.051 jiwa yang memiliki beragam budaya dan bahasa daerah.").
jawaban(malasia, "Malaysia merupakan suatu dengan jumlah penduduk 30.949.962 jiwa yang menggunakan bahasa melayu sebagai bahasa nasionalnya dengan ibukotanya bernama kuala lumpur.").
jawaban(thailand, "Thailand adalah negara yang tidak pernah dijajah oleh negara lain dengan jumlah penduduk 68.200.824 jiwa").
jawaban(filipina, "Filipina adalah negara kepulauan yang terletak di lingkar pasifik barat dan terkenal dengan sistem cocok tanam Padi yang sangat maju").
jawaban(singapura, "Singapura adalah negara maju, dengan jumlah penduduk yang sedikit sekitar 5.781.728 jiwa dan terkenal dengan patung singanya").
jawaban(brunei, "Brunei Darussalam adalah negara dengan Indeks Pembangunan manusua tertinggi kedua setelah Singapura dengan jumlah penduduk 436.620 jiwa").
jawaban(vietnam, "Vietnam adalah negara paling timur di Semenanjung Indochina di Asia Tenggara. Dengan populasi sekitar 84 juta jiwa, Vietnam adalah negara terpadat nomor 13 di dunia. ").
jawaban(laos, "Laos adalah negara yang terkurung daratan di Asia Tenggara, negara ini disebut Lan Xang atau Negeri Seribu Gajah.Laos merupakan salah satu dari lima negara komunis yang ada di dunia").
jawaban(myanmar, "Myanmar juga dikenal sebagai Birma, disebut (Burma) di dunia Barat adalah sebuah negara di Asia Tenggara. Dan pernah terjadi kudeta pada tahun 1988.").
jawaban(kamboja, "Kamboja adalah sebuah negara di Asia Tenggara. Luas totalnya adalah 181.035 km2.KambojaAgama resmi di Kamboja adalah Buddha dengan pemeluk sekitar 95% dari total penduduk Kamboja.").


/*pertanyaan 1*/

pertanyaan(1,a,"Apakah negara tersebut merupakan negara berkembang ?", berkembang).
pertanyaan(1,a,"Apakah negara maju ?",maju).


/*pertanyaan 2*/
pertanyaan(2,berkembang,"Apakah negara tersebut adalah negara kerajaan atau monarki ?", kerajaan).
pertanyaan(2,berkembang,"Apakah negara tersebut adalah negara republik ?", republik).
pertanyaan(2,maju,"Apakah negara tersebut adalah negara kerajaan atau monarki ?", kerajaan).
pertanyaan(2,maju,"Apakah negara tersebut adalah negara republik ?", republik).


/*pertanyaan 3*/
pertanyaan(3,kerajaan,"Apakah negara tersebut hanya menggunakan dua warna pada benderanya ?", dua).
pertanyaan(3,kerajaan,"Apakah negara tersebut menggunakan lebih dari dua warna pada benderanya ?", lebih).
pertanyaan(3,republik,"Apakah negara tersebut hanya menggunakan dua warna pada benderanya ?", dua).
pertanyaan(3,republik,"Apakah negara tersebut menggunakan lebih dari dua warna pada benderanya ?", lebih).


/*pertanyaan4*/
pertanyaan(4,dua,"Apakah negara tersebut mengunakan mata uang Rupiah ?",rupiah). 
pertanyaan(4,lebih,"Apakah negara tersebut mengunakan mata uang Ringgit ?",ringgit).
pertanyaan(4,lebih,"Apakah negara tersebut mengunakan mata uang Bath ?",bath).
pertanyaan(4,lebih,"Apakah negara tersebut mengunakan mata uang Peso ?",peso).
pertanyaan(4,dua,"Apakah negara tersebut mengunakan mata uang Dolar Singapura ?",dsingapura).
pertanyaan(4,lebih,"Apakah negara tersebut mengunakan mata uang Dolar Brunei ?",dbrunei).
pertanyaan(4,dua,"Apakah negara tersebut mengunakan mata uang Dong ?",dong).
pertanyaan(4,lebih,"Apakah negara tersebut mengunakan mata uang Kip Laos ?",kip).
pertanyaan(4,lebih,"Apakah negara tersebut mengunakan mata uang Kyat Myanmar ?",kyat).
pertanyaan(4,lebih,"Apakah negara tersebut mengunakan mata uang Riel Kamboja ?",riel).

pertanyaan(5,rupiah,"Apakah ibukotanya adalah Jakarta ?",jakarta).
pertanyaan(5,ringgit,"Apakah ibukotanya adalah Kuala Lumpur ?",lumpur).
pertanyaan(5,bath,"Apakah ibukotanya adalah Bangkok ?",bangkok).
pertanyaan(5,peso,"Apakah ibukotanya adalah Manila ?",manila).
pertanyaan(5,dsingapura,"Apakah ibukotanya adalah Singapura ?",singa).
pertanyaan(5,dbrunei,"Apakah ibukotanya adalah Bandar Seri Begawan ?",seri).
pertanyaan(5,dong,"Apakah ibukotanya adalah Hanoi ?",hanoi).
pertanyaan(5,kip,"Apakah ibukotanya adalah Vientiane ?",vientiane).
pertanyaan(5,kyat,"Apakah ibukotanya adalah Rangoon ?",rangoon).
pertanyaan(5,riel,"Apakah ibukotanya adalah Phynom Penh ?",penh).

goal
write("Berhasil Simpan data"),nl,nl,
save("ss.mtr").