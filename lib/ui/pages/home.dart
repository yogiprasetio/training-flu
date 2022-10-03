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
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return Scaffold(
      appBar: AppBar(
          title: const Text("Futball Apps"), backgroundColor: Colors.red),
      body: ListView.builder(
        itemCount: mockFixtures.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, DetailMatch.nameRoute,
                  arguments: mockFixtures[index]);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MatchCard(
                  itemWidth: listItemWidth, fixture: mockFixtures[index]),
            ),
          );
        },
      ),
    );
  }
}
