const assetPath = 'images/';

enum InputType {
  rock,
  scissors,
  paper;

  String get path => '$assetPath$name.png'; //name은 rock,scissors,paper
}
