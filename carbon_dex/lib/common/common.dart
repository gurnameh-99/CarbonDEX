import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const warmdLightBlue = Color(0xFFDFF3FE);
const warmdBlue = Color(0xFF00AAF2);
const warmdDarkBlue = Color(0xFF123079);

const warmdRed = Color(0xFFFF757D);

const warmdGreen = Color(0xFF7CCE17);

class Gaps {
  static const Widget h4 = SizedBox(height: 4);
  static const Widget h8 = SizedBox(height: 8);
  static const Widget h12 = SizedBox(height: 12);
  static const Widget h16 = SizedBox(height: 16);
  static const Widget h24 = SizedBox(height: 24);
  static const Widget h32 = SizedBox(height: 32);
  static const Widget h48 = SizedBox(height: 48);
  static const Widget h64 = SizedBox(height: 64);
  static const Widget h92 = SizedBox(height: 92);
  static const Widget h128 = SizedBox(height: 128);
  static const Widget w4 = SizedBox(width: 4);
  static const Widget w8 = SizedBox(width: 8);
  static const Widget w12 = SizedBox(width: 12);
  static const Widget w16 = SizedBox(width: 16);
  static const Widget w24 = SizedBox(width: 24);
  static const Widget w32 = SizedBox(width: 32);
  static const Widget w48 = SizedBox(width: 48);
  static const Widget w64 = SizedBox(width: 64);
  static const Widget w92 = SizedBox(width: 92);
  static const Widget w128 = SizedBox(width: 128);
}

extension ListExtension<E> on List<E> {
  Iterable<T> mapIndexed<T>(T Function(int idx, E element) f) => asMap()
      .map(
        (idx, element) => MapEntry(
          idx,
          f(idx, element),
        ),
      )
      .values;
}

Widget buildBackButton(BuildContext context) {
  // TODO: find a better way than a Row to left-align the back button
  return Row(
    children: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: Text(
          AppLocalizations.of(context).back,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(color: warmdDarkBlue, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}
