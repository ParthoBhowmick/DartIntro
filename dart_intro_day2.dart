var nobleGas = ['helium', 'Neon', 'Boron'];
var mainFunc = false;

void main() {

// night work
var list = [1, 1, 2, 3];
  print(list);
  print(list.length);
  print(list[list.length-1]);
  
  //use the spread operator (...) to insert all the elements of a list into another list
  
  var list2 = [...list , 4];
  print(list2);
  
  // null aware operator
  
  var list1; 
  list2 = [...list, ...?list1];
  print(list2.length);
  
  var nav = ['Home','Furniture','Plants',if(2!=3) 'outlet'];
  print(nav);
  
  // list spread by for 
  
  var listOfInts = [1.9,2.5,3.2];
  var listOfString = [
    '#0',
    for (var i in listOfInts) '#${i.toInt()}'
  ];
  
  print(listOfString);
  
  // sets
  var setHalogens = {'Chlorine','Bromin','Iodene'};
  var elements = <String>{};
  elements.add('Flourin');
  elements.addAll(setHalogens);
  print(elements);
  elements.addAll(['Bromin','bromin']);
  print(elements);
  
  // Maps
  
  var seasons = {
    'first' : 'summer',
    'second' : 'rainy',
    'third' : 'autumn'
  };
  
  print(seasons);
  
  print(5/2);

  // set expand with list
  var setVar = {'string', 'holly'};
  var list = ['shit', 'holly'];
  setVar = {...setVar, ...list};
  print(setVar);

  //function

  print(calCulauteMass(24));

  print(isNoble('helium'));

  var number = 5;
  print('number = $number');

  printValues(5, 'triangle');
  printValues(0, 0.toString(), blue: true);

  var list2 = [1, 2, 3];
  list2.forEach((element) => print(element * 10));
  // function elementaiton of previous line
  print("");
  list2.forEach(printElement);

  var i = 0;
  // Anonymous function implementation of previous statment
  list2.forEach((item) {
    list2[i] = list2[i] * 10;
    i++;
  });

  print(list2);

  myFunction();

  // null checking in object
  var foo = 'GHGHHG';
  print(foo?.toLowerCase());

  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 4; ++i) message.write('!');
  print(message);

  // weird syntax

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
  
  //callbacks[1]();

  // equivalent
  for ( var callbackFunc in callbacks) callbackFunc();
  
  // Exceptions
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
  

} // end of main 


/* 
 * My Functions
 */


void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

myFunction() {
  var insideFunc = true;

  myNestedFunction() {
    print(insideFunc);
    print(mainFunc);
  }

  myNestedFunction();
}

printElement(element) => print(element * 10);

calCulauteMass(atomicNumber) {
  return atomicNumber * 2;
}

// short func
isNoble(gas) => nobleGas[2] == gas;

//func with optional param
printValues(int len, String val, {bool blue}) {
  if (blue != null)
    print('color is blue');
  else
    print('$len is ${val.toUpperCase()}');
}
