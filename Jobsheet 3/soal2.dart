// Fungsi untuk mengecek apakah sebuah bilangan merupakan bilangan prima
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
