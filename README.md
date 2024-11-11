# Old-World Adornments

### Daftar Tugas👇🏻
<details>
<Summary><b>Tugas 7</b></Summary>

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

**Stateless Widget** adalah widget yang tidak memiliki *state* yang berubah selama aplikasi berjalan. Sekali dirender, tampilannya tetap dan hanya dapat diperbarui jika ada perubahan dari luar. Contohnya `text` dan `icon` statis. Cocok untuk elemen UI yang tidak memerlukan interaksi atau pembaruan data.

**Stateful Widget** adalah widget dengan *state* yang bisa berubah saat aplikasi berjalan. Tampilan widget ini dapat diperbarui dengan memanggil `setState()`, yang memungkinkan respons terhadap interaksi pengguna atau perubahan data, seperti teks yang berubah atau tombol yang ditekan.

**Perbedaan utama**:
- **Stateless Widget**: Tidak berubah setelah dirender, kecuali dibangun ulang dari luar.
- **Stateful Widget**: Dapat berubah dengan `setState()` saat *state*-nya berubah.

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

- **Scaffold**: Menyediakan struktur dasar halaman aplikasi, termasuk bagian untuk AppBar, body, dan fitur lainnya.
- **AppBar**: Menampilkan judul aplikasi di bagian atas layar dengan warna latar belakang, biasanya digunakan untuk memberi identitas pada halaman atau aplikasi.
- **SingleChildScrollView**: Memungkinkan konten di dalamnya untuk di-scroll jika kontennya melebihi tinggi layar, memastikan tampilan tetap responsif pada berbagai ukuran layar.
- **Padding**: Menambahkan jarak di sekitar widget untuk memberikan tata letak yang lebih rapi dan terstruktur.
- **Column**: Mengatur widget secara vertikal (dari atas ke bawah), cocok untuk menata elemen UI dalam satu kolom.
- **Row**: Mengatur widget secara horizontal (dari kiri ke kanan), biasanya digunakan untuk elemen yang perlu ditampilkan sejajar dalam satu baris.
- **Card**: Menyediakan tampilan seperti kartu dengan bayangan (elevation), cocok untuk menyorot informasi atau elemen UI tertentu dengan tampilan yang menonjol.
- **Container**: Widget serba guna untuk tata letak, yang memungkinkan pengaturan warna latar belakang, ukuran, padding, dan margin.
- **Text**: Menampilkan teks statis pada layar.
- **Icon**: Menampilkan ikon yang menambah elemen visual dan memudahkan pengguna memahami fungsi tertentu.
- **GridView**: Menyusun item dalam bentuk grid (kolom dan baris), memungkinkan penataan elemen dalam beberapa kolom.
- **Material**: Memberikan tampilan berbasis material design dengan warna dan sudut membulat, sering digunakan untuk elemen interaktif.
- **InkWell**: Menambahkan efek tap atau ripple pada widget yang dapat ditekan, memberikan respons visual saat widget ditekan.

### 3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

- **Fungsi**: `setState()` adalah metode yang digunakan di dalam Stateful Widget untuk memberi tahu Flutter bahwa ada perubahan pada state widget yang memerlukan pembaruan tampilan. Ketika `setState()` dipanggil, Flutter akan memanggil kembali fungsi `build()` dari widget tersebut untuk menggambar ulang tampilan dengan perubahan terbaru.

- **Variabel yang Terpengaruh**: `setState()` memengaruhi setiap variabel atau properti yang bersifat dinamis dalam StatefulWidget, seperti data yang berubah berdasarkan interaksi pengguna (misalnya, nilai counter, input teks, atau pilihan dropdown). Variabel-variabel ini akan diperbarui dalam tampilan ketika `setState()` dipanggil. Pada proyek ini, jika ada data yang berubah dan perlu ditampilkan ulang, `setState()` berfungsi untuk memastikan tampilan UI diperbarui sesuai perubahan data.

### 4. Jelaskan perbedaan antara `const` dengan `final`.

