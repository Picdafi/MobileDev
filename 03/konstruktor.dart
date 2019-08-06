void main() {           
   Buah c1 = new Buah.namedConst('Semangka');                                       
   Buah c2 = new Buah(); 
}           
class Buah {   //deklarasi konstruktor                
   Buah() {                           
      print("ini memanggil konstruktor non parameter");
   }                                   
   Buah.namedConst(String buah) { 
      print("Cetak namabuah: ${buah}");    
   }                               
}