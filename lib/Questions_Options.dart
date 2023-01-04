class QuestionsOptions {
  String ques = '';
  String opt1 = '';
  String opt2 = '';
  int op1 = -1, op2 = -1;
  QuestionsOptions(
      {this.ques = '',
      this.opt1 = '',
      this.opt2 = '',
      this.op1 = -1,
      this.op2 = -1});
}

class Data {
  List<QuestionsOptions> data = [
    //0
    QuestionsOptions(
      ques:
          'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      opt1: 'I\'ll hop in. Thanks for the help!',
      opt2: 'Better ask him if he\'s a murderer first.',
      op1: 2,
      op2: 1,
    ),
    //1
    QuestionsOptions(
      ques: 'He nods slowly, unphased by the question.',
      opt1: 'At least he\'s honest. I\'ll climb in.',
      opt2: 'Wait, I know how to change a tire.',
      op1: 2,
      op2: 3,
    ),
    //2
    QuestionsOptions(
      ques:
          'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      opt1: 'I love Elton John! Hand him the cassette tape.',
      opt2: 'It\'s him or me! You take the knife and stab him.',
      op1: 5,
      op2: 4,
    ),
    //3
    QuestionsOptions(
      ques:
          'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      opt1: 'Restart',
      opt2: '',
      op1: -1,
      op2: -1,
    ),
    //4
    QuestionsOptions(
      ques:
          'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      opt1: 'Restart',
      opt2: '',
      op1: -1,
      op2: -1,
    ),
    //5
    QuestionsOptions(
      ques:
          'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      opt1: 'Restart',
      opt2: '',
      op1: -1,
      op2: -1,
    ),
  ];
}
