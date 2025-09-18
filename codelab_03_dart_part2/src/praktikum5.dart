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
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
