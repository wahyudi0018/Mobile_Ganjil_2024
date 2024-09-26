## Laporan Praktikum

### Nama: Wahyudi  
### NIM: 2241720018  
### Kelas: 3C  

---

# Tugas Pemrograman Mobile Jobsheet 3

## Praktikum 1
#### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().
```dart
String test = "test2";
if (test == "test1") {
   print("Test1");
} else If (test == "test2") {
   print("Test2");
} Else {
   print("Something else");
}

if (test == "test2") print("Test2 again");
```
#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
**Jawaban:** 
Pada langkah ini terjadi error pada baris ke-6, penulisan `If` menggunakan huruf besar, yang seharusnya ditulis sebagai `if`, karena Dart bersifat case-sensitive.

**Perbaikan** 
```dart
String test = "test2";
if (test == "test1") {
   print("Test1");
} else if (test == "test2") {
   print("Test2");
} Else {
   print("Something else");
}

if (test == "test2") print("Test2 again");
```
#### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```dart
String test = "true";
if (test) {
   print("Kebenaran");
}
```
**Jawaban:** 
Pada langkah ini terjadi error karena variabel `test` didefinisikan ulang. Solusinya adalah menggunakan variabel yang sudah ada tanpa perlu mendeklarasikannya kembali.

**Perbaikan** 
```dart
test = "true";
if (test == "true") {
    print("Kebenaran");
}
```

## Praktikum 2
#### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().
```dart
while (counter < 33) {
  print(counter);
  counter++;
}
```
#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
**Jawaban:** 
Pada langkah ini terjadi error karena variabel counter belum dideklarasikan atau diinisialisasi sebelumnya dalam fungsi main(). Tanpa deklarasi dan inisialisasi counter, kode ini tidak akan tahu dari mana memulai perhitungan.

**Perbaikan** 
```dart
int counter = 0; 
while (counter < 33) {
    print(counter);
    counter++;
}
```

#### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```dart
do {
  print(counter);
  counter++;
} while (counter < 77);
```

**Jawaban:** 
```dart
void main() {
  /// Langkah 1
  int counter = 0; 
  while (counter < 33) {
    print(counter);
    counter++;
  }
  /// Langkah 3
  do {
  print(counter);
  counter++;
  } while (counter < 77);
}
```

## Praktikum 3
#### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().
```dart
for (Index = 10; index < 27; index) {
    print(Index);
}
```
#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
**Jawaban:** 
Pada langkah ini terjadi error:
- **Variabel Tidak Konsisten:** `Index` dan `index` tidak konsisten karena menggunakan nama variabel yang berbeda. Variabel harus konsisten dalam penggunaan nama di seluruh loop `for` dan dideklarasikan dengan tipe data yang sesuai sebelum digunakan.
- **Inisialisasi dan Increment:** Penulisan `Index = 10` dan `index` tanpa operator increment menyebabkan error. Loop `for` memerlukan operator increment, seperti `index++`, untuk memperbarui nilai `index` pada setiap iterasi.

**Perbaikan** 
```dart
for (int index = 10; index < 27; index++) {
    print(index);
}
```
#### Langkah 3:
Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.
```dart
If (Index == 21) break;
Else If (index > 1 || index < 7) continue;
print(index);
```
**Jawaban:** 
Pada langkah ini terjadi error:
- **Variabel Tidak Konsisten:** `Index` dan `index` tidak konsisten. Variabel yang digunakan dalam `if` dan `else if` harus sama.
- **Penulisan Kata Kunci:** `Else If` dan `If` harus ditulis dengan huruf kecil (yaitu `else if` dan `if`).

**Perbaikan** 
```dart
if (index == 21) break;  
else if (index > 1 || index < 7) continue;
print(index);       
```

## Soal 2
Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.
**Jawaban:** 
```dart
bool isPrime(int number) {
  if (number <= 1) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;
  for (int i = 3; i * i <= number; i += 2) {
    if (number % i == 0) return false;
  }
  return true;
}

void main() {
  String name = "Wahyudi";
  String nim = "2241720018"; 

  print("Bilangan Prima dari 0 sampai 201:");
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print("Bilangan prima: $i - Nama: $name, NIM: $nim");
    }
  }
}
```
