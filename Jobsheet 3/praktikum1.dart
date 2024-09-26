void main() {
  /// Langkah 1
String test = "test2";
    if (test == "test1") {
      print("Test1");
    } else if(test == "test2") { /// Pastikan menggunakan 'if' dengan huruf kecil
      print("Test2");
    } else{
      print("Something else");
    }

    if (test == "test2") print("Test2 again");
    /// Langkah 3
    test = "true";  /// Ubah nilai variabel 'test' tanpa mendeklarasikan ulang
    if (test == "true") {
      print("Kebenaran");
    }
}