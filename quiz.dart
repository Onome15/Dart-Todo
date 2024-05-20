import 'dart:io';

void main(List<String> args) {
  Question question1 = Question(
      'Who is the president of Nigeria', ['Tinubu', 'Wike', 'Obi', 'Atiku'], 1);
  question1.displayQuestion();

  Question question2 = Question('Who is the Current governor of Delta State',
      ['Okowa', 'Wike', 'Sheriff', 'Atiku'], 3);
  question2.displayQuestion();

  Question question3 = Question('Who is the Current governor of Bayelsa State',
      ['Okowa', 'Sylvia', 'Sheriff', 'Diri'], 4);
  question3.displayQuestion();

  Question question4 = Question('Who is the President of the united State',
      ['Bill Gates', 'Joe Biden', 'Donald Trump', 'George Bush'], 2);
  question4.displayQuestion();

  int a = question1.displayScore();
  int b = question2.displayScore();
  int c = question3.displayScore();
  int d = question4.displayScore();

  print('Final Score ${a + b + c + d}');
}

class Question {
  String? questions;
  List<String>? options;
  int? correctAnswerIndex;
  int score = 0;

  Question(this.questions, this.options, this.correctAnswerIndex);

  void displayQuestion() {
    int? answer;

    print(questions);
    options!.asMap().forEach((index, value) => print("${index + 1} $value"));

    print('Input the correct option - 1,2,3 or 4');

    while (answer == null || answer < 1 || answer > 4) {
      int? answerIndex = int.parse(stdin.readLineSync()!);
      if (answerIndex != 0 && answerIndex <= 4) {
        try {
          answer = answerIndex;
        } catch (e) {
          print('Invalid input. Please enter a number.');
          answer = null;
        }
      } else {
        print('Invalid input, enter option 1,2,3 or 4.');
      }
    }

    if (answer == correctAnswerIndex) {
      score = 4;
      // print('Score: $score');
    } else {
      score = 0;
    }
    // print(score);
  }

  int displayScore() {
    return score;
  }
}
   
    

    




// int getUserAnswer() {
//     int? userAnswer;
//     while (userAnswer == null || userAnswer < 1 || userAnswer > questions[currentQuestionIndex].options.length) {
//       print('Enter your answer (1-${questions[currentQuestionIndex].options.length}):');
//       String? input = stdin.readLineSync();
//       if (input != null) {
//         try {
//           userAnswer = int.parse(input);
//         } catch (e) {
//           print('Invalid input. Please enter a number.');
//           userAnswer = null;
//         }
//       } else {
//         print('Invalid input. Please enter a number.');
//       }
//     }
//     return userAnswer - 1; // Convert to zero-based index
//   }















// class Quiz {
//   List<Question>? questions;
//   int? currentQuestionIndex = 0;
//   int? score = 0;

//   Quiz(this.questions);

//   startQuiz() {
//     while (!isQuizComplete()) {
//       displayQuestion();
//     }
//   }
// }
