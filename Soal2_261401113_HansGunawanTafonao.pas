program Soal2_261401113_HansGunawanTafonao;

uses crt;

const
  passwordRahasia = 'ilkom26';

var
  password: string;
  percobaan: integer;
  berhasil: boolean;

begin
clrscr;

  percobaan := 0;
  berhasil := false;

  repeat
    percobaan := percobaan + 1;

    write('Masukkan kata sandi: ');
    readln(password);

    if password = passwordRahasia then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else
      writeln('Kata sandi salah.');

  until percobaan = 3;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');

  readkey;
end.