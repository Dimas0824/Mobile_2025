void main() {
  var list1 = [1, 2, 3];
  print(list1);

  // List bisa menampung null kalau tipenya nullable
  List<int?> list1b = [1, 2, null];
  print(list1b);

  var list3 = [0, ...?list1b];
  print(list3.length);

  // Tambahkan variabel list berisi NIM
  var nim = ['2', '1', '4', '1', '7', '2', '0', '0', '8', '8'];
  var listNim = [...nim];
  print(listNim);

  //Langkah 4: Conditional Element
  // Kasus promoActive = true
  printNav(true);

  // Kasus promoActive = false
  printNav(false);
}

void printNav(bool promoActive) {
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
