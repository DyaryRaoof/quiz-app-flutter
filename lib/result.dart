import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  const Result(this.resultScore, {Key? key, required this.resetQuiz})
      : super(key: key);

  String get rewardText {
    String rewardText;
    if (resultScore < 20) {
      rewardText = 'You are a GOOD person';
    } else if (resultScore < 50) {
      rewardText = 'You are a Great person';
    } else if (resultScore < 70) {
      rewardText = 'You are an Excellent person';
    } else {
      rewardText = 'You are the Best person';
    }
    return rewardText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
            child: Text('Done,$rewardText Great Job!'),
          ),
          Column(
            children: [
              TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: resetQuiz,
                  child: const Text('Reset')),
              OutlinedButton(
                onPressed: () => {},
                style: OutlinedButton.styleFrom(
                    primary: Colors.red,
                    side: const BorderSide(color: Colors.orange)),
                child: const Text('Dummy Ouline Button'),
              )
            ],
          )
        ],
      ),
    );
  }
}