- **const**: Digunakan untuk mendefinisikan nilai konstan yang harus sudah diketahui pada waktu kompilasi. Variabel `const` tidak dapat diubah, dan nilai yang diberikan harus konstan (tidak berubah dan sudah diketahui sebelum aplikasi berjalan). Biasanya digunakan untuk nilai yang tetap dan tidak akan berubah sepanjang waktu.

- **final**: Digunakan untuk mendefinisikan variabel yang nilainya hanya dapat diinisialisasi sekali, tetapi nilainya bisa ditentukan pada waktu runtime. `final` lebih fleksibel dibandingkan `const` karena tidak mengharuskan nilainya diketahui saat kompilasi, tetapi tetap tidak bisa diubah setelah diinisialisasi.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

- **Mengatur Stateless dan Stateful Widget**: Pada proyek ini, `MyHomePage` diimplementasikan sebagai `StatelessWidget` karena tidak ada data yang perlu diperbarui secara otomatis atau dinamis selama aplikasi berjalan. Semua data yang digunakan bersifat statis, sehingga widget ini lebih efisien sebagai stateless.

- **Menyusun Struktur dengan Scaffold dan AppBar**: Struktur dasar halaman dibangun menggunakan widget `Scaffold` dan `AppBar`. `Scaffold` menyediakan kerangka utama halaman dengan area untuk body, sedangkan `AppBar` menampilkan header di bagian atas dengan judul aplikasi "Old-World Adornments".

- **Menampilkan Data dengan InfoCard**: Informasi statis seperti NPM, Name, dan Class ditampilkan menggunakan komponen `InfoCard`. `InfoCard` adalah widget kustom yang menggunakan `Card` dan `Container` untuk menyajikan data dalam format yang rapi dan menarik. Setiap `InfoCard` menampilkan informasi dalam kotak terpisah dengan latar belakang khusus.

- **Menggunakan GridView untuk Menampilkan Tombol**: Tombol "Lihat Daftar Produk," "Tambah Produk," dan "Logout" ditampilkan menggunakan `GridView.count` dengan pengaturan 3 kolom. Penggunaan `GridView` memungkinkan tata letak tombol menjadi rapi dan responsif dalam format grid, memudahkan pengguna dalam berinteraksi dengan tombol.

- **Mengimplementasikan Warna dan Gaya Kustom**: Warna dan gaya kustom diterapkan pada `InfoCard` dan `ItemCard` untuk meningkatkan estetika tampilan. Setiap tombol memiliki warna latar yang berbeda (contoh: hijau untuk "Lihat Daftar Produk", krem untuk "Tambah Produk", dan cokelat muda untuk "Logout") serta efek interaktif dengan `InkWell`. Efek `Snackbar` ditampilkan untuk memberi respons visual saat tombol ditekan, dengan pesan yang sesuai untuk masing-masing tombol.
</details>

<details>
<Summary><b>Tugas 8</b></Summary>

### 1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

`const` digunakan untuk membuat objek yang tidak berubah (immutable) dan bersifat konstan di seluruh runtime aplikasi. Ini meningkatkan performa dan efisiensi memori, karena objek const hanya dibuat sekali dan tidak di-render ulang.

**Keuntungan Menggunakan `const`:**
- **Efisiensi Memori:** Karena objek `const` hanya dibuat sekali, penggunaan memori lebih efisien.
- **Performa Lebih Baik:** Flutter dapat menghindari render ulang pada objek yang menggunakan `const`, sehingga mengurangi proses rebuild widget tree dan meningkatkan performa aplikasi.
- **Readability:** Menunjukkan bahwa nilai atau widget tersebut tidak akan diubah, sehingga membantu developer lain untuk memahami bahwa komponen ini bersifat tetap.

**Kapan Menggunakan `const`:**
- **Untuk widget atau nilai yang tidak akan berubah:** Gunakan `const` pada widget atau nilai yang Anda tahu akan tetap sama sepanjang waktu. Contohnya pada teks statis, ikon, atau widget UI yang tidak dinamis.
- **Optimasi render tree:** Gunakan `const` untuk widget yang tidak perlu di-rebuild agar Flutter bisa menghindari rendering ulang dan menghemat memori.

