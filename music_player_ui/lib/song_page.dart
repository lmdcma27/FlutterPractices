import 'package:flutter/material.dart';
import 'package:music_player_ui/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                //back button and menu button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NewBox(child: Icon(Icons.arrow_back)),
                    ),
                    Text('P L A Y L I S T'),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NewBox(child: Icon(Icons.menu)),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                //cover art, artist name, song name

                NewBox(
                    child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('lib/images/ForestMaze.jpeg')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Forest Maze SM RPG',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'OST',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.grey.shade700),
                              )
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          ),
                        ],
                      ),
                    )
                  ],
                )),

                SizedBox(
                  height: 25,
                ),
                //start time, shuffle button, repeat button, end time

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('0:00'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('2.35')
                  ],
                ),

                SizedBox(
                  height: 25,
                ),
                //linear progress bar
                NewBox(
                    child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.6,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                )),

                const SizedBox(
                  height: 25,
                ),
                //previous song, pause play, skip next song

                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                          child: NewBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      )),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: NewBox(
                              child: Icon(Icons.play_arrow, size: 32),
                            ),
                          )),
                      Expanded(
                          child: NewBox(
                        child: Icon(Icons.skip_next, size: 32),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
