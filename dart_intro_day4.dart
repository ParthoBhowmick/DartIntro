//functional programming in dart

main() {
  
  //lambda functions
  Function add = (int a, int b) => (a + b);

  Function multiply = (int sum, int c) => c * sum;

  Function getPercentage = (int percent) {
    print(multiply(add(3, 5), 2)*(percent/100));
  };

  getPercentage(50);
  
  
  // higher order function which takes argument of function and return function 
  
  provideAll((int sum, int c) => c * sum,(int a, int b) => (a + b))(50);
  //provideAll(multiply,add)(50);
  
  // fixed linked list
  List<int> fixedList = List(5);
  
  fixedList.add(30);
  
  print(fixedList.length);
  
  
  
}

// conventional function 
addMultiplication(var val) {
  print(val);
}

// higherOrderFunc
provideAll(myFunc1,myFunc2) => (int percent) =>
    print(myFunc1(myFunc2(3, 5), 2)*(percent/100));


/*
 * chomok
 * 
 * main() {
  provideAll((sum, c) => c * sum, (a, b) => (a + b))(50);
}

provideAll(myFunc1, myFunc2) =>
    (percent) => print(myFunc1(myFunc2(3, 5), 2) * (percent / 100));
 */

