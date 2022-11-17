# Flutter App : Counter 7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless widget adalah bagian dari user interface yang bentuk dan isinya tidak bergantung pada hal lain selain konfigurasi informasi dan juga BuildContextnya. Disisi lain, stateful widget merupakan kebalikan dari stateless widget, yaitu bagian dari user interface yang bentuk dan isinya dapat berubah secara dinamis baik dengan ataupun tanpa input dari user. 

Perbedaan secara fungsional adalah stateful widget bisa mengubah reference state yang sudah diset sebelumnya, sedangkan stateless widget hanya berisi informasi untuk widget itu sendiri.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

<code>Text</code> Untuk menampilkan text\
<code>FloatingActionButton</code> Untuk membuat button yang berada di paling atas dari UI\
<code>Row</code> membuat element dalam 1 baris\
<code>Column</code> membuat element dalam 1 column\
<code>Icon</code> Memberi icon ke sebuah element\
<code>Padding</code> Untuk mengatur padding dari element\
<code>Center</code> Mengantur alignment menjadi center

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

# Flutter App : Flutter Form

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

Perbedaan antara Navigator.push dengan Navigator.pushReplacement terletak pada bagaimana layer diubah oleh flutter. Navigator.push hanya menimpa layer baru diatas layer sebelumnya seperti stack sedangkan Navigator.pushReplacement tidak menimpa layer melainkan mengubah isi dari layer secara keseluruhan.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

<code>Drawer</code>         Sebuah panel yang digunakan untuk melakukan perpindahan antar page
<code>TextFormField</code>  Sebuah komponen yang dapat menerima input berupa teks dari user
<code>Form</code>           Sebuah komponen yang menjadi root parent dari semua input yang dideklarasikan 
<code>ListTile</code>       Sebuah komponen yang merentang satu baris yang dapat berisi icon, dan teks
<code>Container</code>      Sebuah container untuk menampung beberapa komponen dengan atribut tertentu
<code>TextButton</code>     Sebuah komponen button untuk memanggil suatu fungsi tertentu ketika ditekan
<code>DropdownButton</code> Sebuah komponen button untuk memberikan beberapa pilihan input saja kepada user
<code>Dialog</code>         Sebuah komponen untuk memberikan dialog message ketika suatu event terjadi

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
**Beberapa event yang ada pada flutter:**
- OnPressed
- OnSaved
- OnTap
- OnChange
- OnComplete
## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Dalam mengganti halaman dari aplikasi flutter, Navigator memiliki dua metode dalam mengganti halaman dari aplikasi. Navigator.push hanya menimpa layer baru diatas layer sebelumnya seperti stack sedangkan Navigator.pushReplacement tidak menimpa layer melainkan mengubah isi dari layer secara keseluruhan. Jika menggunakan push, halaman yang ditampilkan akan ditempatkan dipaling depan dan lainnya dibawahnya secara stacking. Sedangkan jika pushReplacement halaman utama yang ditampilkan hanyalah halaman yang dipush pada pemanggilan pushReplacement tersebut.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Membuat dua buah file dart baru bernama form.dart dan showdata.dart untuk halaman yang akan ditampilkan
2. Membuat sebuah drawer yang berisi routing ke semua halaman yang terdapat dalam app flutter
3. Mengimplementasikan semua input-input data pada form.dart yaitu judul, nominal, dan dropdown jenis budget
4. Membuat dua class untuk input dan list untuk menyimpan barang
5. Mengimplementasikan event ketika button simpan ditekan, untuk menyimpan input kedalam list Budget yang telah dibuat
6. Mengimplementasikan ListTile builder untuk menampilkan seluruh data pada showdata.dart