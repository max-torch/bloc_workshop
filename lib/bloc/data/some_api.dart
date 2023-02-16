import 'dart:io';

class SomeAPIRepository {
  final File file = File('someEndpoint.txt');

  Future<void> writeData(String text) async {
    await file.writeAsString(text);
  }
}
