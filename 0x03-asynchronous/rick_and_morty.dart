import 'package:http/http.dart' as http;
import 'dart:convert';


Future<void> printRmCharacters() async {
  try {
    var response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var characters = data['results'];
      var first17Characters = characters.sublist(0, 17);
      for (var character in first17Characters) {
        print(character['name']);
      }
    } else {
      print('Failed to Load characters: ${response.statusCode}');
    }
  } catch (error) {
    print('Error caught: $error');
  }
}