import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class photos extends StatefulWidget {
  const photos({super.key});

  @override
  State<photos> createState() => _photosState();
}

class _photosState extends State<photos> {
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    //var child;

    return Wrap(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Draggable<int>(
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 59.0,
              width: 78.0,
              alignment: const Alignment(-1.0, 1.0),
              child: Image.asset('assets/pic0.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(179, 85),
            ),
            child: Container(
              height: 65.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: Center(
                child: Image.asset('assets/pic0.png'),
              ),
            ),
            onDragStarted: () {
              //   Positioned(
              //   top: 293,
              //   left: 251,
              child:
              ElevatedButton(
                onPressed: () {
                  //final player = AudioPlayer();
                  // player.play(AssetSource('images\audio0.mp3'));
                  final player = AudioCache();
                  player.play('assets/me.mp3');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0), // Set padding
                ),
                child: const Image(
                  image: AssetImage('assets/pic0.png'),
                  //  height: 90,
                  // ),
                ),
              );
            },
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 59.0,
              width: 78.0,
              alignment: const Alignment(-1.0, 1.0),
              child: Image.asset('assets/pic1.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(179, 85),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 65.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic1.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 59.0,
              width: 78.0,
              alignment: const Alignment(-1.0, 1.0),
              child: Image.asset('assets/pic2.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(96, 85),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 65.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic2.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 59.0,
              width: 79.0,
              alignment: const Alignment(-1.0, 1.0),
              child: Image.asset('assets/pic3.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(12, 85),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 65.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic3.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.

            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 59,
              width: 78,
              child: Image.asset('assets/pic4.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(263, 147),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 65.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic4.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 59,
              width: 79,
              child: Image.asset('assets/pic5.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(263, 147),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 65.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic5.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              padding: const EdgeInsets.only(
                left: 4.0,
                right: 4.0,
                top: 8.0,
              ),
              color: Colors.white,
              height: 59.0,
              width: 78.0,
              alignment: const Alignment(-1.0, 1.0),
              child: Image.asset('assets/pic6.png'),
            ),

            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(96, 147),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 65.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic6.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 59.0,
              width: 79.0,
              child: Image.asset('assets/pic7.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(12, 147),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 65.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic7.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 60.0,
              width: 78.0,
              child: Image.asset('assets/pic8.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(263, 210),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 66.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic8.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 60.0,
              width: 79.0,
              child: Image.asset('assets/pic9.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(179, 210),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 66.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic9.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 60.0,
              width: 78.0,
              child: Image.asset('assets/pic10.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(96, 210),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 66.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic10.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 60.0,
              width: 79.0,
              child: Image.asset('assets/pic11.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(12, 210),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 66.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic11.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 57.0,
              width: 78.0,
              child: Image.asset('assets/pic12.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(263, 274),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 66.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic12.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 57.0,
              width: 79.0,
              child: Image.asset('assets/pic13.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(179, 274),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 66.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic13.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 57.0,
              width: 78.0,
              child: Image.asset('assets/pic14.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(96, 274),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 66.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic14.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 57.0,
              width: 79.0,
              child: Image.asset('assets/pic15.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(12, 274),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 66.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic15.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 57.0,
              width: 78.0,
              child: Image.asset('assets/pic16.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(263, 337),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 63.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic16.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 57.0,
              width: 79.0,
              child: Image.asset('assets/pic17.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(179, 337),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 63.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic17.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 57.0,
              width: 78.0,
              child: Image.asset('assets/pic18.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(96, 337),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 63.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic18.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 57.0,
              width: 79.0,
              child: Image.asset('assets/pic19.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(12, 337),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 63.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic19.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 59.0,
              width: 78.0,
              child: Image.asset('assets/pic20.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(263, 398),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 63.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic20.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 59.0,
              width: 79.0,
              child: Image.asset('assets/pic21.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(179, 398),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 63.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic21.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 59.0,
              width: 78.0,
              child: Image.asset('assets/pic22.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(96, 398),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 63.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic22.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          Draggable<int>(
            // Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.white,
              height: 59.0,
              width: 79.0,
              child: Image.asset('assets/pic23.png'),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              alignment: const Alignment(12, 398),

              //child: const Center(
              //   child: Text('Child When Dragging'),
              // ),
            ),
            child: Container(
              height: 63.0,
              width: 100.0,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: const Alignment(-1.0, 1.0),
              child: //const
                  Center(
                child: Image.asset('assets/pic23.png'),

                //      child: Text('Draggable'),
              ),
            ),
          ),
          DragTarget<int>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return Container(
                height: 100.0,
                width: 150.0,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Center(
                  child: Text('Value is updated to: $acceptedData'),
                ),
              );
            },
            onAccept: (int data) {
              setState(() {
                acceptedData += data;
              });
            },
          )
        ]);
  }
}
