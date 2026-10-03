program Soal8_261401113_HansGunawanTafonao;

uses crt;

var
  golongan: char;
  jamKerja: integer;
  gajiPokok, lembur, bonus, totalGaji: real;

begin
clrscr;

  write('Masukkan Golongan (A/B/C): ');
  readln(golongan);

  write('Masukkan total jam kerja: ');
  readln(jamKerja);

  case golongan of
    'A', 'a':
      gajiPokok := 1500000;

    'B', 'b':
      gajiPokok := 2000000;

    'C', 'c':
      gajiPokok := 2500000;

    else
      gajiPokok := 0;
  end;

  lembur := 0;
  bonus := 0;

  if jamKerja > 40 then
    lembur := (jamKerja - 40) * 20000;

  if ((golongan = 'C') or (golongan = 'c')) and (jamKerja > 50) then
    bonus := 100000;

  totalGaji := gajiPokok + lembur + bonus;

  writeln;
  writeln('=== RINCIAN GAJI ===');

  if gajiPokok = 0 then
    writeln('Golongan tidak valid.')
  else
  begin
    writeln('Gaji Pokok : Rp', gajiPokok:0:2);
    writeln('Lembur     : Rp', lembur:0:2);
    writeln('Bonus      : Rp', bonus:0:2);
    writeln('Total Gaji : Rp', totalGaji:0:2);
  end;

  readkey;
end.