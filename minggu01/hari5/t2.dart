import 'dart:io';
import 'packages/http_server/http_server.dart';

void main() 
{
 HttpServer.bind('127.0.0.1', 8081)
  .then((HttpServer server) {
  server.listen((HttpRequest request) {
  server.listen((HttpRequest request) {
    if (request.method.toLowerCase() == 'post') {
    HttpBodyHandler.processRequest(request).then((body) {
      HttpBodyFileUpload fileUploaded = body.body['myfile'];
      final file = new File('abc.txt');
      file.writeAsBytes(fileUploaded.content, mode: FileMode.WRITE)
          .then((_) {
        request.response.close();
      });
    });
   } 
}); 
});
}