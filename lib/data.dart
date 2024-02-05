
import 'dart:convert';

class Document{
  final Map<String, Object?> _json;
  Document() : _json = jsonDecode(documentJson);
}

const documentJson = '''
{
  "metadata":{
    "title":"My Document",
    "modified":"2024-02-05"
  },
  "blocks":[
    {
      "type":"h1",
      "text":"chapter 1"
    },
    {
      "type":"p",
      "text":"This is a paragraph."
    },
    {
      "type":"checkbox",
      "checked":false,
      "text":"Dart 3"
    }
  ]
 }
''';