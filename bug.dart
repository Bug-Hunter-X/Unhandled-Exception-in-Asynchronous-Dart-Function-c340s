```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here. Note that the response body is a String.
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the error here. Print the stack trace for debugging purposes.
    print('Error: $e');
    // This line is problematic and might not always be what you want:
    rethrow; // Re-throw the exception to allow handling at higher levels
  }
}
```