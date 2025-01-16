```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      // Check if the key exists before accessing it
      if (jsonResponse.containsKey('data')) {
        final data = jsonResponse['data'];
        print(data);
      } else {
        print('Key "data" not found in JSON response');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```