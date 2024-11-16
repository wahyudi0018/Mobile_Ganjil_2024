```text
Nama: Wahyudi
NIM: 2241720018
Kelas: 3C
```

---

# Tugas Pemrograman Mobile Jobsheet 10

## Praktikum 1: Dart Streams

### Langkah 1: Menambahkan file main.dart

![P11](img/P11.png)

```text
Menambahkan nama sebagai identitas hasil pekerjaan telah selesai.
```

### Langkah 2: Menambahkan file stream.dart

![P12](img/P12.png)

```text
Menambahkan 5 warna telah selesai.
```

### Langkah 3: Menambahkan method getColors()

![P13](img/P13.png)

#### Jelaskan fungsi keyword yield* pada kode tersebut

```text
yield* meneruskan elemen dari stream lain secara langsung ke stream yang dihasilkan oleh method getColors().
```

#### Apa maksud isi perintah kode tersebut?

```text
Method getColors() menghasilkan warna dari daftar colors setiap 1 detik secara berulang menggunakan Stream.periodic.
```

### Langkah 4: Mengedit class _StreamHomePageState di main.dart

![P14](img/P14.png)

![P15](img/soal4.gif)

```text
Mengedit class _StreamHomePageState di main.dart telah selesai.
```

### Langkah 5: Mengganti isi method changeColor() class _StreamHomePageState di main.dart

![P15](img/P15.png)

#### Jelaskan perbedaan menggunakan listen dan await for

```text
await for menunggu tiap item stream secara berurutan, sedangkan listen langsung menangani tiap item saat diterima tanpa menunggu.
```

## Praktikum 2: Stream controllers dan sinks

### Langkah 1: Menambahkan class NumberStream di stream.dart

![P21](img/P21.png)

```text
Menambahkan class NumberStream di stream.dart telah selesai.
```

### Langkah 2: Mengedit class _StreamHomePageState di main.dart

![P22](img/P22.png)

![P23](img/soal6.gif)

#### Jelaskan maksud kode edit initState() dan tambah method addRandomNumber() tersebut!

```text
- initState(): Menginisialisasi objek NumberStream dan mendengarkan stream-nya untuk memperbarui lastNumber setiap kali ada data baru yang ditambahkan.

- addRandomNumber(): Menambahkan angka acak dari 0 hingga 9 ke dalam stream melalui metode addNumberToSink.
```

### Langkah 3: Menambahkan error handling pada class NumberStream di stream.dart

![P23](img/P23.png)

```text
Menambahkan error handling pada class NumberStream di stream.dart telah selesai.
```

### Langkah 4: Mengedit method addRandomNumber() dan initState() pada class StreamHomePageState di main.dart

![P24](img/P24.png)

```text
Mengedit method addRandomNumber() dan initState() pada class StreamHomePageState di main.dart telah selesai.
```

#### Jelaskan maksud kode langkah 3 sampai 4 tersebut!

![P25](img/P25.png)

```text
- Langkah 3: Menambahkan metode addError() di NumberStream untuk mengirimkan error ke stream.
- Langkah 4: Menggunakan onError() pada listener stream untuk menangani error dan mengubah nilai lastNumber menjadi -1 saat error dan Mengubah addRandomNumber() untuk memanggil addError() dan mengirimkan error ke stream.
```

## Praktikum 3: Injeksi data ke streams

### Langkah 1: Mengedit initState() pada class StreamHomePageState di main.dart

![31](img/P31.png)

#### Jelaskan maksud kode langkah 1 tersebut!

![P32](img/soal8.gif)

```text
Kode  mengelola stream untuk menghasilkan dan mentransformasi angka acak, memodifikasi nilai angka dengan mengalikannya 10 kali, serta menampilkan angka terakhir yang dihasilkan, sambil menangani kesalahan dengan menampilkan nilai -1 jika terjadi error, dan menutup stream controller saat widget dihapus.
```

## Praktikum 4: Subscribe ke stream events

### Langkah 1: Mengedit class StreamHomePageState di main.dart

![P41](img/P41.png)

