void main() {
  // Creating objects
  Person person1 = Person("Parth", 25);
  Person person2 = Person("Ravi", 30);
  
  // Using methods
  person1.introduce();
  person2.introduce();
  
  // Using getters and setters
  person1.age = 26;
  print("Updated age: ${person1.age}");
  
  // Using static methods
  print("Total persons: ${Person.getPersonCount()}");
  
  // Inheritance example
  Student student = Student("Jay", 22, "Computer Science");
  student.introduce();
  student.study();
}

// Basic class
class Person {
  String name;
  int _age; // Private variable
  static int personCount = 0;
  
  // Constructor
  Person(this.name, this._age) {
    personCount++;
  }
  
  // Getter
  int get age => _age;
  
  // Setter
  set age(int newAge) {
    if (newAge > 0) {
      _age = newAge;
    }
  }
  
  // Method
  void introduce() {
    print("Hi, I am $name and I am $_age years old.");
  }
  
  // Static method
  static int getPersonCount() {
    return personCount;
  }
}

// Inheritance
class Student extends Person {
  String course;
  
  Student(String name, int age, this.course) : super(name, age);
  
  void study() {
    print("$name is studying $course.");
  }
  
  @override
  void introduce() {
    print("Hi, I am $name, $_age years old, studying $course.");
  }
}
