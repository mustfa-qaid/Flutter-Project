class Algorithems {

  String additiveEncrypt(String text, int shift) {
    String result = '';
    for (var i in text.split('')) {
      if (i.codeUnitAt(0) >= 65 && i.codeUnitAt(0) <= 90) {
        // Uppercase letters
        result += String.fromCharCode((i.codeUnitAt(0) + shift - 65) % 26 + 65);
      } else if (i.codeUnitAt(0) >= 97 && i.codeUnitAt(0) <= 122) {
        // Lowercase letters
        result += String.fromCharCode((i.codeUnitAt(0) + shift - 97) % 26 + 97);
      } else {
        result += i; // Non-alphabetic characters remain unchanged
      }
    }
    return result;
  }

  String additiveDecrypt(String text, int shift) {
    String result = '';
    for (var i in text.split('')) {
      if (i.codeUnitAt(0) >= 65 && i.codeUnitAt(0) <= 90) {
        // Uppercase letters
        result += String.fromCharCode((i.codeUnitAt(0) - shift - 65) % 26 + 65);
      } else if (i.codeUnitAt(0) >= 97 && i.codeUnitAt(0) <= 122) {
        // Lowercase letters
        result += String.fromCharCode((i.codeUnitAt(0) - shift - 97) % 26 + 97);
      } else {
        result += i; // Non-alphabetic characters remain unchanged
      }
    }
    return result;
  }

  String monoEncrypt(String text, String key) {
    String cipher = '';
    for (var i in text.split('')) {
      if (i.codeUnitAt(0) >= 65 && i.codeUnitAt(0) <= 90) {
        // Uppercase letters
        int index = i.codeUnitAt(0) - 'A'.codeUnitAt(0);
        cipher += key[index];
      } else if (i.codeUnitAt(0) >= 97 && i.codeUnitAt(0) <= 122) {
        // Lowercase letters
        int index = i.codeUnitAt(0) - 'a'.codeUnitAt(0);
        cipher += key[index];
      } else {
        cipher += i; // Non-alphabetic characters remain unchanged
      }
    }
    return cipher;
  }

  String monoDecrypt(String text, String key) {
    String cipher = '';
    for (var i in text.split('')) {
      if (i.codeUnitAt(0) >= 65 && i.codeUnitAt(0) <= 90) {
        // Uppercase letters
        int index = key.indexOf(i);
        cipher += String.fromCharCode('A'.codeUnitAt(0) + index);
      } else if (i.codeUnitAt(0) >= 97 && i.codeUnitAt(0) <= 122) {
        // Lowercase letters
        int index = key.indexOf(i);
        cipher += String.fromCharCode('a'.codeUnitAt(0) + index);
      } else {
        cipher += i; // Non-alphabetic characters remain unchanged
      }
    }
    return cipher;
  }

  int modInverse(int a, int m) {
    a = a % m;
    for (int x = 1; x < m; x++) {
      if ((a * x) % m == 1) {
        return x;
      }
    }
    throw Exception('Modular inverse does not exist');
  }

  String multiplicativeEncrypt(String plaintext, int key) {
    String ciphertext = '';
    for (var char in plaintext.split('')) {
      if (RegExp(r'[A-Za-z]').hasMatch(char)) {
        // Check if the character is an alphabet
        int charNum = char.toUpperCase().codeUnitAt(0) - 'A'.codeUnitAt(0);
        int encryptedNum = (charNum * key) % 26;
        String encryptedChar =
        String.fromCharCode(encryptedNum + 'A'.codeUnitAt(0));
        ciphertext += encryptedChar;
      } else {
        ciphertext += char; // Non-alphabetic characters remain unchanged
      }
    }
    return ciphertext;
  }

  String multiplicativeDecrypt(String ciphertext, int key) {
    String plaintext = '';
    int inverseKey = modInverse(key, 26);
    for (var char in ciphertext.split('')) {
      if (RegExp(r'[A-Za-z]').hasMatch(char)) {
        // Check if the character is an alphabet
        int charNum = char.toUpperCase().codeUnitAt(0) - 'A'.codeUnitAt(0);
        int decryptedNum = (charNum * inverseKey) % 26;
        String decryptedChar =
        String.fromCharCode(decryptedNum + 'A'.codeUnitAt(0));
        plaintext += decryptedChar;
      } else {
        plaintext += char; // Non-alphabetic characters remain unchanged
      }
    }
    return plaintext;
  }

  String affineEncrypt(String plaintext, int keyA, int keyB) {
    String ciphertext = '';
    for (var char in plaintext.split('')) {
      if (RegExp(r'[A-Za-z]').hasMatch(char)) {
        // Check if the character is an alphabet
        int charNum = char.toUpperCase().codeUnitAt(0) - 'A'.codeUnitAt(0);
        int encryptedNum = (charNum * keyA + keyB) % 26;
        String encryptedChar =
        String.fromCharCode(encryptedNum + 'A'.codeUnitAt(0));
        ciphertext += encryptedChar;
      } else {
        ciphertext += char; // Non-alphabetic characters remain unchanged
      }
    }
    return ciphertext;
  }

  String affineDecrypt(String ciphertext, int keyA, int keyB) {
    String plaintext = '';
    int modInverseA = modInverse(keyA, 26);
    for (var char in ciphertext.split('')) {
      if (RegExp(r'[A-Za-z]').hasMatch(char)) {
        // Check if the character is an alphabet
        int charNum = char.toUpperCase().codeUnitAt(0) - 'A'.codeUnitAt(0);
        int decryptedNum = (modInverseA * (charNum - keyB)) % 26;
        // Ensure the result is non-negative
        decryptedNum = (decryptedNum + 26) % 26;
        String decryptedChar =
        String.fromCharCode(decryptedNum + 'A'.codeUnitAt(0));
        plaintext += decryptedChar;
      } else {
        plaintext += char; // Non-alphabetic characters remain unchanged
      }
    }
    return plaintext;
  }


  String transpositionEncrypt(String text, int key) {
    String cipher = '';
    int numColumns = key;
    int numRows = (text.length / numColumns)
        .ceil(); // Equivalent to -(-len(text)//num_columns)
    String paddingText =
    text.padRight(numColumns * numRows); // Padding with spaces

    for (int column = 0; column < numColumns; column++) {
      for (int row = 0; row < numRows; row++) {
        int index = row * numColumns + column;
        cipher += paddingText[index];
      }
    }
    return cipher;
  }

  String transpositionDecrypt(String text, int key) {
    String cipher = '';
    int numColumns = key;
    int numRows = (text.length / numColumns)
        .ceil(); // Equivalent to -(-len(text)//num_columns)

    for (int row = 0; row < numRows; row++) {
      for (int column = 0; column < numColumns; column++) {
        int index = column * numRows + row;
        if (index < text.length) {
          // Check if the index is within bounds
          cipher += text[index];
        }
      }
    }
    return cipher;
  }
}
