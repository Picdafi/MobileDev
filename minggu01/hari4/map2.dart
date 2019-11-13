void printMap(Map<String, int> map){
  map.forEach((k,v){
    print('$k: $v');
  });
}
void main(List<String> args) {
  Map<String, int>a={
    'Jeruk':35,
    'Mangga':20,
    'Apel':50
  };

  print('Elemen - elemen map');
  printMap(a);
}


// hasil : 
// Elemen - elemen map
// Jeruk: 35
// Mangga: 20
// Apel: 50