**Kapan Tidak Menggunakan `const`:**
- **Jika objek bersifat dinamis:** Jangan gunakan `const` pada widget atau nilai yang mungkin berubah seiring berjalannya aplikasi, seperti data dari server, input pengguna, atau nilai yang sering diperbarui.

###  2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

`Column` dan `Row` adalah widget layout di Flutter yang digunakan untuk mengatur tata letak widget secara vertikal dan horizontal. `Column` menempatkan widget dari atas ke bawah, sedangkan `Row` menempatkan widget dari kiri ke kanan. Pada `Column`, `mainAxis` mengacu pada arah vertikal, sementara pada `Row`, `mainAxis` mengacu pada arah horizontal.

- **Column:** Menyusun widget secara vertikal (top-to-bottom).
- **Row:** Menyusun widget secara horizontal (left-to-right).

**Implementasi `Column`:**
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Item 1"),
    Text("Item 2"),
  ],
);

```
**Implementasi `Row`:**
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Icon(Icons.home),
    Icon(Icons.settings),
  ],
);
```

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada halaman form tugas ini, elemen input yang digunakan adalah:
- **TextFormField:** Untuk input teks seperti nama, deskripsi, size, dan warna.
- **TextFormField (dengan tipe `number`):** Untuk input angka seperti harga dan jumlah barang.

**Elemen Input Lain yang Tidak Digunakan:**
- **Checkbox:** Digunakan untuk pilihan boolean (true/false) seperti persetujuan atau status.
- **Switch:** Mirip dengan checkbox, tetapi dengan tampilan slider.
- **DropdownButton:** Untuk pilihan dengan opsi dropdown.
- **Radio Button:** Untuk memilih satu opsi dari beberapa pilihan.
- **Slider:** Untuk input nilai numerik yang bisa diubah dengan menggeser.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Penggunaan `ThemeData` dengan `ColorScheme` membantu menjaga konsistensi tampilan di seluruh aplikasi.

```dart
return MaterialApp(
  title: 'Old-World Adornments',
  theme: ThemeData(
     colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color(0xFFF9F7F2),
      secondary: const Color.fromARGB(255, 255, 255, 255),
    ),
  ),
  home: MyHomePage(),
);
```

- **`primary`:** Mengatur warna utama aplikasi menjadi `Sand Beige` (warna latar belakang atau bar navigasi utama).
- **`secondary`:** Mengatur warna sekunder menjadi putih untuk elemen-elemen lain yang memerlukan aksen.

**Pengaturan Tema pada Aplikasi yang Dibuat:**
Dalam aplikasi yang dibuat, saya menggunakan `ThemeData` untuk mengatur skema warna agar konsisten di seluruh aplikasi, seperti warna latar belakang, warna tombol, dan warna teks.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Flutter menyediakan widget `Navigator` dan `MaterialPageRoute` untuk menangani navigasi antar halaman dalam aplikasi.

- **`Navigator.push`**: Digunakan untuk mendorong (push) halaman baru ke dalam stack navigator, sehingga pengguna bisa berpindah ke halaman baru tersebut.
- **`Navigator.pop`**: Digunakan untuk menghapus (pop) halaman dari stack dan kembali ke halaman sebelumnya.
- **`Navigator.pushReplacement`**: Digunakan untuk menggantikan halaman saat ini dengan halaman baru, tanpa menambahkan halaman ke dalam stack.

**Contoh Implementasi Navigasi:**
```dart
// Navigasi ke halaman baru
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);

// Mengganti halaman saat ini dengan halaman baru (tanpa opsi kembali ke halaman ini)
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);

// Kembali ke halaman sebelumnya
Navigator.pop(context);
```

**Menggunakan Drawer untuk Navigasi**
Selain menggunakan `Navigator`, Flutter juga menyediakan widget **Drawer** untuk membuat navigasi yang mudah diakses dari sidebar, terutama jika aplikasi memiliki banyak halaman. Drawer memberikan pengalaman navigasi yang lebih intuitif karena pengguna dapat membuka dan memilih halaman langsung dari menu samping.
</details>