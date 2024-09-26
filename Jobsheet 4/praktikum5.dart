(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  /// Langkah 1
  /// Menggunakan class record
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  /// Langkah 3
  /// Menggunakan fungsi tukar
  var swapped = tukar((record.a, record.b ? 1 : 0)); 
  print('Swapped Values: $swapped');

  /// Langkah 4
  (String, int) mahasiswa = ("Wahyudi", 2241720018);
  print(mahasiswa);

  /// Langkah 5
  var mahasiswa2 = (first: 'Wahyudi', a: 2241720018, b: true, last: 'Wahyudi');

  print(mahasiswa2.first); 
  print(mahasiswa2.a);    
  print(mahasiswa2.b);   
  print(mahasiswa2.last);  
}
