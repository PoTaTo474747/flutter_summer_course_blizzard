class Wheel {
  int numberOfWheels = 0;
  Wheel ({required int numberOfWheels}) {
    this.numberOfWheels= numberOfWheels;
  }
}
class Car {
  String name = 'Car';
  Wheel  dugui = Wheel(numberOfWheels:4);
  Car ({required String name, required Wheel dugui}) {
    this.name = name;
    this.dugui = dugui;
  }
}
void main (){
  final lamborghiniDugui= Wheel (numberOfWheels: 4);
  final car = Car (name: 'Lamborghini', dugui: lamborghiniDugui);
}
class Door {
  int numberOfDoor=2;
  Door ({required int numberOfDoor}) {
    this.numberOfDoor=numberOfDoor;
  }
}

class Floor {
  int numberOfFloor=3;
  Floor ({required int numberOfFloor}) {
    this.numberOfFloor=numberOfFloor;
  }
}
class Building{
  String name='Ajnai 101';
  Floor floors=Floor(numberOfFloor: 0);
  Door doors=Door(numberOfDoor: 0);
Building ({required String name,required Floor floors,required Door doors}) {
  this.name=name;
  this.nmae=floors;
  this.
}
}
