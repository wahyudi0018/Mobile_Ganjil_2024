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