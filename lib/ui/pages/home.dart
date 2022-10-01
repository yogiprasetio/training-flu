part of 'pages.dart';

class HomePage extends StatefulWidget {
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
        title: const Text("Futball Apps"),
      ),
      body: ListView.builder(
        itemCount: mockFixtures.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailMatch(
                            match: mockFixtures[index],
                          )));
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