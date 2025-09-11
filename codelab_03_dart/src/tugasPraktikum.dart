void main() {
  String nama = "Muhammad Irsyad Dimas Abdillah";
  String nim = "2341720088";

  print("Bilangan Prima dari 0 sampai 201:");

  for (int number = 2; number <= 201; number++) {
    bool isPrime = true;

    // cek apakah number prima
    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }

    // jika prima, cetak beserta nama dan NIM
    if (isPrime) {
      print("$number - $nama - $nim");
    }
  }
}
