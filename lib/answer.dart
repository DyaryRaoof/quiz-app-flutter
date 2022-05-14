import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final Map<String, Object> answerText;
  const Answer( this.selectHandler,this.answerText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.brown, onPrimary: Colors.white),
          onPressed: () => selectHandler(answerText['score']), child:  Text(answerText['text'] as String)),
    );
  }
}
