# Flutter App : Counter 7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless widget adalah bagian dari user interface yang bentuk dan isinya tidak bergantung pada hal lain selain konfigurasi informasi dan juga BuildContextnya. Disisi lain, stateful widget merupakan kebalikan dari stateless widget, yaitu bagian dari user interface yang bentuk dan isinya dapat berubah secara dinamis baik dengan ataupun tanpa input dari user. 

Perbedaan secara fungsional adalah stateful widget bisa mengubah reference state yang sudah diset sebelumnya, sedangkan stateless widget hanya berisi informasi untuk widget itu sendiri.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

<code>Text</code> Untuk menampilkan text\
<code>FloatingActionButton</code> Untuk membuat button yang berada di paling atas dari UI\
<code>Row</code> membuat element dalam 1 baris\
<code>Column</code> membuat element dalam 1 column\
<code>Icon</code> Memberi icon ke sebuah element
<code>Padding</code> Untuk mengatur padding dari element\
<code>Center</code> Mengantur alignment menjadi center\

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi dari setState() adalah untuk memberikan sinyal kepada flutter untuk melakukan rebuild terhadap widget (dan semua descendantsnya) yang memanggil fungsi tersebut. Sehingga ketika developer menginginkan adanya perubahan terhadap sesuata pada UI, ia dapat memanggil fungsi tersebut untuk menampilkan perubahan yang ada.

Variabel yang terdampak pada program ini adalah variabel _counter dimana setiap kali tombol + ditekan ia bertambah 1, dan ketika tombol - ditekan ia berkurang 1.

## Jelaskan perbedaan antara const dengan final.

Const dan final keduanya merupakan variabel yang immutable dan isinya harus diinisilisasi langsung pada kode program. Perbedaan terletak pada const yang nilainya harus ditentukan secara eksplisit sebelum runtime dan nilainya selalu konstan sedangkan variable final tidak mengharuskan variabel memiliki nilai tetap sebelum runtime, tetapi saat runtime nilai tersebut harus sudah diinisialisasi. 

Contoh variabel const adalah variabel berisi integer tetap, dan contoh variable final adalah variabel berisi tanggal pada saat ini(selalu berubah tergantung kapan runtime berjalan).

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Buat app flutter baru dengan memanggil command <code>flutter create counter_7</code>
2. Membuat fungsi yang berfungsi untuk decrement variabel counter bernama _decrementCounter().
3. Membuat sebuah if statement yang akan mengubah children dari body tergantung dari nilai counter ganjil/genap. Selain itu dibuat juga coloring untuk text ganjil/genap.
4. Menambahkan button kedua dengan menambahkan child pada container utama
