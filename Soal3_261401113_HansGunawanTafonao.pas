program Soal3_261401113_HansGunawanTafonao;
uses crt;
var
  n, pilihan, i: integer;
begin
clrscr;
  write('Masukkan nilai N: ');
  readln(n);
  writeln;
  writeln('=== PILIHAN KATEGORI DERET ===');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilih kategori (1/2): ');
  readln(pilihan);
  writeln;
  write('Deret hasil penyaringan: ');
  i := 1;
  while i <= n do
  begin
    if i mod 5 = 0 then
    begin
      i := i + 1;
      continue;
    end;
    if pilihan = 1 then
    begin
      if i mod 2 = 0 then
      begin
        i := i + 1;
        continue;
      end;
    end
    else if pilihan = 2 then
    begin
      if i mod 2 <> 0 then
      begin
        i := i + 1;
        continue;
      end;
    end;

    write(i, ' ');
    i := i + 1;
  end;

  writeln;
  readkey;
end.