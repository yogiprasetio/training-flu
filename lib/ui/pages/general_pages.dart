part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  late String title;
  late Function? onBackButtonPressed;
  late Widget child;
  late Color? backColor;

  GeneralPage(
      {required this.title,
      this.onBackButtonPressed,
      required this.child,
      this.backColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(color: mainColor),
        SafeArea(
            child: (backColor == null)
                ? Container(
                    color: Colors.white,
                  )
                : Container(
                    color: backColor,
                  )),
        SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultMargin),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            stops: const [
                          0.1,
                          0.9
                        ],
                            colors: [
                          mainColor.withOpacity(.8),
                          secondaryColor.withOpacity(.1)
                        ])),
                    child: Row(
                      children: [
                        onBackButtonPressed != null
                            ? GestureDetector(
                                onTap: () {
                                  if (onBackButtonPressed != null) {
                                    onBackButtonPressed!();
                                  }
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  margin: const EdgeInsets.only(right: 26),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/back_arrow.png'))),
                                ),
                              )
                            : const SizedBox(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              title,
                              style: blackFontStyle5,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: defaultMargin,
                    width: double.infinity,
                    color: secondaryColor.withOpacity(.09),
                  ),
                  child
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
