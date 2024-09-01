import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  const url = 'https://rickandmortyapi.com/api/character';
  
  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final characters = data['results'] as List<dynamic>;
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Failed to load characters. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('Error caught: $error');
  }
}
