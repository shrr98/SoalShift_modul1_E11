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
  <font color="#00AAAA">#!/usr/bin/bash</font>

  i<font color="#00AA00">=</font>1
  <font color="#00AA00">for</font> f <font color="#00AA00">in</font> ./nature/*.jpg<font color="#00AA00">;</font> <font color="#00AA00">do</font>
          base64 <font color="#00AA00">-d</font> <font color="#FFFF55"><b>&quot;$f&quot;</b></font> <font color="#00AA00">|</font> xxd <font color="#00AA00">-r</font>  <font color="#00AA00">&gt;</font> ./nature/decryp/<font color="#FF5555"><b>$i</b></font>.jpg
          i<font color="#00AA00">=$((</font><font color="#FF5555"><b>$i</b></font>+1<font color="#00AA00">))</font>
  <font color="#00AA00">done</font>
      </pre>
  <li>
    
  </li>
</ol>
  
