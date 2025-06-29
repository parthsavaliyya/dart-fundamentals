void main() {
  // Lists
  listExamples();
  
  // Maps
  mapExamples();
  
  // Sets
  setExamples();
}

void listExamples() {
  print("=== LISTS ===");
  
  // Creating lists
  List<String> fruits = ["Apple", "Banana", "Orange"];
  List<int> numbers = [1, 2, 3, 4, 5];
  
  // Adding elements
  fruits.add("Mango");
  numbers.addAll([6, 7, 8]);
  
  // Accessing elements
  print("First fruit: ${fruits[0]}");
  print("All fruits: $fruits");
  
  // List methods
  print("Fruits count: ${fruits.length}");
  print("Contains Apple: ${fruits.contains("Apple")}");
  
  // Iterating
  for (String fruit in fruits) {
    print("Fruit: $fruit");
  }
}

void mapExamples() {
  print("=== MAPS ===");
  
  // Creating maps
  Map<String, int> scores = {
    "Math": 95,
    "Science": 88,
    "English": 92
  };
  
  // Adding entries
  scores["History"] = 85;
  
  // Accessing values
  print("Math score: ${scores["Math"]}");
  print("All scores: $scores");
  
  // Map methods
  print("Subjects: ${scores.keys}");
  print("Scores: ${scores.values}");
  
  // Iterating
  scores.forEach((subject, score) {
    print("$subject: $score");
  });
}

void setExamples() {
  print("=== SETS ===");
  
  // Creating sets
  Set<String> languages = {"Dart", "Flutter", "Java"};
  
  // Adding elements
  languages.add("Python");
  languages.add("Dart");
  
  print("Languages: $languages");
  print("Contains Dart: ${languages.contains("Dart")}");
  print("Languages count: ${languages.length}");
  
  // Set operations
  Set<String> moreLanguages = {"JavaScript", "Python", "C++"};
  Set<String> allLanguages = languages.union(moreLanguages);
  print("All languages: $allLanguages");
}
