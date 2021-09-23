import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piano',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(children: [
            Row(
              children: [
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.deepPurple,
                    char: 'C',
                    node: 'DO',
                    num: '1',
                    onTap: (){
                      setState(() {
                        id=1;
                      });
                       AudioCache().play('do.mp3');
                    }),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.indigo,
                    char: 'D',
                    node: 'RE',
                    num: '2',
                    onTap: (){
                      setState(() {
                        id=2;
                      });
                        AudioCache().play('re.wav');
                    }),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.blue,
                    char: 'E',
                    node: 'MI',
                    num: '3',
                    onTap: (){
                      setState(() {
                        id=3;
                      });
                      AudioCache().play('mi.wav') ;
                    }),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.teal,
                    char: 'F',
                    node: 'FA',
                    num: '4',
                    onTap: (){
                      setState(() {
                        id=4;
                      });
                      AudioCache().play('fa.wav') ;
                    }
                ),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.green,
                    char: 'G',
                    node: 'SOL',
                    num: '5',
                    onTap: (){
                      setState(() {
                        id=5;
                      });
                      AudioCache().play('sol.wav');
                    }),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.greenAccent,
                    char: 'A',
                    node: 'LA',
                    num: '6',
                    onTap: (){
                      setState(() {
                        id=6;
                      });
                      AudioCache().play('la.wav');
                    }),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.amber,
                    char: 'B',
                    node: 'SI',
                    num: '7',
                    onTap: (){
                      setState(() {
                        id=7;
                      });
                      AudioCache().play('si.wav') ;
                    }),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.deepOrange,
                    char: 'C',
                    node: 'DO',
                    num: '8',
                    onTap: (){
                      setState(() {
                        id=8;
                      });
                      AudioCache().play('do2.wav');
                    }),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.brown,
                    char: 'D',
                    node: 'RE',
                    num: '9',
                    onTap: (){
                      setState(() {
                        id=9;
                      });
                      AudioCache().play('piano3.wav') ;
                    }),
                buildContainer(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth * 0.1,
                    color: Colors.pink,
                    char: 'E',
                    node: 'MI',
                    num: '10',
                    onTap: (){
                      setState(() {
                        id=10;
                      });
                      AudioCache().play('piano4.wav');
                    }),
              ],
            ),
            Positioned(
                left: sizeWidth * 0.075,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.deepPurple.shade900,
                    num: 'C#',
                    node: 'DO#',
                    char: '1#',
                    idNum: 11,
                    onTap: (){
                      setState(() {
                        id=11;
                      });
                      AudioCache().play('piano1.wav') ;
                    })),
            Positioned(
                left: sizeWidth * 0.175,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.indigo.shade900,
                    num: 'D#',
                    node: 'RE#',
                    char: '2#',
                    idNum: 12,
                    onTap: (){
                      setState(() {
                        id=12;
                      });
                      AudioCache().play('piano2.wav') ;
                    })),
            Positioned(
                left: sizeWidth * 0.375,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.teal.shade900,
                    num: 'F#',
                    node: 'FA#',
                    char: '4#',
                    idNum: 13,
                    onTap: (){
                      setState(() {
                        id=13;
                      });
                      AudioCache().play('piano5.wav');
                    })),
            Positioned(
                right: sizeWidth * 0.475,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.green.shade900,
                    num: 'G#',
                    node: 'SOL#',
                    char: '5#',
                    idNum: 14,
                    onTap: (){
                      setState(() {
                        id=14;
                      });
                      AudioCache().play('piano6.wav');
                    })),
            Positioned(
                right: sizeWidth * 0.375,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.lightGreen.shade700,
                    num: 'A#',
                    node: 'LA#',
                    char: '6#',
                    idNum: 15,
                    onTap: (){
                      setState(() {
                        id=15;
                      });
                      AudioCache().play('piano7.wav') ;
                    })),
            Positioned(
                right: sizeWidth * 0.175,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.deepOrange.shade900,
                    num: 'C#',
                    node: 'DO#',
                    char: '8#',
                    idNum: 16,
                    onTap: (){
                      setState(() {
                        id=16;
                      });
                      AudioCache().play('piano2.wav') ;
                    })),
            Positioned(
                right:  sizeWidth * 0.075,
                width: sizeWidth * 0.05,
                height: sizeHeight * 0.48,
                child: buildSampleContainer(
                    color: Colors.pink.shade900,
                    num: 'D#',
                    node: 'RE#',
                    char: '9#',
                    idNum: 17,
                    onTap: (){
                      setState(() {
                        id=17;
                      });
                      AudioCache().play('piano1.wav');
    })),
          ]),
        ));
  }

  Widget buildSampleContainer({
    @required String char,
    @required String node,
    @required String num,
    @required Color color,
    @required int idNum,
    @required GestureTapCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.all(0.9),
      child: GestureDetector(
          onTap:(){
            setState(() {
              id=0;
            });
            onTap();
          },
        child: Container(
          decoration: BoxDecoration(
            border: Border(
                left: BorderSide(color: Colors.white, width: 2),
                bottom: BorderSide(color: Colors.white, width: 2),
                right: BorderSide(color: Colors.white, width: 2)),
            color: color,
          ),
          child: DefaultTextStyle(
            style: TextStyle(color: Colors.white, fontSize: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                idNum==id?
                Icon(Icons.star_outlined):Container(),
                Text(char),
                SizedBox(
                  height: 10,
                ),
                Text(node),
                SizedBox(
                  height: 10,
                ),
                Text(num),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  int id=0;
  Widget buildContainer({
    @required String char,
    @required String node,
    @required String num,
    double sizeHeight,
    double sizeWidth,
    @required Color color,
    @required GestureTapCallback onTap,
  }) {

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(0.8),
        child: GestureDetector(
          onTap:(){
            setState(() {
              id=0;
            });
            onTap();
          },
          child: Container(
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
                border: Border.all(color: Colors.black, width: 3)),
            child: DefaultTextStyle(
              style: TextStyle(color: Colors.white, fontSize: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  int.parse(num)==id?
                  Icon(Icons.star_outlined):Container(),
                  Text(char),
                  SizedBox(
                    height: 15,
                  ),
                  Text(node),
                  SizedBox(
                    height: 15,
                  ),
                  Text(num),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            width: sizeWidth,
            height: sizeHeight,
          ),
        ),
      ),
    );
  }
}
