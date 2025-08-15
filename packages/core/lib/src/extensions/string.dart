// 📦 Package imports:
import 'package:intl/intl.dart';

extension StringX on String {
  String get capitalizedSentences {
    // Split the string into sentences, removing extra spaces.
    final sentences = split(RegExp(r'(?<=[.!?])\s+(?=[a-z])'))
        .map((sentence) => sentence.trim())
        .toList();

    // Capitalize the first letter of each sentence.
    final capitalizedSentences = sentences
        .map((sentence) => sentence.isNotEmpty
            ? sentence[0].toUpperCase() + sentence.substring(1)
            : sentence)
        .join('. ');

    return capitalizedSentences;
  }

  String get capitalizeEachWord {
    return split(' ').map((word) {
      if (word.isNotEmpty) {
        if (RegExp(r'^[a-zA-Z]').hasMatch(word)) {
          // Capitalize the first character if the word starts with a letter
          return word[0].toUpperCase() + word.substring(1).toLowerCase();
        } else if (word.length > 1 && RegExp(r'[a-zA-Z]').hasMatch(word[1])) {
          // Capitalize the letter after punctuation (e.g., '(')
          return word[0] +
              word[1].toUpperCase() +
              word.substring(2).toLowerCase();
        }
      }
      return word;
    }).join(' ');
  }

  String get removeRepeatedStringInGetFile {
    String searchString = "public/user";
    String replacement =
        ""; // You can replace it with the desired replacement if needed

    // Find the index of the first occurrence of the substring
    int firstIndex = indexOf(searchString);

    // If the first occurrence is found, find the index of the second occurrence
    if (firstIndex != -1) {
      int secondIndex = indexOf(searchString, firstIndex + 1);

      // If the second occurrence is found, replace it
      if (secondIndex != -1) {
        String modifiedString =
            replaceFirst(searchString, replacement, secondIndex);
        return modifiedString;
      } else {
        return this;
      }
    } else {
      // Handle the case when the first occurrence is not found
      return this;
    }
  }

  String catchTime() {
    DateTime dateTime = DateTime.parse(toString()).toLocal();
    String formattedDate = DateFormat('MMM d, HH:mm').format(dateTime);
    return formattedDate;
  }

  bool isAppVersionLowerThanApi(String apiVersion) {
    // Split the version strings into components (major, minor, patch)
    final appComponents = split('.');
    final apiComponents = apiVersion.split('.');

    // Iterate through each component, comparing them one by one
    for (int i = 0; i < appComponents.length && i < apiComponents.length; i++) {
      final appValue = int.parse(appComponents[i]);
      final apiValue = int.parse(apiComponents[i]);

      // If API version component is greater, app is lower version
      if (apiValue > appValue) {
        return true;
      } else if (apiValue < appValue) {
        // If app version component is greater, app is not lower version
        return false;
      }
    }

    // If all components match, the versions are equal (not lower)
    return false;
  }

  bool isAppBuildLowerThanApi(String apiBuild) {
    if (int.parse(this) < int.parse(apiBuild)) {
      return true;
    } else {
      return false;
    }
  }

  bool get isWhiteSpace => trim().isEmpty;

  /// Trims leading and trailing spaces and removes extra spaces between words.
  String get normalizeSpaces {
    return trim().replaceAll(RegExp(r'\s+'), ' ');
  }

  String get cleanedMentionedUsername {
    return replaceAll(RegExp(r'#.*?#'), '');
  }

  /// Masks an email address, showing only the first and last character of the email.
  /// Example: `johndoe@gmail.com` → `j*****e@gmail.com`
  String get maskedEmail {
    if (!contains('@')) return this; // Return as is if it's not a valid email

    List<String> parts = split('@');
    String email = parts[0];
    String domain = parts[1];

    // Mask email while keeping the first and last character visible
    String masked = email.length > 2
        ? '${email[0]}${'*' * (email.length - 2)}${email[email.length - 1]}'
        : '${email[0]}***';

    return '$masked@$domain';
  }

  DateTime get parseCatchLogDateTime {
    // Create a DateFormat that matches the format in the getter
    final format = DateFormat.yMMMd().addPattern(DateFormat.HOUR_MINUTE, ', ');

    // Parse the string to get a DateTime object
    // Note: This will parse in the current timezone context,
    // maintaining the original timezone handling from your comment
    return format.parse(this);
  }
}
