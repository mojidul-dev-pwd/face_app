
import 'dart:convert';

class Document{
  final Map<String, Object?> _json;
  Document() : _json = jsonDecode(documentJson);

  (String, {DateTime modified}) get metadata {           // Add from here...
    const title = 'PWD';
    final now = DateTime.now();

    return (title, modified: now);
  }
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
// to here.