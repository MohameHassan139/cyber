import 'dart:async';
import 'dart:convert';

// A=>65  &&  Z => 90

class Algorithms {
  
  
  void printchar() {
    for (int i = 65; i <= 90; i++) {
      print(String.fromCharCode(i));
      print(String.fromCharCode(i).codeUnits[0]);
    }
  }

  List<String> encrepation(
      {required String cipherText, required int encrepationKey}) {
    cipherText = cipherText.toUpperCase();
    List<int> charIndex = cipherText.codeUnits;
    List<String> planText = [];
    for (var char in charIndex) {
      if (char < 65 || char > 90) {
        planText.add('●');
      } else {
        planText.add(String.fromCharCode((char + encrepationKey) % 26 + 65));
      }
    }

    print(planText);
    return planText;
  }

  List<String> decrepation(
      {required String planeText, required int decrepationKey}) {
    planeText = planeText.toUpperCase();
    List<int> charIndex = planeText.codeUnits;
    List<String> planText = [];
    for (var char in charIndex) {
      if (char >= 65 && char <= 90) {
        planText
            .add(String.fromCharCode((char - decrepationKey % 26 + 26) % 26 + 65));
      }else{
             planText
            .add('●');
      }
    }

    print(planText);
    return planText;
  }
}
