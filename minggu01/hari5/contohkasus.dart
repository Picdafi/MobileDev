import 'dart:async';
import 'dart:io';
import 'dart:convert';

Future<void> portmanteaux() async {
  var request =
      await HttpClient().getUrl(Uri.parse('https://dart.dev/f/portmanteaux.json'));
  var response = await request.close();

  // transforms and prints the response
  await for (var contents in response.transform(Utf8Decoder())) {
    print(contents);
  }
}

void main() {
  portmanteaux();
}


// https://dart.dev/tutorials/web/fetch-data 