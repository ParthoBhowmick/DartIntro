main() {
  var staticOne = 1.1;
  print(staticOne);

  // one = 1 -> is not valid :(

  dynamic dynamicOne = 2;
  print(dynamicOne);

  dynamicOne = 'hello';
  print(dynamicOne);

  // dart default build type

  var one = int.parse('1');
  //print(one is String);
  //print(one is int);
  //print(one is double);
  //print(one is List<int>);

  const foo = [1, 2, 3];

  const Object i = 3;
  const list = [i as int];

  //print(list is List<int>);
  
  //string to number casting
  
  var onePointOne = double.parse('1.1');
  print(onePointOne);
  
  String pi = 3.14159.toStringAsFixed(3);
  print(pi);
  
  String oneString = one.toString();
  print(oneString);
 
  // type casting 
  
  onePointOne = 1.16;
  one = onePointOne.toInt();
  print(one);
  
  onePointOne = one.toDouble();
  print(onePointOne);
  
  
  /*
   * bitwise operator in dart
   */
  
  print(3<<1);
  print(5>>1);
  print(3&4);
  print(3|6);
  
  
  // Dart String 
  
  var s = 'string interpolation';
  
  print("It's " + s );
  
  print("It's ${s.toUpperCase()}");
  
  /*  Two strings are equivalent if 
   * they contain the same sequence of code units.
   */
  
  
  s = "It's \n" + s;
  
  print(s);
  
  s = r'In a raw string, not even \n gets special treatment.';
  
  print(s);
  
  var hitPoints = 88;
assert(hitPoints <= 0);
  
  
  
}
