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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: Column(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/${fixture.logoHome}"))),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/${fixture.logoAway}"))),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fixture.scoreHome,
                // history.ambilDari,
                overflow: TextOverflow.clip,
                style: redFontStyle4,
              ),
              Text(
                fixture.scoreAway,
                // history.kirimKe,
                overflow: TextOverflow.clip,
                style: redFontStyle4,
              ),
            ],
          ),
        ),
        SizedBox(
          width: itemWidth - 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Live",
                overflow: TextOverflow.clip,
                style: redFontStyle4,
              ),
              const Icon(Icons.hearing_rounded),
            ],
          ),
        )
      ],
    );
  }
}
