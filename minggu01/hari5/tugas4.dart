import 'dart:async';
import 'dart:io';

void main() {
  new File('data.txt').readAsString().then((String contents) {
    print(contents);
  });
}