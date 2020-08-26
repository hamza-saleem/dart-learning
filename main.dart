//import 'dart:io';

// class vehicle {
//   String _brand, _name;
//   dynamic _model;
//   int _price;

//   // vehicle() {
//   //   print("vehicle");
//   // }
//   void setter(String b, String n, dynamic m, int p) {}

//   void getter() {}
// }
abstract class vehicle {
  String _brand, _name;
  dynamic _model;
  int _price;
  void setter(String b, String n, dynamic m, int p);

  void getter();
}

class car extends vehicle {
  String _fuelType, _gearType;

  // car();
  car(this._fuelType, this._gearType);
  void setter(String b, String n, dynamic m, int p) {
    _brand = b;
    _name = n;
    _model = m;
    _price = p;
  }

  void getter() {
    print("Brand : ${_brand}");
    print("\nName : ${_name}");
    print("\nModel : ${_model}");
    print("\nPrice : ${_price}");
    print("\nFuel Type : ${_fuelType}");
    print("\nGear Type : ${_gearType}");
  }
}

class jeep extends car {
  jeep(String fuelType, String gearType) : super(fuelType, gearType);

  // String _brand, _name;
  // dynamic _model;
  // int _price;
  // String _fuelType, _gearType;

}

void main() {
  car c = new car("Hi_Octane", "Automatic");
  c.setter("Toyota", "Prius", 2012, 850000);
  c.getter();

  print("\n");

  jeep j = new jeep("Diesel", "Manual");
  j.setter("Toyota", "Land Cruiser", 2007, 210000);
  j.getter();
}
