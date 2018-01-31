module Interpreter # :nodoc:
  def self.exec_add(a, b)
    a + b
  end

  def self.exec_susbt(a, b)
    a - b
  end

  def self.exec_multi(a, b)
    a * b
  end

  def self.execute(operator, a, b)
    return exec_add(a, b) if operator == 'ADD'
    return exec_susbt(a, b) if operator == 'SUBSTR'
    return exec_multi(a, b) if operator == 'MULTI'
  end
end
