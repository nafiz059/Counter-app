// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() => runApp(const Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int n = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.0,
          title: const Center(
              child: Text(
            "Counter App",
            style: TextStyle(
                fontSize: 30.0,
                letterSpacing: 4.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          )),
        ),
        body: Center(
          child: CounterSection(n: n),
        ),
        floatingActionButton: SizedBox(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child: FloatingActionButton(
              hoverColor: Colors.green,
              foregroundColor: Colors.yellow,
              splashColor: Colors.red,
              onPressed: () {
                setState(() {
                  n = 0;
                });
              },
              child: const Text(
                "Reset",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CounterSection extends StatefulWidget {
  CounterSection({
    super.key,
    required this.n,
  });

  int n;

  @override
  State<CounterSection> createState() => _CounterSectionState();
}

class _CounterSectionState extends State<CounterSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "${widget.n}",
          style: const TextStyle(fontSize: 80.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              onPressed: () {
                setState(() {
                  widget.n += 1;
                });
                //print("You pressed me $widget.n times");
              },
              child: const SizedBox(
                width: 90.0,
                height: 60.0,
                child: Center(
                  child: Text(
                    "Increase",
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 50.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              onPressed: () {
                setState(() {
                  widget.n -= 1;
                });
                //print("You pressed me $n times");
              },
              child: const SizedBox(
                width: 90.0,
                height: 60.0,
                child: Center(
                  child: Text(
                    "Decrease",
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
