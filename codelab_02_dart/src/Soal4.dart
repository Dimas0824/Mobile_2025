void main() {
  // Variabel tanpa null safety -> harus diisi nilai awal
  String name = "Irsyad";
  print(name);

  // Variabel dengan null safety -> bisa bernilai null
  String? nickname;
  print(nickname); // Output: null

  // Perlu dicek sebelum digunakan
  if (nickname == null) {
    print("Nickname belum diisi!");
  } else {
    print("Nickname: $nickname");
  }
}
