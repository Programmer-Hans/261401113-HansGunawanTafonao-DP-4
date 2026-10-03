program Soal7_261401113_HansGunawanTafonao;

uses crt;

var
  kode: char;
  lamaParkir: integer;
  tarif: real;

begin
clrscr;

  write('Masukkan kode kendaraan (M/K/B): ');
  readln(kode);

  write('Masukkan lama parkir (jam): ');
  readln(lamaParkir);

  case kode of
    'M', 'm':
      begin
        if lamaParkir > 10 then
          tarif := 30000
        else if lamaParkir <= 1 then
          tarif := 5000
        else
          tarif := 5000 + ((lamaParkir - 1) * 3000);
      end;

    'K', 'k':
      begin
        if lamaParkir > 10 then
          tarif := 10000
        else if lamaParkir <= 1 then
          tarif := 2000
        else
          tarif := 2000 + ((lamaParkir - 1) * 1000);
      end;

    'B', 'b':
      begin
        if lamaParkir > 10 then
          tarif := 50000
        else if lamaParkir <= 1 then
          tarif := 10000
        else
          tarif := 10000 + ((lamaParkir - 1) * 5000);
      end;

    else
      tarif := 0;
  end;

  writeln;
  writeln('=== HASIL PARKIR ===');

  if tarif = 0 then
    writeln('Kode kendaraan tidak valid.')
  else
    writeln('Total Tarif Parkir : Rp', tarif:0:2);

  readkey;
end.