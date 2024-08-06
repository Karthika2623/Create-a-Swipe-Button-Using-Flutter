import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              child: SwipeButton.expand(
                duration: const Duration(milliseconds: 200),
                thumb: const Icon(
                  Icons.double_arrow_rounded,
                  color: Colors.white,
                ),
                activeThumbColor: Colors.greenAccent,
                activeTrackColor: Colors.grey.shade300,
                onSwipe: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Swipped"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                child: const Text(
                  "Swipe to ...",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              child: SwipeButton(
                trackPadding: const EdgeInsets.all(6),
                elevationThumb: 2,
                activeThumbColor: Colors.green,
                activeTrackColor: Colors.purple.shade300,
                elevationTrack: 2,
                child: const Text(
                  "Swipe to ...",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onSwipe: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Swipped"),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              child: SwipeButton(
                thumbPadding: const EdgeInsets.all(3),
                thumb: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                elevationThumb: 2,
                elevationTrack: 2,
                activeThumbColor: Colors.greenAccent,
                activeTrackColor: Colors.teal,
                child: Text(
                  "Swipe to ...".toUpperCase(),

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onSwipe: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Swipped"),
                      backgroundColor: Colors.brown,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              child: SwipeButton(
                borderRadius: BorderRadius.circular(8),
                activeTrackColor: Colors.orange,
                height: 60,
                child: const Text(
                  "Swipe to ...",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                onSwipe: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Swipped"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              child: SwipeButton(
                activeTrackColor: Colors.purpleAccent,
                activeThumbColor: Colors.yellow,
                borderRadius: BorderRadius.zero,
                height: 30,
                child: const Text(
                  "Swipe to ...",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onSwipe: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Swipped"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              child: SwipeButton(
                width: 200,
                child: const Text(
                  "Swipe to ...",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onSwipe: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Swipped"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}