#### Jelaskan maksud kode langkah 1 tersebut!

![P42](img/soal9.gif)

```text
- Kode subscription = stream.listen((event) {...}): Mendengarkan aliran data (stream) dari numberStreamController dan memperbarui nilai lastNumber pada tampilan setiap kali ada data baru yang diterima.  

- Kode subscription.cancel(): Menghentikan langganan (subscription) stream agar tidak menerima data baru dan membebaskan sumber daya terkait.  

- Kode void addRandomNumber() {...}: Menghasilkan angka acak dan mengirimkannya ke stream melalui numberStream.addNumberToSink(myNum), dengan pengecekan untuk memastikan stream belum ditutup sebelum menambahkan angka baru.  
```

## Praktikum 5: Multiple stream subscriptions

### Langkah 1: Mengedit initState() pada class StreamHomePageState di main.dart

![P51](img/P51.png)

#### Jelaskan mengapa error itu bisa terjadi ?

```text
Error terjadi karena sebuah stream hanya dapat memiliki satu listener, sementara dalam kode tersebut terdapat dua subscription (subscription dan subscription2) yang mencoba mendengarkan stream yang sama.
```

### Langkah 2: Mengedit initState() dan build() pada class StreamHomePageState di main.dart

![P52](img/P52.png)

![P53](img/P53.png)

#### Jelaskan mengapa hal itu bisa terjadi ?

![P54](img/soal11.gif)

```text
Angka yang bertambah dua kali terjadi karena ada dua subscription yang mendengarkan stream yang sama, sehingga setiap kali angka baru ditambahkan, kedua subscription tersebut memperbarui UI secara bersamaan.
```

## Praktikum 6: StreamBuilder

### Langkah 1: Menambahkan class NumberStream di stream.dart

![P61](img/P61.png)

```text
Menambahkan class NumberStream di stream.dart telah selesai.
```

### Langkah 2: Menambahkan class StreamHomePageState di main.dart

![P62](img/P61.png)

```text
Menambahkan class StreamHomePageState di main.dart telah selesai.
```

#### Jelaskan maksud kode pada langkah 1 dan 2!

![P63](img/soal12.gif)

```text
- Class NumberStream menghasilkan stream angka acak setiap detik menggunakan Stream.periodic, yang menghasilkan angka acak antara 0 hingga 9.

- Method build pada StreamHomePage membangun tampilan yang menampilkan angka acak yang diterima dari stream menggunakan StreamBuilder, dengan menampilkan angka atau pesan error berdasarkan status stream.
```

## Praktikum 7: BLoC Pattern

### Langkah 1: Menambahkan class RandomNumberBloc di random_bloc.dart

![P71](img/P71.png)

```text
Menambahkan class RandomNumberBloc di random_bloc.dart telah selesai.
```

### Langkah 2: Menambahkan class RandomScreenState di random_screen.dart

![P72](img/P72.png)

```text
Menambahkan class RandomScreenState di random_screen.dart telah selesai.
```

### Langkah 3: Menambahkan class RandomScreen() di main.dart

![P73](img/P73.png)

```text
Menambahkan class RandomScreen() di main.dart telah selesai.
```

#### Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?

![P74](img/soal13.gif)

```text
Praktikum ini bertujuan untuk memahami pola BLoC (Business Logic Component) dalam memisahkan logika bisnis dari antarmuka pengguna di Flutter menggunakan Stream dan StreamController. Pada implementasinya, logika untuk menghasilkan angka acak dikelola oleh RandomNumberBloc, di mana perintah untuk menghasilkan angka baru dikirim melalui Sink (generateRandom), dan hasilnya dialirkan ke UI melalui Stream (randomNumber). UI menggunakan StreamBuilder untuk mendengarkan perubahan data secara reaktif dan menampilkan angka acak tersebut, sementara interaksi pengguna dengan tombol hanya mengirimkan event ke BLoC. Dengan pola ini, logika bisnis dan UI dipisahkan, sehingga aplikasi lebih terstruktur dan mudah dikelola.
```
