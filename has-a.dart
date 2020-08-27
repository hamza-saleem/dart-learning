class employee {
  String empName;

  void inputData(String n) {
    empName = n;
  }

  void employeeInfo(address a) {
    print("Name : ${empName} \n Address : ");
    a.printAddress();
  }

  // void printInfo(manager m) {
  //   print("${empName} is the employee of ${m.managerInfo()}");
  // }
}

// class manager {
//   String managerName;
//   void inputData(String n) {
//     managerName = n;
//   }

//   String managerInfo() {
//     return managerName;
//   }

//   void printInfo(employee e) {
//     print("${managerName} is the manager of ${e.employeeInfo()}");
//   }
// }

class address {
  int streetNo;
  String block, area, city;

  void inputData(int s, String a, String b, String c) {
    streetNo = s;
    block = b;
    area = a;
    city = c;
  }

  void printAddress() {
    print("Street : ${streetNo}");
    print("Block : ${block}");
    print("Area : ${area}");
    print("City : ${city}");
  }
}

void main() {
  print("Hello from the other side");
  var emp = new employee();
  emp.inputData("Adam");

  var a1 = new address();
  a1.inputData(2, "Wapda Town", "H1", "Adelaide");

  emp.employeeInfo(a1);
  // var m = new manager();
  // m.inputData("Rowan");

  // emp.printInfo(m);

  // m.printInfo(emp);
}
