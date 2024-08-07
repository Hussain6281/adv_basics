class Quiz{
  Quiz( this.text, this.answer);
  String text;
  List<String> answer; 

  shuffledList(){
    final shuffled = List.of(answer);
    shuffled.shuffle();
    return shuffled;
  }
}