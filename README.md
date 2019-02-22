<h1>LAPORAN SOAL SHIFT MODUL 1</h1>
<div>
  <h3>KELOMPOK E 11</h3>
  <p>Shintya Rezky R. (05111740000017)</p>
  <p> Arif Darma A.   (05111740000182)</p>
</div>

<hr>

<h3>Nomor 1</h3>
<ol>
  <li>
    Download file nature.zip kemudian unzip filenya<br>
      <div>
        <code>unzip nature.zip</code>
      </div>
  </li>
      Buat file soal1.sh yang berisi code berikut.</br>
      <pre>
        #!/usr/bin/bash

        i=1
        for f in ./nature/*.jpg; do
                base64 -d "$f" | xxd -r  > ./nature/decryp/$i.jpg
                i=$(($i+1))
        done
      </pre>
  <li>
    
  </li>
</ol>
  
