void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var hasil = tukar((10, 20));
  print(hasil);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Muhammad Irsyad Dimas Abdillah', 2341720088);
  print(mahasiswa);

  //akses masing masing field
  print(mahasiswa.$1);
  print(mahasiswa.$2);

  var mahasiswa2 = ('Irsyad', a: 2341720088, b: true, 'Informatika');

  print(mahasiswa2.$1); // Prints 'Irsyad'
  print(mahasiswa2.a); // Prints 2341720088
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'Informatika'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
