domains
kalimat = string
listnama = string*

facts
nondeterm pertanyaan(integer,symbol,kalimat,symbol)
nondeterm jawaban(symbol,string)
nondeterm observation(symbol)

predicates
nondeterm lanjut(symbol,symbol,integer)
nondeterm aturan(integer,symbol)
nondeterm begin
nondeterm mulai(string)
nondeterm awal
nondeterm solusi
nondeterm list(listnama)

clauses
	

list([]).

list([H|T]):-
	write(H),nl,
	list(T).

lanjut(Yatidak,Sh,Soal) :-

Yatidak=y,nl,Soals=Soal+1,Soal<=5,
	pertanyaan(Soals,Sh,Tanya,Hasil),write(Tanya),readln(Yesno),nl,Yesno=y,
	assert(observation(Hasil)),lanjut(Yesno,Hasil,Soals);

Yatidak=y,Soal<>5,!,solusi;

Yatidak=y,Soal>4,!,solusi.

%tampilan awal pada program
begin :-	write("-------------------------------------------------------------------------------------"),nl,
		write("Program Menebak Negara-Negara yang ada di Asean"),nl,
		write("-------------------------------------------------------------------------------------"),nl,
		nl,nl,write("1.MULAI\n\n2.DAFTAR ANGGOTA\n\n3.CARA BERMAIN\n\n4.EXIT\n\nMasukan pilihan : "),readln(Pilih),mulai(Pilih).

	
/*untuk menampilkan solusinya*/
solusi:-
	aturan(_,Alasan),
	jawaban(Alasan,Jawab),nl,
	write("NEGARA YANG ANDA MAKSUD ADALAH : "),write(Alasan),nl,
	write("PENJELASAN SINGKAT : " ), write(Jawab),nl,
	write("Apakah Anda ingin mengulangnya (y)?"),readchar(Y),Y='y',retractall(observation(_)),nl,begin;
	aturan(_,Alasan),
	jawaban(Alasan,_),nl,
	nl,nl,nl,write("TERIMA KASIH TELAH MENGGUNAKAN PROGRAM KAMI\n\n"),nl,nl.
solusi:-
	write("\nMohon maaf, Negara yang anda maksud tidak ada dalam database kami . . !"),nl,
	write("Silahkan cek Kembali jawaban yang anda berikan"),nl,
	write("Apakah Anda ingin mengulangnya (y)?"),readchar(Y),Y='y',nl,retractall(observation(_)),nl,begin;
	nl,nl,nl,write("TERIMA KASIH TELAH MENGGUNAKAN PROGRAM KAMI\n\n"),nl,nl.

awal :-
	lanjut(y,a,0).
		
mulai(X):-
X="1",awal;
X="2",nl,write("----------------------------------------------------------------------------------------------------------------"),nl,
	 write("\tDAFTAR ANGGOTA KELOMPOK 1"),nl,nl,
	list(["ROJALIL\t\t\t\t1515015065","PRAYOGO NUGROHO MOLET\t1515015073","AMRINA RASYADA\t\t\t1515015079","HAMRIYANTO\t\t\t1515015093"]),
	write("---------------------------------------------------------------------------------------------------------------"),nl,begin;
X="3",nl,write("Anda cukup memberi jawaban ya atau tidak dengan cara menekan tombol y atau n untuk menjawab pertanyaan yang aka di ajukan!\njika selain itu, maka akan automatis terbaca Tidak dalam program"),nl,begin;
X="4",nl,nl,nl,write("TERIMA KASIH TELAH MENGGUNAKAN PROGRAM KAMI\n\n"),nl,nl;
X<>"1",X<>"2",X<>"3",X<>"4",write("Maaf inputan yang anda masukkan salah!!"),nl,begin.
	


aturan(1, indonesia):-
	observation(berkembang),observation(republik),observation(dua),
	observation(rupiah),observation(jakarta),!.
aturan(2, malasia):-
	observation(berkembang),observation(kerajaan),observation(lebih),
	observation(ringgit),observation(lumpur),!.
aturan(3, thailand):-
	observation(berkembang),observation(kerajaan),observation(lebih),
	observation(bath),observation(bangkok),!.
aturan(4, singapura):-
	observation(maju),observation(republik),observation(dua),observation(dsingapura),observation(singa),!.
aturan(5, filipina):-
	observation(berkembang),observation(republik),observation(lebih),observation(peso),observation(manila),!.
aturan(6, brunei):-
	observation(maju),observation(kerajaan),observation(lebih),
	observation(dbrunei),observation(seri),!.
aturan(7, vietnam):-
	observation(berkembang),observation(republik),observation(dua),
	observation(dong),observation(hanoi),!.
aturan(8, laos):-
	observation(berkembang),observation(republik),observation(lebih),
	observation(kip),observation(vientine),!.
aturan(9, myanmar):-
	observation(berkembang),observation(republik),observation(lebih),
	observation(kyat),observation(ragoon),!.
aturan(10, kamboja):-
	observation(berkembang),observation(kerajaan),observation(lebih),
	observation(riel),observation(penh),!.

goal
consult("ss.mtr"),
begin.