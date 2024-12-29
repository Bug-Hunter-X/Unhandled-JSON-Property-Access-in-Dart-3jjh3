```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      for (var item in jsonData) {
        final name = item['name']; //This is better
        final name2 = item['name'] ?? 'N/A'; //This is better
        print(name); //This might throw an error if name is null
        print(name2); //This will print N/A if name is null
        if (item.containsKey('name')) {
          print(item['name']);
        }
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```