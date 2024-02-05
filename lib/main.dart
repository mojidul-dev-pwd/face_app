import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';

void main(){
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget{
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: DocumentScreen(
        document:Document(),
      )
    );
  }
}

class DocumentScreen extends StatelessWidget{
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key
  });

  @override
  Widget build(BuildContext context){
    final metadataRecord = document.metadata;

    return Scaffold(
      appBar: AppBar(
        //title: const Text("PWD"),
        title: Text(metadataRecord.$1),
      ),
      body: Column(
        children: [
          Center(
            child: Text("Last modified ${metadataRecord.modified}",),
          )
        ],
      ),
    );
  }

}