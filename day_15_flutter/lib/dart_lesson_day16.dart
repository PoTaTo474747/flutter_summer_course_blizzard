int a = 16;
void main() {
  if (a > 15) {
    print('The number is bigger than $a ');
  } else {
    print('The number is smaller than $a');
  }
  a > 15 ? print('The number is bigger than $a ')
      : print('The number is smaller than $a');
  bool isBigger = a > 15 ? false : true;
  print(isBigger);
}
