void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  var mhs1 = Map<String, String>(); //map kosong
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Muhammad Irsyad Dimas Abdillah';
  gifts['nim'] = '2341720088';

  var mhs2 = Map<int, String>(); //map kosong
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[20] = 'Muhammad Irsyad Dimas Abdillah';
  nobleGases[21] = '2341720088';

  //asign map mhs1
  mhs1['nama'] = 'Muhammad Irsyad Dimas Abdillah';
  mhs1['nim'] = '2341720088';

  //asign map mhs2
  mhs2[20] = 'Muhammad Irsyad Dimas Abdillah';
  mhs2[21] = '2341720088';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
