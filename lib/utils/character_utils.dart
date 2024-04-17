abstract class CharacterUtil {
  static ParserEngine _parserEngine = VietnameseParserEngine();

  static void setParseEngine(ParserEngine parserEngine) {
    _parserEngine = parserEngine;
  }

  static String parse(String text) {
    return _parserEngine.unsigned(text).trim();
  }

  static bool evaluateStringDiffer(String str1, String str2) {
    // If the lengths of the strings differ by more than 5, return false
    if ((str1.length - str2.length).abs() > 5) {
      return false;
    }

    int diffCount = 0;
    int minLength = str1.length < str2.length ? str1.length : str2.length;

    // Iterate through each character and count the differences
    for (int i = 0; i < minLength; i++) {
      if (str1[i] != str2[i]) {
        diffCount++;
        if (diffCount > 5) {
          return false;
        }
      }
    }

    // If the length of the strings is different, consider the remaining characters as differences
    diffCount += (str1.length - minLength) + (str2.length - minLength);

    // Return true if the number of differences is not more than 5
    return diffCount <= 5;
  }
}

class VietnameseParserEngine implements ParserEngine {
  final _vietnamese = 'aAeEoOuUiIdDyY';
  final _vietnameseRegex = <RegExp>[
    RegExp(r'[àáạảãâầấậẩẫăằắặẳẵ]'),
    RegExp(r'[ÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴ]'),
    RegExp(r'[èéẹẻẽêềếệểễ]'),
    RegExp(r'[ÈÉẸẺẼÊỀẾỆỂỄ]'),
    RegExp(r'[òóọỏõôồốộổỗơờớợởỡ]'),
    RegExp(r'[ÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠ]'),
    RegExp(r'[ùúụủũưừứựửữ]'),
    RegExp(r'[ÙÚỤỦŨƯỪỨỰỬỮ]'),
    RegExp(r'[ìíịỉĩ]'),
    RegExp(r'[ÌÍỊỈĨ]'),
    RegExp(r'đ'),
    RegExp(r'Đ'),
    RegExp(r'[ỳýỵỷỹ]'),
    RegExp(r'[ỲÝỴỶỸ]')
  ];

  @override
  String unsigned(final String text) {
    var result = text;
    for (var i = 0; i < _vietnamese.length; ++i) {
      result = result.replaceAll(_vietnameseRegex[i], _vietnamese[i]);
    }
    return result;
  }
}

abstract class ParserEngine {
  String unsigned(final String text);
}
