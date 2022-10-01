part of 'widgets.dart';

class MatchCard extends StatelessWidget {
  // late final History history;
  late final Fixtures fixture;
  late final double itemWidth;

  MatchCard({required this.itemWidth, required this.fixture});

  @override
  Widget build(BuildContext context) {
    // if(muatan.info==)
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/${fixture.logoHome}"),
                    Image.asset("assets/icons/${fixture.logoAway}")
                  ],
                ),
                Column(
                  children: [
                    Text(fixture.homeTeam, style: blackFontStyle5,),
                    Text(fixture.awayTeam, style: blackFontStyle5,)
                  ],
                ),
                Column(
                  children: [
                    Text(fixture.scoreHome, style: blackFontStyle5,),
                    Text(fixture.scoreAway, style: blackFontStyle5,)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 15,),
                    const Icon(Icons.favorite_outline)
                  ],
                )
              ],
            );
  }
}
