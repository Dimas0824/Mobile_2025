void main() {
  String nama = "Muhammad Irsyad Dimas Abdillah";
  String nim = "2341720088";

  print("Bilangan dari 0 sampai 201:");

  for (int number = 0; number <= 201; number++) {
    bool isPrime = true;

    if (number < 2) {
      isPrime = false;
    } else {
      for (int i = 2; i * i <= number; i++) {
        if (number % i == 0) {
          isPrime = false;
          break;
        }
      }
    }

    if (isPrime) {
      print("$number - $nama - $nim");
    } else {
      print("$number");
    }
  }
}
