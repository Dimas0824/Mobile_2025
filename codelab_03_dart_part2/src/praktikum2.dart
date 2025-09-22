void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  print(names1);
  print(names2);

  // Tambahkan elemen nama dan nim ke dalam set
  names1.add('Muhammad Irsyad Dimas Abdillah');
  names2.add('2341720088');

  // Tambahkan elemen dengan method addAll()
  names1.addAll({'Muhammad Irsyad Dimas Abdillah', '2341720088'});

  print(names1);
  print(names2);
}
