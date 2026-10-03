program Soal4_261401113_HansGunawanTafonao;

uses crt;

var
  pilihan: integer;
  angka1, angka2, hasil: real;
  angka1Int, angka2Int: integer;
  ulang: char;

begin
clrscr;

  repeat
    writeln('=== KALKULATOR SEDERHANA ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    writeln;

    if pilihan = 5 then
    begin
      write('Masukkan angka pertama: ');
      readln(angka1Int);

      write('Masukkan angka kedua: ');
      readln(angka2Int);

      if angka2Int = 0 then
        writeln('Error: angka kedua tidak boleh 0.')
      else
      begin
        writeln('Hasil DIV : ', angka1Int div angka2Int);
        writeln('Hasil MOD : ', angka1Int mod angka2Int);
      end;
    end
    else
    begin
      write('Masukkan angka pertama: ');
      readln(angka1);

      write('Masukkan angka kedua: ');
      readln(angka2);

      case pilihan of
        1:
          begin
            hasil := angka1 + angka2;
            writeln('Hasil Penjumlahan : ', hasil:0:2);
          end;

        2:
          begin
            hasil := angka1 - angka2;
            writeln('Hasil Pengurangan : ', hasil:0:2);
          end;

        3:
          begin
            hasil := angka1 * angka2;
            writeln('Hasil Perkalian   : ', hasil:0:2);
          end;

        4:
          begin
            if angka2 = 0 then
              writeln('Error: angka kedua tidak boleh 0.')
            else
            begin
              hasil := angka1 / angka2;
              writeln('Hasil Pembagian    : ', hasil:0:2);
            end;
          end;

        else
          writeln('Pilihan tidak valid.');
      end;
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
    writeln;

  until (ulang = 'T') or (ulang = 't');

  readkey;
end.