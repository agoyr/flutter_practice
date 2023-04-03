import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'test_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _flag = false;

  void _incrementCounter() async {
    setState(() {
      _counter++;
      _flag=!_flag;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '地獄へようこそ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
              onPressed: _decrementCounter,   
              child: const Text(
                'substract'
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.abc,
                  color: Colors.pink,
                  size: 101,
                ),
                Icon(
                  Icons.radar_sharp,
                  color: Color.fromARGB(255,0,0,0),
                  size: 101,
                ),
                Icon(
                  Icons.kebab_dining,
                  color: Colors.amber,
                  size: 100,
                ),
                Icon(FontAwesomeIcons.gift, color:Colors.teal)
              
              ],
            ),
            if(_counter >=3) const Text('3以上'),
            AnimatedOpacity(
                opacity: _flag ? 0.1 : 1.0,
                duration: const Duration(seconds: 3),
                child: Text(
                  "消える文字",
                  style: Theme.of(context).textTheme.headline4,
                )),
            AnimatedSize(
                duration: const Duration(seconds: 3),
                child: Container(
                    width: _flag ? 50 : 200,
                    height: _flag ? 50 : 200,
                    color: Colors.purple,
                   // child: Container(color: Colors.purple)
                   )
            ),
            AnimatedAlign(
                duration: const Duration(seconds: 3),
                alignment: _flag ? Alignment.topLeft : Alignment.bottomRight,
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Container(color: Colors.green))),
            OutlinedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return const SecondPage();
                }));
              },
              child: const Text("SecondPage")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      drawer: const Drawer(child: Center(child: Text("Drawer"),)),
      endDrawer: const Drawer(child: Center(child: Text("EndDrawer"),),),
    );
  }
}
