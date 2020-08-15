
import 'package:flutter/material.dart';
import 'package:jsd/models/wordModel.dart';

import '../utils.dart';
import 'hr.dart';

class WordListHolder extends StatelessWidget {
  const WordListHolder({
    Key key,
    @required this.width,
    @required this.viewList,
    @required this.word,
  }) : super(key: key);

  final double width;
  final List<Word> viewList;
  final Word word;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 200,
      child: Card(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(word.word,style: TextStyle(fontSize:18),),
              ],
            ),
            Row(
              children: [
                Expanded(child: Text(word.desc)),
              ],
            ),
            Hr(),
            Row(
            children: [Text('Synonyms :')]),
            (getSynonyms(viewList, word).length<1)?Text('none'): Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: getSynonyms(viewList, word)
                    .map(
                      (e) => Container(
                        margin: EdgeInsets.only(right:5,left:5),
                        padding: EdgeInsets.all(10),
                          width: 140,
                          decoration: BoxDecoration(
                            color:Colors.grey[100],
                            borderRadius:BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[ Expanded(child: Text(e))])),
                    )
                    .toList(),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
