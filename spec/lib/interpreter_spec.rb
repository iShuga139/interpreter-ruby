require 'spec_helper'

describe Interpreter do
  describe '#eval' do
    describe 'accept the expression' do
      success_response = { message: 'La expresion si es valida', result: 4.0 }

      it 'should return result 4 without action' do
        expect(Interpreter.eval('(2,2).MULTI?')).to eql(success_response)
      end

      it 'should return result 4 with action' do
        expect(Interpreter.eval('(2,2).MULTI.PRINT?'))
          .to eql(success_response)
      end

      it 'should return result 4 with ADD operator' do
        expect(Interpreter.eval('(2,2).ADD.PRINT?'))
          .to eql(success_response)
      end

      it 'should return result 4 with SUBSTR operator' do
        success_response[:result] = 0.0
        expect(Interpreter.eval('(2,2).SUBSTR?'))
          .to eql(success_response)
      end
    end
  end
end

describe Interpreter do
  describe '#eval' do
    describe 'reject the expression' do
      expected_response = { message: 'La expresion no es valida', result: 0.0 }

      it 'should return result 0 when does not send operator' do
        expect(Interpreter.eval('(2,2).PRINT?'))
          .to eql(expected_response)
      end

      it 'should return result 0 when does not send ´?´' do
        expect(Interpreter.eval('(2,2).MULTI'))
          .to eql(expected_response)
      end

      it 'should return result 0 when does not send an expression' do
        expected_response[:message] = 'Ingrese una expresion'
        expect(Interpreter.eval(nil))
          .to eql(expected_response)
      end
    end
  end
end
