import 'package:day_08/add.dart';
import 'dart:io';
import 'dart:math';
void main(){
  print ('Day-08jihuhbubhubhu');
  print (add(4, 5));
  final myObject = A();
  print (myObject.x);
  print (myObject.y);

  final Random random = Random ();
  final int randomNumber = random.nextInt(100) + 1;
  print (randomNumber);

  final Random r = Random();
  final int randomNumber2 = r.nextInt(20);
  print (randomNumber2);

}
class A{
  int x = 0;
  int y = 0;
  void printMinus() {
    minus( 4 ,5);
  }
}
class B {
  int x = 0;
  int y = 0;
  int nextInt () {
    return 100;
  }
  int add (int a,int b){
    return a+b;
  }
}
