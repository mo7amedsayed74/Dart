
/*
OOP:
1. Class
2. Object
3. Encapsulation
4. Inheritance >> parent , child
5. Polymorphism
6. Abstraction
 */

// class >>   1.attributes  2.methods
void main(){}

/// Encapsulation >> ( Data Hiding, Testability, Flexibility, Security )
// class Student {
//   // Private properties >> remember that using underscore (_) before a variable or method name makes it library private not class private.
//
//   String? _name;
//   int? _id;
//
//   void setName(String name) {
//     _name = name;
//   }
//
//   set id(int id) => _id = id;
//
//
//   int get id => _id!;
//
//   String getName() {
//     return _name!;
//   }
//
// }
//
// void main() {
//   Student student = Student();
//
//   //student.setId(1);
//   student.setName("John");
//
//   print("Id: ${student.id}");
//   print("Name: ${student.getName()}");
// }

//***************************************************************************************


/// Inheritance
// class Person {
//   String? name;
//   int? id;
//   int? age;
//
//   void display() {
//     print("Name: $name");
//     print("Age: $age");
//   }
// }
//
// class Student extends Person {
//   String? schoolName;
//   String? schoolAddress;
//
//   void displaySchoolInfo() {
//     print("School Name: $schoolName");
//     print("School Address: $schoolAddress");
//   }
// }
// class Employee extends Person{
//
//   int? salary;
// }
//
// void main() {
//   var student = Student();
//   student.name = "John";
//   student.age = 20;
//   student.schoolName = "ABC School";
//   student.schoolAddress = "New York";
//   student.display();
//   student.displaySchoolInfo();
// }


// class Person {
//   String? name;
//   String? gender;
//
//   //Person(this.name,this.gender,this.id);
//
//   int? _id;
//
//   set id(int i) {
//     if (i > 0) {
//       _id = i;
//     } else {
//       print('error! please enter positive number');
//     }
//   }
//
//   void eat() {
//     print("eating");
//   }
// }
//
// // 1 > parent constructor
// // 2 > child constructor
// class Student extends Person{
//   List? courses;
//   int x1;
//   Student(this.x1,String name,String g,int id) : super (name, g, id);
// }
// class Employee extends Person{
//   int? salary;
//   Employee(int x,super.name,super.gender,super.id){
//     salary=x;
//     print("object created");
//   }
// }
// class Manager extends Person{
//
//   Manager(String name,String g,int id) : super (name, g, id);
//
//   void deleteEmployee(){
//     print("deleteEmployee");
//   }
// }


/// Polymorphism & override
// (Poly) means many and (morph) means forms.
// Polymorphism is the ability of an object to take on many forms.

// class Car{
//   void power(){
//     print("It runs on petrol.");
//   }
// }
//
// class Honda extends Car{
//
// }
// class Tesla extends Car{
//   @override
//   void power(){
//     print("It runs on electricity.");
//   }
// }
//
// void main(){
//   Honda honda = Honda();
//   Tesla tesla = Tesla(); //Car tesla2 = Tesla(); // Polymorphism
//
//
//   honda.power();
//   tesla.power();
// }

//***************************************************************************************


/// abstract class
//Abstract classes are classes that cannot be initialized.
// It is used to define the behavior of a class that can be inherited by other classes.
// An abstract class is declared using the keyword (abstract).

// abstract class Animal{
//   void eat();
// }
//
// class Dog extends Animal{
//   @override
//   void eat(){
//     print('Dog eat');
//   }
// }
//
// class Cat extends Animal{
//   @override
//   void eat(){
//     print('Cat eat');
//   }
// }

//**********************************************
//
// abstract class Animal {
//   void sound(); // abstract method
//   void tmp();
// }
//
// class Cat extends Animal {
//   @override
//   void sound() {
//     print("Cat sound");
//   }
//   @override
//   void tmp(){}
// }
//
// class Dog extends Animal {
//   @override
//   void sound() {
//     print("Dog sound");
//   }
//   @override
//   void tmp(){}
// }
//
// class Lion extends Animal {
//   @override
//   void sound() {
//     print("Lion sound");
//   }
//   @override
//   void tmp(){}
// }

//******************************************

// abstract class Shape {
//   int width;
//   int height;
//
//   Shape({required this.width, required this.height});
//
//   int area(); // abstract method only allowed in abstract class
// }
//
// class Rectangle extends Shape {
//   Rectangle(int w, int h) : super(width: w, height: h);
//
//   @override
//   int area() {
//     return width * height;
//   }
// }
//
// class Triangle extends Shape {
//   Triangle(int w, int h) : super(width: w, height: h);
//
//   @override
//   int area() {
//     return (0.5 * width * height).toInt();
//   }
// }

//***************************************************************************************

//
// abstract class Animal {
//   String name;
//   double speed;
//
//   Animal(this.name, this.speed);
//   void run();
// }
//
// // mixin CanRun is only used by class that extends Animal
// mixin CanRun on Animal { /// ( on ) keyword
//   @override
//   void run() => print('$name is Running at speed $speed');
// }
//
// class Dog extends Animal with CanRun {
//   Dog(String name, double speed) : super(name, speed);
// }
//
// void main() {
//   var dog = Dog('My Dog', 25);
//   dog.run();
// }


/// static in dart => It is used for memory management
//
// class Employee {
//
//   static int count = 0;
//   static const constantVariable = 10;
//
//   Employee() {
//     count++;
//   }
//   void totalEmployee() {
//     print("Total Employee: $count , $x");
//   }
// }
//
// void main() {
//   Employee e1 = Employee();
//   e1.totalEmployee();
//
//   Employee e2 = Employee();
//   e2.totalEmployee();
//
//   Employee e3 = Employee();
//   e3.totalEmployee();
// }