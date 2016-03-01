class WordProblem

  OPERATIONS = {
    'plus' => '+',
    'minus' => '-',
    'multiplied' =>'*',
    'divided' => '/'
  }.freeze

  def initialize(question)
    @question = question
    clean_question
  end

  def answer
    eval(solve_expression)
  end

  private

  def solve_expression
    create_expression
  end
  def clean_question
    @question = @question.gsub("What is ", "").gsub("by", "").sub("?", "")
  end

  def convert_array
    @question.split(" ")
  end

  def create_expression
    arr = []
    check_arg_error = true
    convert_array.each do |expression|
      if OPERATIONS[expression].nil?
        arr << expression
      else
        check_arg_error = false
        arr << OPERATIONS[expression]
      end
    end
    raise_argumenterror if check_arg_error
    arr.join
  end

  def raise_argumenterror
    fail ArgumentError
  end
end



