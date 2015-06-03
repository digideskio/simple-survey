# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

survey = Survey.create(name: "Simple Survey")

questions = [
              [1,'What is your gender?'],
              [1,'What is your relationship status?'],
              [2,'Which countries did you visit?'],
              [2,'What are your favorite sports?'],
              [2,'Which programming languages do you know?']
            ]

questions.each do |q|
  type = 'checkbox'
  if q[0] == 1
    type = 'radio'
  end
  survey.questions << Question.create(name: q[1], tag_type: type)
end

options = [['male', 'female'],
          ['married', 'single', 'divorced', 'widowed','seperated', 'in a relationship'],
          ['Canada', 'Italy', 'Australia', 'Hong Kong', 'Russia', 'Belgium'],
          ['Football', 'Basketball', 'Baseball', 'Hockey', 'None'],
          ['PHP', 'Ruby', 'Python', 'JavaScript']
          ]


options.each_with_index do |answers, index|
  question = Question.find(index+1)
  answers.each do |answer|
    question.options << Option.new(name: answer)
  end
end
