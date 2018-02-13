require 'interpreter/evaluate'
require 'interpreter/execute'

module Interpreter # :nodoc:
  def self.eval(expression)
    return { result: 0.0, message: 'Ingrese una expresion' } unless expression

    response = evaluate(expression)

    if response[:valid]
      res = execute(response[:operator],
                    response[:number_a],
                    response[:number_b])

      puts "Resultado: #{res}" if response[:action] == 'PRINT'

      return { result: res, message: 'La expresion si es valida' }
    end

    { result: 0.0, message: 'La expresion no es valida' }
  end
end
