import 'package:lt_game/constants/enums.dart';
import 'package:lt_game/models/question_model.dart';

List<Question> questions = [
  Question(
      quizType: QuizeType.singleSelect,
      questionNumber: 1,
      question:
          'Besides translating and localizing text, what other element is important to localize culturally?',
      answers: ['Photos', 'Colours', 'Symbols', 'All of the Above'],
      correctAnswer: 'All of the Above',
      correctAnwerExp:
          'Photos, colours, and symbols all have very culturally specific meanings – so it’s important that they are adapted for your target market so the ',
      correctAnwerExpHighlight: 'learner can closely identify with the content',
      correctAnwerExp2: '.'),
  Question(
      quizType: QuizeType.singleSelect,
      questionNumber: 2,
      question:
          'When translating from English, what language causes the text to expand the most?',
      answers: ['Korean', 'French', 'German', 'Spanish'],
      correctAnswer: 'German',
      correctAnwerExp:
          'Translating from English into Spanish or French can result in 20-25% expansion, while ',
      correctAnwerExpHighlight: 'German may expand as much as 35%',
      correctAnwerExp2:
          '. Keep “language expansion” in mind when designing your course.'),
  Question(
      quizType: QuizeType.multipleSelect,
      questionNumber: 3,
      question:
          'What percentage of learners want to study in their native language?',
      answers: ['90%', '70%', '50%', '30%'],
      correctAnswer: '90%',
      correctAnwerExp:
          'Learning in one’s native language improves the learner experience including course comprehension, retention, performance, engagement and ',
      correctAnwerExpHighlight: 'improves employee productivity by 20%.',
      correctAnwerExp2: ''),
  Question(
      quizType: QuizeType.singleSelect,
      questionNumber: 4,
      question: 'What is the correct date format to use with Japanese content?',
      answers: ['YY/DD/MM', 'YY/MM/DD', 'DD/MM/YY', 'MM/DD/YY'],
      correctAnswer: 'YY/MM/DD',
      correctAnwerExp:
          'Correct format of time, date, and currency is also an important component when localizing learner ',
      correctAnwerExpHighlight: 'content to fully fit into a cultural context',
      correctAnwerExp2: ' and make the learner experience more enjoyable.'),
  Question(
      quizType: QuizeType.singleSelect,
      questionNumber: 5,
      question: 'Which of these are common localization pitfalls?',
      answers: [
        'Embedding symbols, currencies, and text',
        'Forgetting to localize multimedia elements',
        'Incorrect localization of colloquial language',
        'All of the above'
      ],
      correctAnswer: 'All of the above',
      correctAnwerExp:
          'Adapting learning content for regional audiences involves ',
      correctAnwerExpHighlight:
          'localizing all assets and slang to make it culturally relevant',
      correctAnwerExp2:
          ' and not embedding the original language elements into eLearning software.'),
  Question(
      quizType: QuizeType.singleSelect,
      questionNumber: 6,
      question:
          'Which of these is a localization technique that should be used in advance of the translation step for eLearning courses?',
      answers: [
        'Pseudo Localization',
        'Desktop Publishing',
        'Globalisation',
        'Proofreading'
      ],
      correctAnswer: 'Pseudo Localization',
      correctAnwerExp: 'This is the process of ',
      correctAnwerExpHighlight:
          'verifying that your product is ready for localization',
      correctAnwerExp2:
          '. Pseudo localization helps you see how a product’s UI will look after translation, without actually creating a real translation.'),
  Question(
      quizType: QuizeType.singleSelect,
      questionNumber: 7,
      question:
          'When starting to build international learning course content, where do you start?',
      answers: [
        'Create all versions at once',
        'Start with localized versions',
        'Craft loc friendly master course',
        'Complete hardest language'
      ],
      correctAnswer: 'Craft loc friendly master course',
      correctAnwerExp:
          'It may be tempting to get tackle all versions of your eLearning course at once but resist the urge. Instead, ',
      correctAnwerExpHighlight:
          'carefully first craft your “master” eLearning course',
      correctAnwerExp2: ' to iron out any issues first.'),
  Question(
      quizType: QuizeType.singleSelect,
      questionNumber: 8,
      question: 'What does SCORM stand for as it pertains to eLearning?',
      answers: [
        'Sharable Content Object Reference Model',
        'Super Cool Online Resource Machine',
        'Standard Coding Operation Review Monitoring',
        'Sufficient Category Official Relay Management'
      ],
      correctAnswer: 'Sharable Content Object Reference Model',
      correctAnwerExp: 'SCORM is a ',
      correctAnwerExpHighlight:
          'powerful tool for anyone involved in online or computer-based training',
      correctAnwerExp2:
          '. Content can be created one time and used in many different systems and situations without modification.'),
  Question(
      quizType: QuizeType.singleSelect,
      questionNumber: 9,
      question: 'What is another name for xAPI specification?',
      answers: ['Beer Bottle', 'Tin Can', 'Wheelbarrow', 'Rolling Pin'],
      correctAnswer: 'Tin Can',
      correctAnwerExp:
          'xAPI (referred to as Tin Can to describe the two-way conversations) is an eLearning specification that makes it possible to ',
      correctAnwerExpHighlight:
          'collect data about the wide range of experiences in training activities',
      correctAnwerExp2: '.'),
  Question(
      quizType: QuizeType.singleSelect,
      questionNumber: 10,
      question:
          'Why is ULG the best eLearning localization partner for your course content?',
      answers: [
        '35 years of localization experience',
        'Award-winning eLearning agency',
        'Deeper audience understanding',
        'All the above'
      ],
      correctAnswer: 'All the above',
      correctAnwerExp:
          'ULG has been helping the world’s biggest brands for 35 years and has an award-winning eLearning content translation team who ',
      correctAnwerExpHighlight:
          'know the challenges of scaling multilingual training initiatives.',
      correctAnwerExp2:
          '''\n\nOur industry-specific linguists, advanced language technology, project management expertise and deeper audience understanding with ULGEngage are key components to your success.'''),
];
