#!bin/bash

#finalProject.sh

Membuat_direktori()
  # Membuat direktori
{
  nama_berkas=$1
  mkdir $nama_berkas
}

Membuat_file_bash()
  # Membuat file sh dari 0
{
  nama_file=$1
  nano $nama_file
}

Melihat_isi_direktori()
  # Melihat isi direktori terupdate beserta hak akses
{
  ls -l
}

Menjalankan_file_bash()
  # Menjalankan file sh yang sudah ada di direktori
{
  nama_file=$1
  bash $nama_file
}

Edit_file()
  # Mengedit file sh yang sudah ada di direktori
{
  nama_file=$1
  nano $nama_file
}

rename_file()
  # Merubah nama file sh yang telah dibuat sebelumnya
{
  nama_file_lama=$1
  nama_file_baru=$2
  mv $nama_file_lama $nama_file_baru
}

hapus_file(){
  # Menghapus file sh yang telah dibuat sebelumnya
  nama_file=$1
  rm $nama_file
}

Test_kecepatan()
  # Mengecek kecepatan dari internet dengan ping google 3x
{
  ping -c 3 google.com
}

Information()
{
  echo "+===================================+"
  echo "|          Final Project            |"
  echo "| Dibuat Oleh :                     |"
  echo "| M. Ihwanul Iqbal                  |"
  echo "| 18081010016                       |"
  echo "+===================================+"
}

keluar()
  # exit program
{
  echo " (: Terima Kasih :) "
  echo " Made with <3 in everywhere 2019 "
  echo " "
}

a=1;
while [[ a -eq 1 ]];
do
clear

echo "+====================================+";
echo "|                Menu                |";
echo "+====================================+";
echo "|1. Membuat Direktori                |";
echo "|2. Membuat File Bash                |";
echo "|3. Melihat Isi Direktori            |";
echo "|4. Menjalankan File Bash            |";
echo "|5. Mengedit File Bash               |";
echo "|6. Rename File                      |";
echo "|7. Menghapus File                   |";
echo "|8. Cek Ping                         |";
echo "|9. Information                      |";
echo "|10. Exit                            |";
echo "+====================================+";
echo -n "Pilihan anda : "

read pilihan

if [[ $pilihan -eq 1 ]];
then
  echo "Buat Nama Direktori"
  read nama_berkas
  Membuat_direktori $nama_berkas

  echo "berhasil"
  echo " "
  read -rsp $'Tekan enter untuk lanjut \n' -n1 key

elif [[ $pilihan -eq 2 ]];
then
  echo "Buat file"
  read nama_file
  Membuat_file_bash $nama_file

  echo " "
  read -rsp $'Tekan enter untuk lanjut \n' -n1 key

elif [[ $pilihan -eq 3 ]];
then
  echo "Isi Direktori"
  Melihat_isi_direktori

  echo " "
  read -rsp $'Tekan enter untuk lanjut \n' -n1 key

elif [[ $pilihan -eq 4 ]];
then
  Melihat_isi_direktori
  echo " "

  echo "Nama file yang ingin dijalankan : "
  read nama_file
  Menjalankan_file_bash $nama_file

  echo " File Telah berjalan "
  echo " "
  read -rsp $'Tekan enter untuk lanjut \n' -n1 key

elif [[ $pilihan -eq 5 ]];
then
  Melihat_isi_direktori
  echo " "

  echo "Nama File yang ingin di edit : "
  read nama_file
  Edit_file $nama_file

  echo "Edit Sukses"
  echo " "
  read -rsp $'Tekan enter untuk lanjut \n' -n1 key

elif [[ $pilihan -eq 6 ]];
then
  Melihat_isi_direktori
  echo " "

  echo "Masukkan nama file yang akan di ubah : "
  read file_lama
  echo "Masukkan nama baru dari file yang di ubah : "
  read file_baru
  rename_file $file_lama $file_baru

  echo " "
  echo "Nama file berhasil diubah "
  read -rsp $'Tekan enter untuk lanjut \n' -n1 key

elif [[ $pilihan -eq 7 ]];
then
  Melihat_isi_direktori
  echo " "

  echo "Masukkan nama file yang akan di hapus : "
  read file_hapus
  hapus_file $file_hapus

  echo " "
  echo "File berhasil dihapus"
  read -rsp $'Tekan enter untuk lanjut \n' -n1 key

elif [[ $pilihan -eq 8 ]];
then
  echo " "
  Test_kecepatan

  echo " "
  read -rsp $'Tekan enter untuk lanjut \n' -n1 key

elif [[ $pilihan -eq 9 ]];
then
  echo " "
  Information

  echo " "
  read -rsp $'Tekan enter untuk lanjut \n' -n1 key

elif [[ $pilihan -eq 10 ]];
then
  echo " "
  keluar

  a=0;
else
  echo " "
  echo "Masukkan pilihan dengan benar!"

  echo " "
  read -rsp $'Tekan enter untuk lanjut \n' -n1 key
fi
done
