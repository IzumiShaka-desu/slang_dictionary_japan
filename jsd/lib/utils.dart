import 'models/wordModel.dart';

List<String> getKeyword(String text){
  
    String _keyword='';
  bool isOnQuote=false;
  text.split("").forEach((val){
   if(isOnQuote){
     if(val=="\u201d"){
       _keyword+="|";
       isOnQuote=false;
     }else{
     _keyword+=val;
     }
   }else{
     if(val=="\u201c" ){
       isOnQuote=true;
     }
   }
 });
  var key=_keyword.split("|");
  key.removeWhere((str)=>str.isEmpty);
  return key;
}
List<String> getSynonyms(List<Word> words,Word word){
    Set<String> synonyms=Set();

  List<String> _keyword=getKeyword(word.desc);
 _keyword.forEach((str){
   words.forEach((ms){
     if(getKeyword(ms.desc.toLowerCase()).join(" ").contains(str.toLowerCase())){
       if(ms.word!=word.word)synonyms.add(ms.word);
     }
   });
 });
 return synonyms.toList();
  
}