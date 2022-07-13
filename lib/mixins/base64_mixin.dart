import 'dart:convert';
import 'dart:typed_data';

mixin Base64Mixin {
  Uint8List dataFromBase64String(String base64String) {
    final string1 = base64String.replaceAll('data:image/png;base64,', '');
    final string2 = string1.replaceAll('data:image/jpg;base64,', '');
    final string3 = string2.replaceAll('data:audio/mp3;base64,', '');
    final string4 = string3.replaceAll('data:image/svg+xml;base64,', '');
    final string5 = string4.replaceAll('data:image/jpeg;base64,', '');
    return base64Decode(string5);
  }
}
