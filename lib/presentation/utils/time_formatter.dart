import 'package:intl/intl.dart';

String formatDateTimeIntoTime(DateTime dateTime) {
  return DateFormat('HH:mm').format(dateTime);
}

String formatDateTimeIntoDayDate(DateTime dateTime) {
  return DateFormat('E. d. MMM').format(dateTime);
}

String getTimeDifference(DateTime start, DateTime end) {
  Duration difference = end.difference(start);
  return [
    difference.inHours.toString().padLeft(2, '0'),
    (difference.inMinutes % 60).toString().padLeft(2, '0'),
    (difference.inSeconds % 60).toString().padLeft(2, '0')
  ].join(':');
}
