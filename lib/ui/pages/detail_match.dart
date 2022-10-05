part of 'pages.dart';

class DetailMatch extends StatelessWidget {
  static final nameRoute = '/DetailMatch';
  final Fixtures match;

  DetailMatch({required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "${match.homeTeam} VS ${match.awayTeam}",
        style: Theme.of(context).textTheme.headline6,
      )),
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
                            image:
                                AssetImage("assets/icons/${match.logoHome}"))),
                  ),
                  Text(
                    match.homeTeam,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Center(
                    child: Text(
                      match.scoreHome,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  )
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
                            image:
                                AssetImage("assets/icons/${match.logoAway}"))),
                  ),
                  Text(
                    match.awayTeam,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Center(
                    child: Text(
                      match.scoreAway,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
