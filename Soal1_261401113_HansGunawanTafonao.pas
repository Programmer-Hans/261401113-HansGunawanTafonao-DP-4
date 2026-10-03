program Soal1_261401113_HansGunawanTafonao;

uses crt;

var
  n, i: integer;
  harga, total, diskon, totalBayar: real;

begin
clrscr;

  write('Masukkan jumlah barang: ');
  readln(n);

  total := 0;

  writeln;
  writeln('=== RINCIAN BELANJA ===');

  for i := 1 to n do
  begin
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);

    total := total + harga;
  end;

  if total < 100000 then
    diskon := 0
  else if total < 500000 then
    diskon := total * 0.10
  else
    diskon := total * 0.20;

  totalBayar := total - diskon;

  writeln;
  writeln('=== HASIL BELANJA ===');
  writeln('Total Sebelum Diskon : Rp', total:0:2);
  writeln('Besar Diskon         : Rp', diskon:0:2);
  writeln('Total Bayar Akhir    : Rp', to