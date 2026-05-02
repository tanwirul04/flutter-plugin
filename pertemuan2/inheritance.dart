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

class Kucing extends Animal {
  Kucing(String name, int usia, double berat) : super(name,usia,berat);

  void mengeong () {
    print("$name sedang mengeong");
  }
}

class Anjing extends Animal {
  Anjing(String name, int usia, double berat) : super(name,usia,berat);

  void menggonggong() {
    print("$name sedang menggonggong");
  }
}

void main() {
  var kucing= Animal("leno", 5, 10);
  var ikan = Animal("ikan", 4, 7);

  var kucing2 = Kucing("meong", 4, 5);
  var anjing = Anjing("heli", 4, 3);

  kucing2.mengeong();
  anjing.menggonggong();


  print(kucing.name);
  print(ikan.name);
  print(ikan.makan());
  print(kucing.makan());
}