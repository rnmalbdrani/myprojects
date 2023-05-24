import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:welcome/models/draggable_item.dart';

class photos extends StatefulWidget {
  const photos({super.key});

  @override
  State<photos> createState() => _photosState();
}

class _photosState extends State<photos> {
  int acceptedData = 0;
  AudioPlayer player = AudioPlayer();
  AudioCache audioCache = AudioCache();
  List<DraggableItem> data = [
    DraggableItem(image: 'assets/pic0.png', audio: 'siblings.mp3'),
    DraggableItem(image: 'assets/pic1.png', audio: 'dad.mp3'),
    DraggableItem(image: 'assets/pic2.png', audio: 'mum.mp3'),
    DraggableItem(image: 'assets/pic3.png', audio: 'me.mp3'),
    DraggableItem(image: 'assets/pic4.png', audio: 'audio4.mp3'),
    DraggableItem(image: 'assets/pic5.png', audio: 'audio5.mp3'),
    DraggableItem(image: 'assets/pic6.png', audio: 'audio6.mp3'),
    DraggableItem(image: 'assets/pic7.png', audio: 'you.mp3'),
    DraggableItem(image: 'assets/pic8.png', audio: 'school.mp3'),
    DraggableItem(image: 'assets/pic9.png', audio: 'now.mp3'),
    DraggableItem(image: 'assets/pic10.png', audio: 'here.mp3'),
    DraggableItem(image: 'assets/pic11.png', audio: 'watch.mp3'),
    DraggableItem(image: 'assets/pic12.png', audio: 'audio12.mp3'),
    DraggableItem(image: 'assets/pic13.png', audio: 'sleep.mp3'),
    DraggableItem(image: 'assets/pic14.png', audio: 'drink.mp3'),
    DraggableItem(image: 'assets/pic15.png', audio: 'food.mp3'),
    DraggableItem(image: 'assets/pic16.png', audio: 'read.mp3'),
    DraggableItem(image: 'assets/pic17.png', audio: 'cold.mp3'),
    DraggableItem(image: 'assets/pic18.png', audio: 'hot.mp3'),
    DraggableItem(image: 'assets/pic19.png', audio: 'no.mp3'),
    DraggableItem(image: 'assets/pic20.png', audio: 'a.mp3'),
    DraggableItem(image: 'assets/pic21.png', audio: 'audio21.mp3'),
    DraggableItem(image: 'assets/ela.jpg', audio: 'ela.mp3'),
    DraggableItem(image: 'assets/pic23.png', audio: 'audio23.mp3'),
  ];
  List<DraggableItem> result = [];
  int _index = 0;

  @override
  void initState() {
    super.initState();

    if (Platform.isIOS) {
      if (audioCache.fixedPlayer != null) {
        audioCache.fixedPlayer!.notificationService.startHeadlessService();
      }
    }

    player.onPlayerCompletion.listen((event) {
      _playNext();
    });
  }

  void _playNext() async {
    if (_index + 1 < result.length) {
      _index++;
      final byteData = await rootBundle.load("assets/${result[_index].audio}");
      final assetAudio = byteData.buffer.asUint8List();
      player.playBytes(assetAudio);
    }
  }

  @override
  Widget build(BuildContext context) {
    //var child;

    return Scaffold(
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: GridView.builder(
                itemCount: data.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 2.0),
                itemBuilder: (BuildContext context, int index) {
                  return Draggable<DraggableItem>(
                    data: data[index],
                    feedback: Container(
                      color: Colors.white,
                      //height: 59.0,
                      width: 78.0,
                      alignment: const Alignment(-1.0, 1.0),
                      child: Image.asset(data[index].image),
                    ),
                    onDragStarted: () {
                      audioCache.play(data[index].audio);
                    },
                    childWhenDragging: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.white,
                      //: const Alignment(179, 85),
                    ),
                    child: Container(
                      color: Colors.white,
                      //height: 59.0,
                      width: 78.0,
                      // alignment: const Alignment(-1.0, 1.0),
                      child: Image.asset(data[index].image),
                    ),
                  );
                },
              ),
            ),
            Expanded(
                flex: 0,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: ListView.builder(
                            reverse: true,
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return DragTarget<DraggableItem>(
                                builder: (
                                  BuildContext context,
                                  List<dynamic> accepted,
                                  List<dynamic> rejected,
                                ) {
                                  return Container(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    //height: 59.0,
                                    width: 78.0,
                                    // alignment: const Alignment(-1.0, 1.0),
                                    child: result.isNotEmpty &&
                                            result.length > index
                                        ? Image.asset(result[index].image)
                                        : const Text(""),
                                  );
                                },
                                onAccept: (DraggableItem item) {
                                  if (result.length == 5) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text("مسموح فقط بخمسة عناصر")));
                                  } else {
                                    setState(() {
                                      data.remove(item);
                                      result.add(item);
                                    });
                                  }
                                },
                              );
                            }),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: SizedBox(
                        height: 100,
                        width: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                  iconSize: 20,
                                  icon: const Icon(
                                    Icons.play_arrow,
                                    color: Color.fromRGBO(120, 108, 249, 1),
                                  ),
                                  onPressed: (() async {
                                    if (result.isNotEmpty) {
                                      _index = 0;
                                      final byteData = await rootBundle.load(
                                          "assets/${result[_index].audio}");
                                      final assetAudio =
                                          byteData.buffer.asUint8List();
                                      player.playBytes(assetAudio);
                                    }
                                  })),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Divider(
                                color: Color.fromRGBO(120, 108, 249, 1),
                                thickness: 2.0,
                                height: 5,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                  iconSize: 20,
                                  icon: const Icon(
                                    Icons.close,
                                    color: Color.fromRGBO(120, 108, 249, 1),
                                  ),
                                  onPressed: (() {
                                    if (result.isNotEmpty) {
                                      setState(() {
                                        for (DraggableItem item in result) {
                                          data.add(item);
                                        }
                                        result.clear();
                                      });
                                    }
                                  })),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ]),
    );
  }
}
