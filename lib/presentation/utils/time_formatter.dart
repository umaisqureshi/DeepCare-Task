import 'package:intl/intl.dart';

String formatDateTimeIntoTime(DateTime dateTime) {
  return DateFormat('HH:mm').format(dateTime);
}

String formatDateTimeIntoDayDate(DateTime dateTime) {
  return DateFormat('E. d. MMM').format(dateTime);
}

String getTimeDifference(DateTime start, DateTime end) {
  Duration difference = end.difference(start);
  int hours = difference.inHours;
  int minutes = difference.inMinutes % 60;
  int seconds = difference.inSeconds % 60;

  String formattedHours = hours.toString().padLeft(2, '0');
  String formattedMinutes = minutes.toString().padLeft(2, '0');
  String formattedSeconds = seconds.toString().padLeft(2, '0');

  return '$formattedHours:$formattedMinutes:${formattedSeconds}s';
}
