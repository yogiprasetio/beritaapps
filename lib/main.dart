import 'package:flutter/material.dart';
import 'package:online_class/data/models/models.dart';
import 'package:online_class/ui/pages.dart';

import 'common/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: Theme.of(context)
                .colorScheme
                .copyWith(primary: primaryColor, secondary: secondaryColor),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: Colors.white,
            textTheme: myTextTheme,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    primary: secondaryColor,
                    onPrimary: Colors.amber,
                    textStyle: const TextStyle(),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)))))),
        initialRoute: ArticlePage.routeName,
        routes: {
          ArticlePage.routeName: (context) => const ArticlePage(),
          DetailArticlePage.routeName: (context) => DetailArticlePage(
              article: ModalRoute.of(context)?.settings.arguments as Articles),
          MoreNewsScreen.routeName: (context) => MoreNewsScreen(
              url: ModalRoute.of(context)?.settings.arguments as String),
        }
        );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextStyle hello = GoogleFonts.poppins(
    //     color: Colors.redAccent, fontSize: 26, fontWeight: FontWeight.w800);
    return Scaffold(
      appBar: AppBar(title: const Text("Online Class")),
      body: const Center(
        child: Text(
          "Hello World... !",
          style: TextStyle(
              color: Colors.redAccent,
              fontSize: 26,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}

class MySecondPage extends StatefulWidget {
  const MySecondPage({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  late double size = 26;
  late Color color = Colors.lightBlue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              widget.text,
              style: TextStyle(
                  color: color, fontSize: size, fontWeight: FontWeight.w800),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        size = size + 1;
                      });
                    },
                    // child: const Text("Bigger +1")
                  ),
                  IconButton(
                    icon: const Icon(Icons.minimize),
                    onPressed: () {
                      setState(() {
                        size = size - 1;
                      });
                    },
                    // child: const Text("Bigger +1")
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          color = Colors.red;
                        });
                      },
                      child: const Text("Red")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          color = Colors.blueAccent;
                        });
                      },
                      child: const Text("Blue Accent"))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
