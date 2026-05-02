class Animal {
  String name;
  int usia;
  double? berat;

  Animal(this.name, this.usia, this.berat);

  makan() {
    print("$name sedang makan..");
  }

  tidur(){
    print("$name sedang tidur.....");
  }
}

void main() {
  var lenovo= Laptop("lenovo", 5, 10);
  var asus = Laptop("asus", 4, 7);


  print(lenovo.name);
  print(asus.name);
  print(lenovo.menjual());
  print(asus.menjual());
}

class Laptop {
  String name;
  int harga;
  double jumlah;

  Laptop(this.name, this.harga, this.jumlah);

  menjual() {
    print("saya menjual laptop $name");
  }
}