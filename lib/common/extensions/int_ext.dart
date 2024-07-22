import 'package:intl/intl.dart';

extension IntExt on int? {
  String formatMoney() {
    return NumberFormat('###,###,###').format(this ?? 0);
  }
}