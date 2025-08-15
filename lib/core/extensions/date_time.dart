// 📦 Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get fullDateTime {
    return DateFormat('dd MMM, h:mm a').format(toLocal());
  }

  String get catchLogDateTime {
    // !Important date is not to be converted to local since we had a bug where the details date was already being saved in local format rather than UTC format. So avoid using toLocal on date for catch details.
    return DateFormat.yMMMd()
        .addPattern(DateFormat.HOUR_MINUTE, ', ')
        .format(this);
  }
}

class TimestampConverter implements JsonConverter<DateTime?, dynamic> {
  const TimestampConverter();

  @override
  DateTime? fromJson(dynamic timestamp) {
    if (timestamp is Timestamp) {
      return timestamp.toDate();
    } else if (timestamp == null) {
      return null;
    }
    return null;
  }

  @override
  dynamic toJson(DateTime? date) {
    if (date == null) {
      return null;
    }
    return Timestamp.fromDate(date);
  }
}
