class OutputResult

  def self.from_file(file_path)
    file_content = File.readlines(file_path, encoding: 'UTF-8')
    new(file_content)
  end

  def initialize(results)
    @results = results

    def output_results(test)
      puts "\n\nРезультат теста (всего баллов - #{test.points}):"
      if test.points >= 30
        puts @results[0..4]
      elsif test.points >= 25
        puts @results[5..7]
      elsif test.points >= 19
        puts @results[8..12]
      elsif test.points >= 14
        puts @results[13..16]
      elsif test.points >= 9
        puts @results[17..20]
      elsif test.points >= 4
        puts @results[21..24]
      else
        puts @results[6]
      end
    end
  end

end


