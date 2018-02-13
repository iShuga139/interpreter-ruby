module Interpreter # :nodoc:
  def self.number?(value)
    value.is_a?(Numeric)
  end

  def self.action?(value)
    %w[PRINT].include?(value)
  end

  def self.operator?(value)
    %w[ADD SUBSTR MULTI].include?(value)
  end

  def self.check_double_expression(number_a, number_b, operator)
    number?(number_a) && number?(number_b) && operator?(operator)
  end

  def self.check_triple_expression(number_a, number_b, operator, action)
    check_double_expression(number_a, number_b, operator) && action?(action)
  end

  def self.build_response(number_a, number_b, operator, action)
    valid = if action
              check_triple_expression(number_a, number_b, operator, action)
            else
              check_double_expression(number_a, number_b, operator)
            end

    { valid: valid, number_a: number_a, number_b: number_b,
      operator: operator, action: action }
  end

  def self.evaluate(value)
    return { valid: false } unless value[-1] == '?' && value.include?('.')

    clean_exp = value.gsub(/\(|\)|\?/, '')
    exp = clean_exp.split('.')
    numbers = exp[0].split(',')
    operator = exp[1]
    action = exp[2]

    build_response(numbers[0].to_f, numbers[1].to_f, operator, action)
  end
end
