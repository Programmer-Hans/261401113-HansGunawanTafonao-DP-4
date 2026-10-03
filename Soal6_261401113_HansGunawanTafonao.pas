program Soal6_261401113_HansGunawanTafonao;

uses crt;

var
  tugas, uts, uas, kehadiran, nilaiAkhir: real;
  indeks: char;

begin
clrscr;

  write('Masukkan Nilai Tugas   : ');
  readln(tugas);

  write('Masukkan Nilai UTS     : ');
  readln(uts);

  write('Masukkan Nilai UAS     : ');
  readln(uas);

  write('Masukkan Kehadiran (%) : ');
  readln(kehadiran);

  nilaiAkhir := (tugas * 0.30) + (uts * 0.30) + (uas * 0.40);

  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  writeln;
  writeln('=== HASIL PENILAIAN ===');
  writeln('Nilai Akhir : ', nilaiAkhir:0:2);
  writeln('Indeks Huruf : ', indeks);

  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    writeln('Status      : LULUS')
  else
    writeln('Status      : TIDAK LULUS');

  readkey;
end.