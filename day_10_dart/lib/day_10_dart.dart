class Sprite {
  int x = 0;
  int y = 0;

  Sprite(int x,int y){
    this.x=x;
    this.y=y;
  }
  void makeNoise (){
    print ('My Position is ${this.x} and ${this.y}');
  }
}
class Shape {
  int length=0;
  int height=0;

  Shape({required int length,required int height}){
    this.length=length;
    this.height=height;

  }
  void showPosition (){
  print ('My size is legth=${this.length} and height = ${this.height}');

}}
class Animal {
  Animal ({required String name , required String type }) {
    this.name=name;
    this.type=type;
  }
  String name =' Animal ';
  String type ='Animal';

  void makeNoise (){
    print ('Animal Roaring');
  }
}


void main(){
  final Drum=Sprite(10,10);
  Drum.makeNoise();

  final shape = Shape(length:10, height:20 );
  shape.showPosition();
  final u = Shape (length: 40, height:30 );
  u.showPosition();
  final animal = Animal(name: 'CAT',type:'BIG CAT');
  animal.makeNoise();
  }

