part of 'pages.dart';

class DetailMatch extends StatelessWidget {
  final Fixtures match;

  DetailMatch({required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${match.homeTeam} VS ${match.awayTeam}"),backgroundColor: Colors.red),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/icons/${match.logoHome}"))),
                    ),
                    Text(match.homeTeam)
                  ],
                ),
                const Text(" VS "),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/icons/${match.logoAway}"))),
                    ),
                    Text(match.homeTeam)
                  ],
                )
              ],
            ),
            Container(
              width: 200,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icons/${match.gamePLan}"),
                      fit: BoxFit.fill)),
            )
          ],
        ),
    );
  }
}
