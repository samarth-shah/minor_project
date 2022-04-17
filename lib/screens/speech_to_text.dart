// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as speechToText;

class SpeechToTextScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  speechToText.SpeechToText speech;
  String textString = "Press The Button";
  bool isListen = false;
  double confidence = 1.0;
  final Map<String, HighlightedWord> highlightWords = {
    "Samarth": HighlightedWord(
        textStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold), onTap: () {  }),
    " ": HighlightedWord(
        textStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold), onTap: () {  }),
    "Shah": HighlightedWord(
        textStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold), onTap: () {  }),
    "Janwal": HighlightedWord(
        textStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
    "Khushi": HighlightedWord(
        textStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
    "Janvi": HighlightedWord(
        textStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
    "Patel": HighlightedWord(
        textStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
    "Vaibhav": HighlightedWord(
        textStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
    "Trippy": HighlightedWord(
        textStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
    "App": HighlightedWord(
        textStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
    "Gandhi": HighlightedWord(
        textStyle:
            TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
  };

  void listen() async {
    if (!isListen) {
      bool avail = await speech.initialize();
      if (avail) {
        setState(() {
          isListen = true;
        });
        speech.listen(onResult: (value) {
          setState(() {
            textString = value.recognizedWords;
            if (value.hasConfidenceRating && value.confidence > 0) {
              confidence = value.confidence;
            }
          });
        });
      }
    } else {
      setState(() {
        isListen = false;
      });
      speech.stop();
    }
  }

  @override
  void initState() {
    super.initState();
    speech = speechToText.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speech To Text"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          isListen
              ? Container(
                  child: Text(
                    //"Confidence: ${(confidence * 100.0).toStringAsFixed(1)}%",
                    'Press the mic to stop ',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                )
              : Container(
                  child: Text(
                    "Press the mic button for Speech to text",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextHighlight(
              text: textString,
              words: highlightWords,
              textStyle: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      floatingActionButton: AvatarGlow(
        animate: isListen,
        glowColor: Colors.red,
        endRadius: 65.0,
        duration: Duration(milliseconds: 2000),
        repeatPauseDuration: Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton(
          child: Icon(isListen ? Icons.mic : Icons.mic_off),
          onPressed: () {
            listen();
          },
        ),
      ),
    );
  }
}
