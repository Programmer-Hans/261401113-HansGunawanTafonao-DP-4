program Soal5_261401113_HansGunawanTafonao;

uses crt;

var
  m, n: integer;
  i, j: integer;
  nilai, total, rataRata: real;
  jumlahLulus, jumlahTidakLulus: integer;

begin
clrscr;

  write('Masukkan jumlah mahasiswa: ');
  readln(m);

  write('Masukkan jumlah tugas: ');
  readln(n);

  jumlahLulus := 0;
  jumlahTidakLulus := 0;

  writeln;

  for i := 1 to m do
  begin
    total := 0;

    writeln('=== MAHASISWA KE-', i, ' ===');

    for j := 1 to n do
    begin
      write('Masukkan nilai tugas ke-', j, ': ');
      readln(nilai);

      total := total + nilai;
    end;

    rataRata := total / n;

    writeln('Rata-rata : ', rataRata:0:2);

    if rataRata >= 65 then
    begin
      writeln('Status    : LULUS');
      jumlahLulus := jumlahLulus + 1;
    end
    else
    begin
      writeln('Status    : TIDAK LULUS');
      jumlahTidakLulus := jumlahTidakLulus + 1;
    end;

    writeln;
  end;

  writeln('=== REKAPITULASI ===');
  writeln('Total Mahasiswa LULUS       : ', jumlahLulus);
  writeln('Total Mahasiswa TIDAK LULUS : ', jumlahTidakLulus);

  readkey;
end.