class Shape {
  int size = 0;
  int length = 0;
  int height = 0;

  Shape({required int size, required int lenght, required int heigth}) {
    this.size = size;
    this.length = length;
    this.height = heigth;
  }
  void showInfo() {
    print("I'm a shape");
  }
}

class Rectangle extends Shape {
  Rectangle(
      {required super.size, required super.lenght, required super.heigth});

  @override
  void showInfo() {
    print("I'm a rectangle");
  }
}

void main() {
  final shape = Shape(size: 3, lenght: 10, heigth: 30);
  shape.showInfo();
  final rectangle = Rectangle(size: 3, lenght: 20, heigth: 40);
  rectangle.showInfo();
  final pig=Pig(name: 'PIG', type: 'FAT');
  final cat=Cat(name:'CAT', type: 'BLACK');
  final horse=Horse(name: 'PONY', type: 'RAINBOW');
  pig.makeNoise();
  cat.makeNoise();
  horse.makeNoise();
}

class Animal {
  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
  String name = ' Animal ';
  String type = 'Animal';

  void makeNoise() {
    print('Animal Roaring');
  }
}

class Pig extends Animal {
  Pig({required super.name, required super.type});

  @override
  void makeNoise() {
    print('pig roarr!!');
  }
}

class Cat extends Animal {
  Cat({required super.name, required super.type});

  @override
  void makeNoise() {
    print('Maoww!!');
  }
}

class Horse extends Animal {
  Horse({required super.name, required super.type});

  @override
  void makeNoise() {
    print('hmmHOo!!');
  }
}
