import 'dart:io';
import 'dart:convert';

main() async {
  var apiUrl = Uri.parse('https://api.banghasan.com/quran/format/json/surat');
  var client = HttpClient(); // `new` keyword optional

  // 1. Create request
  HttpClientRequest request = await client.postUrl(apiUrl);

  // 2. Add payload to request
  var payload = {
    'title': 'Post 1',
    'content': 'Lorem ipsum dolor sit amet',
  };
  request.write(json.encode(payload));

  // 3. Send the request
  HttpClientResponse response = await request.close();

  // 4. Handle the response
  var resStream = response.transform(Utf8Decoder());
  await for (var data in resStream) {
    print('Received data: $data');
  }
}
