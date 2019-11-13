import 'dart:async';

main(List<String> args) {
   //membuat stream, jalur transaksi data
  StreamController stream = StreamController();
  //menghandle data yang lewat di suatu jalur data
  stream.stream.listen((data) {
    print('data: ${data}');
    print('x');
  });
  for (var i=0; i<10; i++){
  
    //mengirim data melalui sebuah jalur data
    stream.sink.add(i);
  }
  //menutup jalur data
  stream.sink.close();
}