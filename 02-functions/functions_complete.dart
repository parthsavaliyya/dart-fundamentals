void main() {
 print("DART FUNCTIONS DEMO");
 
 // Basic function call
 greetUser("Parth");
 
 // Function with return value
 int sum = add(10, 20);
 print("Sum: $sum");
 
 // Optional parameters
 printInfo("Parth", age: 25, city: "Surat");
 printInfo("Anonymous User");
 
 // Arrow function
 print("Square of 5: ${square(5)}");
 
 // Anonymous functions
 var numbers = [1, 2, 3, 4, 5];
 numbers.forEach((num) => print("Number: $num"));
}

// Simple function
void greetUser(String name) {
 print("Hello, $name!");
}

// Function with return
int add(int a, int b) {
 return a + b;
}

// Optional parameters
void printInfo(String name, {int? age, String? city}) {
 print("Name: $name");
 if (age != null) print("Age: $age");
 if (city != null) print("City: $city");
}

// Arrow function
int square(int x) => x * x;
