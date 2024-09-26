void main() {
  /// Langkah 1
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  /// Langkah 3
  var names1 = <String>{};
  Set<String> names2 = {};
  
  /// Menambahkan elemen nama dan NIM
  names1.add('Wahyudi');
  names1.add('NIM: 2241720018');
  names2.addAll({'Wahyudi', 'NIM: 2241720018'});
  
  print(names1);
  print(names2);
}