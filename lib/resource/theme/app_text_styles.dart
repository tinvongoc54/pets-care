import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double _verySmall = 8;
const double _bitSmall = 10;
const double _small = 12;
const double _medium = 14;
const double _semiLarge = 16;
const double _large = 18;
const double _mediumLarge = 20;
const double _veryLarge = 24;
const double _superLarge = 32;
const Color _white = Colors.white;
const Color _black = Colors.black;
const FontWeight _normal = FontWeight.w300;
const FontWeight _bold = FontWeight.w600;

TextStyle verySmallStyle({Color color = Colors.black, FontWeight fontWeight = _normal}) {
  return GoogleFonts.fredoka(
    fontSize: _verySmall,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle bitSmallStyle({Color color = Colors.black, FontWeight fontWeight = _normal}) {
  return GoogleFonts.fredoka(
    fontSize: _bitSmall,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle smallStyle({Color color = Colors.black, FontWeight fontWeight = _normal}) {
  return GoogleFonts.fredoka(
    fontSize: _small,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle mediumStyle({Color color = Colors.black, FontWeight fontWeight = _normal}) {
  return GoogleFonts.fredoka(
    fontSize: _medium,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle semiLargeStyle({Color color = Colors.black, FontWeight fontWeight = _normal}) {
  return GoogleFonts.fredoka(
    fontSize: _semiLarge,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle mediumLargeStyle({Color color = Colors.black, FontWeight fontWeight = _normal}) {
  return GoogleFonts.fredoka(
    fontSize: _mediumLarge,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle veryLargeStyle({Color color = Colors.black, FontWeight fontWeight = _normal}) {
  return GoogleFonts.fredoka(
    fontSize: _veryLarge,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle superLargeStyle({Color color = Colors.black, FontWeight fontWeight = _normal}) {
  return GoogleFonts.fredoka(
    fontSize: _superLarge,
    color: color,
    fontWeight: fontWeight,
  );
}
