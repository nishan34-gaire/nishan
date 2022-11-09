import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'nishan',
    home: app(),
  ));
}

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

List<String> item = [
  'hari',
  'shyam',
  'hari',
  'shyam',
  'hari',
  'shyam',
  'hari',
  'shyam',
  'hari',
  'shyam',
  'hari',
  'shyam',
];
int counter = 1;
int shapeValue = 1;

showwidget<Widget>() {
  if (shapeValue == 1) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.amber,
      ),
    );
  } else if (shapeValue == 2) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.amber,
      ),
    );
  } else if (shapeValue == 3) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.amber,
      ),
    );
  }
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: (BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          width: 3,
                        ))),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('asset/king.png'),
                      radius: 40,
                    )),
                Container(
                    decoration: (BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          width: 3,
                        ))),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('asset/king.png'),
                      radius: 40,
                    )),
              ],
            ),
            Container(
              color: Colors.amber,
              height: 200,
              child: Stack(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: ListWheelScrollView(
                      physics: const FixedExtentScrollPhysics(),
                      itemExtent: 200,
                      onSelectedItemChanged: (value) {
                        Future.delayed(
                          const Duration(milliseconds: 500),
                          () {
                            setState(() {
                              counter = value;
                            });
                          },
                        );
                      },

                      // diameterRatio: 1.6,
                      // offAxisFraction: -0.4,
                      // squeeze: 0.8,

                      // DEPRECATED : clipToSize does not exist anymore.
                      // USe clipBehaviour instead.

                      // clipToSize: true,

                      clipBehavior: Clip.antiAlias,
                      children: <Widget>[
                        RotatedBox(
                          quarterTurns: -1,
                          child: Container(
                              width: 200,
                              decoration: (BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                    width: 3,
                                  ))),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('asset/king.png'),
                                radius: 100,
                              )),
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Container(
                              width: 200,
                              decoration: (BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                    width: 3,
                                  ))),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('asset/king.png'),
                                radius: 100,
                              )),
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Container(
                              width: 200,
                              decoration: (BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                    width: 3,
                                  ))),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('asset/king.png'),
                                radius: 100,
                              )),
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Container(
                              width: 200,
                              decoration: (BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                    width: 3,
                                  ))),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('asset/king.png'),
                                radius: 100,
                              )),
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Container(
                              width: 200,
                              decoration: (BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                    width: 3,
                                  ))),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('asset/king.png'),
                                radius: 100,
                              )),
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Container(
                              width: 200,
                              decoration: (BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                    width: 3,
                                  ))),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('asset/king.png'),
                                radius: 100,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        item[counter],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  shapeValue = 1;
                });
              },
              child: const Text(
                'Item 1',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  shapeValue = 2;
                });
              },
              child: const Text(
                'Item 2',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  shapeValue = 3;
                });
              },
              child: const Text(
                'Item 3',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: showwidget(),
            )
          ],
        ),
      ),
    );
  }
}

class nishan extends StatelessWidget {
  const nishan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('page2'),
      ),
      body: Column(
        children: [
          const Center(child: Text('welcome')),
          ElevatedButton(
            child: const Text('return'),
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
          )
        ],
      ),
    );
  }
}
