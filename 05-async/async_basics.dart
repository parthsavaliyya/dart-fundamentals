Future<void> main() async {
  print("=== ASYNC PROGRAMMING ===");

  // Basic Future example
  await basicFutureExample();

  // Multiple async operations
  await multipleAsyncExample();

  // Error handling
  await errorHandlingExample();
}

Future<void> basicFutureExample() async {
  print("\n--- Basic Future ---");

  // Simulating network call
  String result = await fetchUserData();
  print("Result: $result");

  // Using then() method
  fetchUserData().then((data) {
    print("Using then(): $data");
  });
}

Future<String> fetchUserData() async {
  // Simulating delay
  await Future.delayed(Duration(seconds: 3));
  return "User data loaded successfully";
}

Future<void> multipleAsyncExample() async {
  print("\n--- Multiple Async Operations ---");

  // Sequential execution
  print("Sequential execution:");
  String data1 = await fetchData("API 1");
  String data2 = await fetchData("API 2");
  print("$data1, $data2");

  // Parallel execution
  print("Parallel execution:");
  List<String> results = await Future.wait([
    fetchData("API 1"),
    fetchData("API 2"),
    fetchData("API 3"),
  ]);
  print("Results: $results");
}

Future<String> fetchData(String source) async {
  await Future.delayed(Duration(milliseconds: 500));
  return "Data from $source";
}

Future<void> errorHandlingExample() async {
  print("\n--- Error Handling ---");

  try {
    String result = await riskyOperation();
    print("Success: $result");
  } catch (e) {
    print("Error caught: $e");
  } finally {
    print("Cleanup completed");
  }
}

Future<String> riskyOperation() async {
  await Future.delayed(Duration(milliseconds: 300));
  throw Exception("Something went wrong!");
}
