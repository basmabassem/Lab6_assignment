import 'package:flutter/material.dart';

void main() {
  runApp(basketball_points_counter());
}

class basketball_points_counter extends StatefulWidget {

  @override
  State<basketball_points_counter> createState() => _basketball_points_counterState();
}

class _basketball_points_counterState extends State<basketball_points_counter> {
  //const basketball_points_counter({Key? key}) : super(key: key);
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('Basketball Score Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 450,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'TEAM A',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          '$teamApoints',
                          style: TextStyle(fontSize: 120),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamApoints++;
                              });
                            },
                            child: Text(
                              '+1 POINT',
                              style: TextStyle(fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple,
                                onPrimary: Colors.white,
                                minimumSize: Size(140, 40))),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamApoints+=2;
                              });
                            },
                            child: Text(
                              '+2 POINT',
                              style: TextStyle(fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple,
                                onPrimary: Colors.white,
                                minimumSize: Size(140, 40))),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamApoints+=3;
                              });
                            },
                            child: Text(
                              '+3 POINT',
                              style: TextStyle(fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple,
                                onPrimary: Colors.white,
                                minimumSize: Size(140, 40))),
                      ],
                    ),
                  ),
                  Container(
                    height: 450,
                    child: VerticalDivider(
                      thickness: 3,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Container(
                    height: 450,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'TEAM B',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          '$teamBpoints',
                          style: TextStyle(fontSize: 120),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBpoints++;
                              });
                            },
                            child: Text(
                              '+1 POINT',
                              style: TextStyle(fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple,
                                onPrimary: Colors.white,
                                minimumSize: Size(140, 40))),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBpoints+=2;
                              });
                            },
                            child: Text(
                              '+2 POINT',
                              style: TextStyle(fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple,
                                onPrimary: Colors.white,
                                minimumSize: Size(140, 40))),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBpoints+=3;
                              });
                            },
                            child: Text(
                              '+3 POINT',
                              style: TextStyle(fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple,
                                onPrimary: Colors.white,
                                minimumSize: Size(140, 40))),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamApoints=0;
                      teamBpoints=0;
                    });
                  },
                  child: Text(
                    'RESET',
                    style: TextStyle(fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey[400],
                      onPrimary: Colors.black,
                      minimumSize: Size(140, 40))),
            ],
          )),
    );
  }
}


