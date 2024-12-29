```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      // Process jsonData
      for (var item in jsonData) {
        print(item['name']); // Accessing a property that might not exist
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```