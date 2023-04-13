import 'package:f/ui/select_role.dart/select_role_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SelectRolePage(),
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  static const fem = 1.0;
  static const ffem = 1.0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              // rectangle2QJE (29:12)
              left: 315 * fem,
              top: 23 * fem,
              child: Align(
                child: SizedBox(
                  width: 650 * fem,
                  height: 654 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20 * fem),
                      color: const Color(0xffffffff),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3fb3b3b3),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 10 * fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame3YHx (29:18)
              left: 588 * fem,
              top: 397 * fem,
              child: SelectorButton(fem: fem, ffem: ffem),
            ),
            Positioned(
              // frame49oY (29:29)
              left: 530 * fem,
              top: 346 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 220 * fem,
                  height: 31 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffafafaf)),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: const Center(
                    child: Text(
                      'Научный руководитель',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.1725 * ffem / fem,
                        color: Color(0xffafafaf),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              // Rm4 (29:32)
              left: 554.5 * fem,
              top: 271 * fem,
              child: Align(
                child: SizedBox(
                  width: 172 * fem,
                  height: 36 * fem,
                  child: Text(
                    'Войти как',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0000019073 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.1725 * ffem / fem,
                      color: Color(0xff121212),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
