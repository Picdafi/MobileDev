void main() { 
   Buah c= new Buah(); //inisiasi kelas dengan menggunakan keyword new
   c.Buahku(); //memanggil Buahku
}  
class Buah {  
   // field adalah variabel yg dideklarasikan di kelas
   String namabuah = "Anggur";  
   
   // function = mewakili tindakan yang dapat dilakukan suatu objek 
   //atau disebut juga metode
   void Buahku() { 
      print(namabuah); 
   } 
}

//class Car {  
   // field 
   //String engine = "E1001";  
   
   // function 
   //void disp() { 
    //  print(engine); 
  // } 
//}

