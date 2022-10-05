part of 'pages.dart';

class HomePage extends StatefulWidget {
  static final nameRoute = '/HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PlatformWidget(androidBuilder: _buildAndroid, iosBuilder: _buildIos);
  }
}

Widget _buildAndroid(BuildContext context) {
  double listItemWidth = MediaQuery.of(context).size.width - 2 * defaultMargin;
  return Scaffold(
    appBar: AppBar(
        title: Text(
      "Futball Apps",
    )),
    body: _CardWidget(listItemWidth: listItemWidth),
  );
}

Widget _buildIos(BuildContext context) {
  double listItemWidth = MediaQuery.of(context).size.width - 2 * defaultMargin;
  return CupertinoPageScaffold(
    navigationBar: const CupertinoNavigationBar(
      middle: const Text("Futball Apps"),
      transitionBetweenRoutes: false,
    ),
    child: _CardWidget(listItemWidth: listItemWidth),
  );
}

class _CardWidget extends StatelessWidget {
  const _CardWidget({
    Key? key,
    required this.listItemWidth,
  }) : super(key: key);

  final double listItemWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mockFixtures.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, DetailMatch.nameRoute,
                arguments: mockFixtures[index]);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: backGround1,
              ),
              child: MatchCard(
                  itemWidth: listItemWidth, fixture: mockFixtures[index]),
            ),
          ),
        );
      },
    );
  }
}
