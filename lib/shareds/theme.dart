part of 'shareds.dart';

Color backGround1 = "292932".toColor();

///292932
Color backGround2 = "2C2C33".toColor();

///2C2C33
const Color mainColor = Color.fromRGBO(30, 185, 128, 9);
Color secondaryColor = Color.fromRGBO(4, 93, 86, 9);
Color thirdColor = Color.fromRGBO(255, 103, 89, 9);
Color fourthColor = Color.fromRGBO(255, 208, 68, 9);
final TextTheme myTextTheme = TextTheme(
  headline1: GoogleFonts.robotoCondensed(
      fontSize: 92,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      color: Colors.white),
  headline2: GoogleFonts.robotoCondensed(
      fontSize: 57,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: Colors.white),
  headline3: GoogleFonts.robotoCondensed(
      fontSize: 46, fontWeight: FontWeight.w400, color: Colors.white),
  headline4: GoogleFonts.robotoCondensed(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.white),
  headline5: GoogleFonts.robotoCondensed(
      fontSize: 23, fontWeight: FontWeight.w400, color: mainColor),
  headline6: GoogleFonts.robotoCondensed(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: Colors.white),
  subtitle1: GoogleFonts.robotoCondensed(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: thirdColor),
  subtitle2: GoogleFonts.robotoCondensed(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: fourthColor),
  bodyText1: GoogleFonts.eczar(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: thirdColor),
  bodyText2: GoogleFonts.eczar(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: fourthColor),
  button: GoogleFonts.eczar(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: Colors.white),
  caption: GoogleFonts.eczar(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.white),
  overline: GoogleFonts.eczar(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: Colors.white),
);
const double defaultMargin = 30;
const double secondMargin = 8.0;
const double containerRange = 80;
