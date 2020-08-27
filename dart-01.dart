class MyClass {
  int myFunction(int a, int b) {
    return a + b;
  }

  // int add(int a, int b, int c) {      // Function overloading is not
  //   return a + b + c;                // Supported by Dart.
  // }                                 // So that means no static polymorphism
}

class MyChildClass extends MyClass {
  int myFunction(int a, int b) {
    // Method overriding
    return a - b; // I did subtraction here instead
  } // of addition so the implementation
} // here is different.

void main() {
  MyClass obj = new MyClass();
  print("Function in parent class returns : ${obj.myFunction(5, 2)}");

  MyClass obj1 = new MyChildClass();
  print("Function in child class returns : ${obj1.myFunction(5, 2)}");
}
