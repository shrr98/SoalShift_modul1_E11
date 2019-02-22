<h1>LAPORAN SOAL SHIFT MODUL 1</h1>
<div>
  <h3>KELOMPOK E 11</h3>
  <p>Shintya Rezky R. (05111740000017)</p>
  <p> Arif Darma A.   (05111740000182)</p>
</div>

<hr>
<pre>
User      : trash
Directory : /home/trash/sisop/praktikum1/
</pre>

<h3>Nomor 1</h3>
<p align="justify">
Anda diminta tolong oleh teman anda untuk mengembalikan filenya yang telah
dienkripsi oleh seseorang menggunakan bash script, file yang dimaksud adalah
nature.zip. Karena terlalu mudah kalian memberikan syarat akan membuka seluruh
file tersebut jika pukul 14:14 pada tanggal 14 Februari atau hari tersebut adalah hari
jumat pada bulan Februari.
Hint: Base64, Hexdump
</p>
<ol>
  <li>
    Download file nature.zip kemudian unzip filenya<br>
      <div>
        <code>unzip nature.zip</code>
      </div>
  </li>
  <li>
    Untuk mendekode file-file tersebut, buat file soal1.sh yang berisi code berikut.</br>
      <pre>
          #!/usr/bin/bash
          i=1
          for f in ./nature/*.jpg; do
                  base64 -d "$f" | xxd -r  > ./nature/decryp/$i.jpg
                  i=$(($i+1))
          done
      </pre>
  </li>
  <li>
    Untuk penjadwalan, edit crontab <code>crontab -e </code> dan tambahan code berikut.
    <pre>
      ### 14:14 14 Februari
      14 14 14 2 * bash /home/trash/sisop/praktikum1/soal1.sh
      ### setiap hari Jumat di bulan Februari
      * * * 2 5 bash /home/trash/sisop/praktikum1/soal1.sh
    </pre>
  </li>
</ol>

<h3>Nomor 2</h3>
<p align="justify">
Anda merupakan pegawai magang pada sebuah perusahaan retail, dan anda diminta
untuk memberikan laporan berdasarkan file WA_Sales_Products_2012-14.csv.
Laporan yang diminta berupa:
<br>
a. Tentukan negara dengan penjualan(quantity) terbanyak pada tahun
2012.
<br>
b. Tentukan tiga product line yang memberikan penjualan(quantity)
terbanyak pada soal poin a.
<br>
c. Tentukan tiga product yang memberikan penjualan(quantity)
terbanyak berdasarkan tiga product line yang didapatkan pada soal
poin b.  
<br>
</p>
<ol>
  <li>
    Download file WA_Sales_Products_2012-14.csv dan pindahkan ke direktori praktikum1. Kemudian buat file soal2.sh.
  </li>
  <li>
    Untuk point a, tambahkan baris berikut ke dalam soal2.sh:<br>
    <code>
      awk -F, 'BEGIN {max = 0} NR>1 && $7 == "2012" { qty[$1]+=$10 } END { for(i in qty) { if(qty[i]>max) { max = qty[i]; neg = i}} print neg }' WA_Sales_Products_2012-14.csv > output_2A
  </code>
    <h6>Penjelasan:</h6>
    <ul>
      <li>Set separator menjadi koma (',').</li>
      <li>Sebelum repeat, set max=0.</li>
      <li>Untuk setiap iterasi untuk nomor baris > 1, jika field Year ($7)= 2012, quantity untuk Country ($1) ditambahkan dengan quantity pada current record ($10).</li>
      <li>Setelah selesai repeat, mencari Country (neg) dengan total quantity (qty) terbanyak kemudian print neg. Output awk ini disimpan dalam file output_2A untuk selanjutnya digunakan di point b dan c.</li>
    </ul>
  </li>
</ol>


<h3>Nomor 3</h3>
<p align="justify">
  Buatlah sebuah script bash yang dapat menghasilkan password secara acak
sebanyak 12 karakter yang terdapat huruf besar, huruf kecil, dan angka. Password
acak tersebut disimpan pada file berekstensi .txt dengan ketentuan pemberian nama
sebagai berikut:
<br>
  a. Jika tidak ditemukan file password1.txt maka password acak tersebut disimpan pada file bernama password1.txt
  <br>
  b. Jika file password1.txt sudah ada maka password acak baru akan disimpan pada file bernama password2.txt dan begitu seterusnya.
  <br>
  c. Urutan nama file tidak boleh ada yang terlewatkan meski filenya dihapus.
  <br>
  d. Password yang dihasilkan tidak boleh sama.
</p>
<ol>
  <li>
  </li>
</ol>


<h3>Nomor 4</h3>
<p align="justify">
  Lakukan backup file syslog setiap jam dengan format nama file “jam:menit tanggal-bulan-tahun”. Isi dari file backup terenkripsi dengan konversi huruf (string manipulation) yang disesuaikan dengan jam dilakukannya backup misalkan sebagai berikut:

  <br>
  a. Huruf b adalah alfabet kedua, sedangkan saat ini waktu menunjukkan pukul 12, sehingga huruf b diganti dengan huruf alfabet yang memiliki urutan ke 12+2 = 14.
  <br>
  b. Hasilnya huruf b menjadi huruf n karena huruf n adalah huruf ke empat belas, dan seterusnya.
  <br>
  c. setelah huruf z akan kembali ke huruf a
  <br>
  d. Backup file syslog setiap jam.
  <br>
  e. dan buatkan juga bash script untuk dekripsinya.
<br>
</p>
<ol>
  <li>
  </li>
</ol>


<h3>Nomor 5</h3>
<p align="justify">
  Buatlah sebuah script bash untuk menyimpan record dalam syslog yang memenuhi kriteria berikut:
  <br>
  a. Tidak mengandung string “sudo”, tetapi mengandung string “cron”, serta buatlah pencarian stringnya tidak bersifat case sensitive, sehingga huruf kapital atau tidak, tidak menjadi masalah.
  <br>
  b. Jumlah field (number of field) pada baris tersebut berjumlah kurang dari 13.
  <br>
  c. Masukkan record tadi ke dalam file logs yang berada pada direktori /home/[user]/modul1.
  <br>
  d. Jalankan script tadi setiap 6 menit dari menit ke 2 hingga 30, contoh 13:02, 13:08, 13:14, dst.
  <br>
</p>
<ol>
  <li>
  </li>
</ol>
