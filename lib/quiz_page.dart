import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_brain.dart';

class QuizPage extends StatefulWidget {
  QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int questionNumber = 0;
  int finalScore = 0;
  QuizBrain _quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${questionNumber + 1} of  ${_quizBrain.questions.length}",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "Score : $finalScore",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  )),
                  child: Text(
                    "${_quizBrain.images[questionNumber]}",
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    child: Text(
                      "${_quizBrain.questions[questionNumber]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MaterialButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          setState(() {
                            if (_quizBrain.choices[questionNumber][0] ==
                                _quizBrain.correctAnswers[questionNumber]) {
                              final snackBar =
                                  SnackBar(content: Text("Correct Anawer"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              finalScore++;
                            } else {
                              final snackBar =
                                  SnackBar(content: Text("Wrong Anawer"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }

                            if (questionNumber ==
                                _quizBrain.questions.length - 1) {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text("Quiz is finished"),
                                        content: Text(
                                            "Your Score is : ${finalScore}"),
                                        actions: <Widget>[
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                setState(() {
                                                  questionNumber = 0;
                                                  finalScore = 0;
                                                });
                                              },
                                              child: Text("Ok"))
                                        ],
                                      ));
                            } else {
                              questionNumber++;
                            }
                          });
                        },
                        child: Text(
                          "${_quizBrain.choices[questionNumber][0]}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          setState(() {
                            if (_quizBrain.choices[questionNumber][1] ==
                                _quizBrain.correctAnswers[questionNumber]) {
                              final snackBar =
                                  SnackBar(content: Text("Correct Anawer"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              finalScore++;
                            } else {
                              final snackBar =
                                  SnackBar(content: Text("Wrong Anawer"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }

                            if (questionNumber ==
                                _quizBrain.questions.length - 1) {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text("Quiz is finished"),
                                        content: Text(
                                            "Your Score is : ${finalScore}"),
                                        actions: <Widget>[
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                setState(() {
                                                  questionNumber = 0;
                                                  finalScore = 0;
                                                });
                                              },
                                              child: Text("Ok"))
                                        ],
                                      ));
                            } else {
                              questionNumber++;
                            }
                          });
                        },
                        child: Text(
                          "${_quizBrain.choices[questionNumber][1]}",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MaterialButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          setState(() {
                            if (_quizBrain.choices[questionNumber][2] ==
                                _quizBrain.correctAnswers[questionNumber]) {
                              final snackBar =
                                  SnackBar(content: Text("Correct Anawer"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              finalScore++;
                            } else {
                              final snackBar =
                                  SnackBar(content: Text("Wrong Anawer"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }

                            if (questionNumber ==
                                _quizBrain.questions.length - 1) {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text("Quiz is finished"),
                                        content: Text(
                                            "Your Score is : ${finalScore}"),
                                        actions: <Widget>[
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                setState(() {
                                                  questionNumber = 0;
                                                  finalScore = 0;
                                                });
                                              },
                                              child: Text("Ok"))
                                        ],
                                      ));
                            } else {
                              questionNumber++;
                            }
                          });
                        },
                        child: Text(
                          "${_quizBrain.choices[questionNumber][2]}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          setState(() {
                            if (_quizBrain.choices[questionNumber][3] ==
                                _quizBrain.correctAnswers[questionNumber]) {
                              final snackBar =
                                  SnackBar(content: Text("Correct Anawer"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              finalScore++;
                            } else {
                              final snackBar =
                                  SnackBar(content: Text("Wrong Anawer"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }

                            if (questionNumber ==
                                _quizBrain.questions.length - 1) {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text("Quiz is finished"),
                                        content: Text(
                                            "Your Score is : ${finalScore}"),
                                        actions: <Widget>[
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                setState(() {
                                                  questionNumber = 0;
                                                  finalScore = 0;
                                                });
                                              },
                                              child: Text("Ok"))
                                        ],
                                      ));
                            } else {
                              questionNumber++;
                            }
                          });
                        },
                        child: Text(
                          "${_quizBrain.choices[questionNumber][3]}",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          setState(() {
                            questionNumber = 0;
                            finalScore = 0;
                          });
                        },
                        child: Text(
                          "Reset",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          Navigator.pop(context);
                          setState(() {
                            questionNumber = 0;
                            finalScore = 0;
                          });
                        },
                        child: Text(
                          "Quit",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
