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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("assets/icons/${fixture.logoHome}"),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("assets/icons/${fixture.logoAway}"),
              )
            ],
          ),
        ),
        Column(
          children: [
            SizedBox(
                width: 120,
                child: Text(
                  fixture.homeTeam,
                  style: Theme.of(context).textTheme.subtitle1,
                )),
            SizedBox(
                width: 120,
                child: Text(
                  fixture.awayTeam,
                  style: Theme.of(context).textTheme.subtitle1,
                ))
          ],
        ),
        Column(
          children: [
            Text(
              fixture.scoreHome,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              fixture.scoreAway,
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 8,
            ),
            _FavoriteButton()
          ],
        )
      ],
    );
  }
}

class _FavoriteButton extends StatefulWidget {
  const _FavoriteButton({Key? key}) : super(key: key);

  @override
  State<_FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<_FavoriteButton> {
  bool isFave = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFave = !isFave;
          });
        },
        icon: Icon(
          isFave ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }
}
