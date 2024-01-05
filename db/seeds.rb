mathematics = Subject.create(name: 'Mathematics')
science = Subject.create(name: 'Science')
history = Subject.create(name: 'History')
english = Subject.create(name: 'English')
computer_science = Subject.create(name: 'Computer Science')

math_questions = [
  {
    content: 'What is the result of adding 5 and 3?',
    correct_answer: 'B) 8',
    options: ['A) 7', 'B) 8', 'C) 5', 'D) 3']
  },
  {
    content: 'Which symbol represents subtraction?',
    correct_answer: 'C) -',
    options: ['A) +', 'B) ×', 'C) -', 'D) ÷']
  },
  {
    content: 'How many sides does a rectangle have?',
    correct_answer: 'C) 4',
    options: ['A) 2', 'B) 3', 'C) 4', 'D) 5']
  },
  {
    content: 'What is the next number in the pattern: 2, 4, 6, __?',
    correct_answer: 'A) 8',
    options: ['A) 8', 'B) 10', 'C) 12', 'D) 14']
  },
  {
    content: 'If you have 3 apples and eat 2, how many apples do you have left?',
    correct_answer: 'B) 1',
    options: ['A) 0', 'B) 1', 'C) 2', 'D) 3']
  }
]

math_questions.each do |question_data|
  question = Question.create(
    content: question_data[:content],
    correct_answer: question_data[:correct_answer],
    subject: mathematics
  )

  options = question_data[:options].map { |content| Option.create(content: content, correct: content == question_data[:correct_answer], question: question) }
end

science_questions = [
  {
    content: 'What is the main source of light in our solar system?',
    correct_answer: 'C) Sun',
    options: ['A) Moon', 'B) Stars', 'C) Sun', 'D) Earth']
  },
  {
    content: 'Which of the following is a living thing?',
    correct_answer: 'C) Plant',
    options: ['A) Rock', 'B) Cloud', 'C) Plant', 'D) Water']
  },
  {
    content: 'What is the process by which water turns into vapor?',
    correct_answer: 'D) Evaporation',
    options: ['A) Freezing', 'B) Melting', 'C) Condensation', 'D) Evaporation']
  },
  {
    content: 'What do plants need to make their own food?',
    correct_answer: 'B) Sunlight and water',
    options: ['A) Air and water', 'B) Sunlight and water', 'C) Soil and air', 'D) Sunlight and soil']
  },
  {
    content: 'Which of the following is a natural habitat for fish?',
    correct_answer: 'C) Ocean',
    options: ['A) Desert', 'B) Forest', 'C) Ocean', 'D) Mountain']
  }
]

science_questions.each do |question_data|
  question = Question.create(
    content: question_data[:content],
    correct_answer: question_data[:correct_answer],
    subject: science
  )

  options = question_data[:options].map { |content| Option.create(content: content, correct: content == question_data[:correct_answer], question: question) }
end

history_questions = [
  {
    content: 'Who was the first President of the United States?',
    correct_answer: 'B) George Washington',
    options: ['A) Abraham Lincoln', 'B) George Washington', 'C) Thomas Jefferson', 'D) John Adams']
  },
  {
    content: 'What ancient structure was built in Egypt as a tomb for pharaohs?',
    correct_answer: 'C) Pyramids of Giza',
    options: ['A) Eiffel Tower', 'B) Great Wall of China', 'C) Pyramids of Giza', 'D) Taj Mahal']
  },
  {
    content: 'Who is known for sailing across the ocean in 1492 and discovering the Americas?',
    correct_answer: 'B) Christopher Columbus',
    options: ['A) Marco Polo', 'B) Christopher Columbus', 'C) Ferdinand Magellan', 'D) Vasco da Gama']
  },
  {
    content: 'What event is famous for the "shot heard \'round the world" and marked the beginning of the American Revolutionary War?',
    correct_answer: 'C) Lexington and Concord',
    options: ['A) Battle of Gettysburg', 'B) Battle of Saratoga', 'C) Lexington and Concord', 'D) Battle of Yorktown']
  },
  {
    content: 'Who is famous for his leadership during the Civil Rights Movement in the 1960s and is known for his "I Have a Dream" speech?',
    correct_answer: 'A) Martin Luther King Jr.',
    options: ['A) Martin Luther King Jr.', 'B) Malcolm X', 'C) Nelson Mandela', 'D) Mahatma Gandhi']
  }
]

history_questions.each do |question_data|
  question = Question.create(
    content: question_data[:content],
    correct_answer: question_data[:correct_answer],
    subject: history
  )

  options = question_data[:options].map { |content| Option.create(content: content, correct: content == question_data[:correct_answer], question: question) }
end

english_questions = [
  {
    content: 'Which word is a pronoun for "she"?',
    correct_answer: 'D) Her',
    options: ['A) Dog', 'B) Sun', 'C) Cat', 'D) Her']
  },
  {
    content: 'What is the opposite of the word "happy"?',
    correct_answer: 'A) Sad',
    options: ['A) Sad', 'B) Fast', 'C) Big', 'D) Funny']
  },
  {
    content: 'Identify the noun in the following sentence: "The dog chased the ball."',
    correct_answer: 'B) Dog',
    options: ['A) Chased', 'B) Dog', 'C) The', 'D) Ball']
  },
  {
    content: 'Which of the following is a punctuation mark used to end a sentence?',
    correct_answer: 'B) Period (.)',
    options: ['A) Comma (,)', 'B) Period (.)', 'C) Exclamation mark (!)', 'D) Question mark (?)']
  },
  {
    content: 'What do you call a group of words that make sense together?',
    correct_answer: 'C) Sentence',
    options: ['A) Numbers', 'B) Letters', 'C) Sentence', 'D) Colors']
  }
]

english_questions.each do |question_data|
  question = Question.create(
    content: question_data[:content],
    correct_answer: question_data[:correct_answer],
    subject: english
  )

  options = question_data[:options].map { |content| Option.create(content: content, correct: content == question_data[:correct_answer], question: question) }
end

cs_questions = [
  {
    content: 'What is the primary purpose of a computer?',
    correct_answer: 'C) Performing calculations and tasks',
    options: ['A) Playing games', 'B) Making phone calls', 'C) Performing calculations and tasks', 'D) Cooking']
  },
  {
    content: 'Which device is used to input information into a computer?',
    correct_answer: 'B) Keyboard',
    options: ['A) Monitor', 'B) Keyboard', 'C) Printer', 'D) Speaker']
  },
  {
    content: 'What do you call a small picture or symbol on the computer screen that you can click on with a mouse?',
    correct_answer: 'A) Icon',
    options: ['A) Icon', 'B) Button', 'C) Link', 'D) File']
  },
  {
    content: 'What is the main function of a computer mouse?',
    correct_answer: 'C) Controlling the cursor on the screen',
    options: ['A) Displaying images', 'B) Playing music', 'C) Controlling the cursor on the screen', 'D) Cooking']
  },
  {
    content: 'Which of the following is a program that helps you browse the internet?',
    correct_answer: 'B) Web browser',
    options: ['A) Calculator', 'B) Web browser', 'C) Word processor', 'D) Music player']
  }
]

cs_questions.each do |question_data|
  question = Question.create(
    content: question_data[:content],
    correct_answer: question_data[:correct_answer],
    subject: computer_science
  )

  options = question_data[:options].map { |content| Option.create(content: content, correct: content == question_data[:correct_answer], question: question) }
end

student = Student.create(name: 'John Doe')

puts 'Seed data created successfully!'
