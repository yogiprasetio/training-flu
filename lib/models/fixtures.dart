part of 'models.dart';

class Fixtures {
  final String homeTeam;
  final String awayTeam;
  final String scoreHome;
  final String scoreAway;
  final String logoHome;
  final String logoAway;
  final String gamePLan;
  Fixtures(
      {required this.homeTeam,
      required this.awayTeam,
      required this.scoreHome,
      required this.scoreAway,
      required this.logoAway,
      required this.logoHome,
      required this.gamePLan});
}

List<Fixtures> mockFixtures = [
  Fixtures(
      homeTeam: "Man. United",
      awayTeam: "Man. City",
      scoreHome: "2",
      scoreAway: '0',
      logoAway: "ManCity.png",
      logoHome: "ManUtd.png",
      gamePLan: "MuVScity.png"),
  Fixtures(
      homeTeam: "Chelsea F.C",
      awayTeam: "Brighton Hove",
      scoreHome: "0",
      scoreAway: "0",
      logoAway: "brighton.png",
      logoHome: "chelsea.png",
      gamePLan: "chelseVScrystall.jpg"),
  Fixtures(
      homeTeam: "Arsenal F.C",
      awayTeam: "Tottenham H",
      scoreHome: "3",
      scoreAway: "5",
      logoAway: "totenham.png",
      logoHome: "arsenal.png",
      gamePLan: "arsenalVSTotenham.jpg"),
  Fixtures(
      homeTeam: "Crystal P",
      awayTeam: "Liverpool",
      scoreHome: "2",
      scoreAway: "4",
      logoAway: "Liverpool.jpg",
      logoHome: "crystal_pallace.png",
      gamePLan: "liverpool vs crystall.jpg")
];
