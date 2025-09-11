void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");

  // Perbaikan: Gunakan nama variabel berbeda dan pastikan kondisi bertipe bool
  String testStr = "true";
  if (testStr == "true") {
    print("Kebenaran");
  } else {
    print("Kesalahan");
  }

  if (testStr == "true") print("Kebenaran lagi");
}
