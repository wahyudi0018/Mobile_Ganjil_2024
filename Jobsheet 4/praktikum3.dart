void main() {
  /// Langkah 1
  // var gifts = {
  // // Key:    Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 1
  // };

  // var nobleGases = {
  //   2: 'helium',
  //   10: 'neon',
  //   18: 2,
  // };

  // print(gifts);
  // print(nobleGases);

  /// Langkah 3
  /// deklarasi variabel gifts
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
  };

  /// deklarasi variabel nobleGases
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  /// Menambahkan elemen nama dan NIM
  var mhs1 = <String, String>{};
  mhs1['name'] = 'Wahyudi';
  mhs1['NIM'] = '123456';

  /// Menambahkan elemen nama dan NIM
  var mhs2 = <int, String>{};
  mhs2[1] = 'Wahyudi';
  mhs2[2] = '123456';

  print('gifts: $gifts');
  print('nobleGases: $nobleGases');
  print('mhs1: $mhs1');
  print('mhs2: $mhs2');
}