import 'dart:io';
import 'dart:convert';
void main() {
  HttpClient()
    .getUrl(Uri.parse('https://api.banghasan.com/quran/format/json/surat')) // produces a request object
    .then((request) => request.close()) // sends the request
    .then((response) =>
      response.transform(Utf8Decoder()).listen(print)); // transforms and prints the response

    save()async{
      final prefs = await SharedPrences.getInstance();
      
    }
}
