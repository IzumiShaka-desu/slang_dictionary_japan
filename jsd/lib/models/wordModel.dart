class Word {
  Word({
    this.word,
    this.desc,
  });

  String word;
  String desc;

  factory Word.fromJson(Map<String, dynamic> json) => Word(
        word: json["word"],
        desc: json["desc"],
      );
}
