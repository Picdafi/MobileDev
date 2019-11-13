//ASYN, FUTURE, 
import 'dart:math';
void main() {
  
  //Statement 1 akan berjalan seperti biasa
  print("Liagami");
  
  //Statement 2 juga berjalan seperti biasa
  String result = "Pending";
  
  //Statement 3 mencoba menunda data, memberi jeda waktu 3 detik
  //metode yang tertunda kelas Future yang 
  var myFuture = Future.delayed(Duration(seconds: 3), () {
    Random rand = Random();
    int res = rand.nextInt(3);
    if (res == 1)
      throw Exception();
    else if (res == 1)
      result = "Resource not available";
    else
      result = "Image Loaded Successfully";
    return "Result: $result";
  });
  
  //Statement 4, then tugasnya mengambil callback sebagai argument
  // callback ini akan dijalankan ketika myFuture sudah selesai dengan nilai
  myFuture.then((result) {
    print(result);
  });
  
  //Statement 5, mengambil panggilan balik sbg argumen
  //dan ini dijalankan ketika myFuture selesai dg kesalahan
  myFuture.catchError((error){
    print('Caught $error');
  });
  
  //Statement 6
  print("yuk");
  
  //Statement 7
  print("Result: $result");
}

//statement 3
//Future dalam statement 3 akan menampilkan nilai setelah selesai 3 detik
//baik dengan nilai ataupun kesalahan namun tidak akan memblokir kode tersebut
