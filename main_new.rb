require_relative "lib/test"
require_relative "lib/output_result"

puts "Ваш уровень общительности. Тест на коммуникабельность"
test = Test.from_file('data/test.txt')
result = OutputResult.from_file ('data/results.txt')

until test.finished?
  test.next_question
end
result.output_results(test)
