var nobleGas = ['helium', 'Neon', 'Boron'];
var mainFunc = false;

void main() {
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
