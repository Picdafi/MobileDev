void main(List<String> args) {
  //menggunakan kata kunci final
  /* variabel yang hanya bisa di isi nilai sebanyak satu kali. 
  nilai dari variabel tsb tidak dapat di ubah.
  
   */
  final String BAHASA ='dart';
  final VERSI = '2.1.0';
  
  //mengunakan kata kunci const
/* konstanta merupakan variabel yang tidak dapat diubah nilainya*/
  const double PI = 3.14159;
  const MAX = 100;

  print('$BAHASA $VERSI');
  print('NIlai PI : $PI');
  print('Nilai MAX : $MAX');
}