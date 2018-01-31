lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'interpreter/version'

Gem::Specification.new do |s|
  s.name          = 'interpreter'
  s.version       = Interpreter::VERSION
  s.date          = '2018-01-30'
  s.summary       = 'Lenguage: (Number, Number).Operator.Action?' \
                    ' - Action            [PRINT]' \
                    ' - Operator          [ADD, SUSTR, MULTI]' \
                    ' - Number            [0..9]' \
                    'eg: (2,5).MULTI.PRINT?'
  s.description   = 'Check an expression and evaluate it' \
                    ' to verify if could be operable'
  s.authors       = ['Jonathan Estrada']
  s.email         = ['jeaworks@hotmail.com']
  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']
  s.licenses      = ['MIT']

  s.add_development_dependency 'bundler', '~> 1.6'
  s.add_development_dependency 'rake', '10.5.0'
  s.add_development_dependency 'rspec', '3.4.0'
  s.add_development_dependency 'rubocop', '>= 0.37'
  s.add_development_dependency 'rubycritic', '~> 2.1.0', '>= 2.1.0'
  s.add_development_dependency 'simplecov', '~> 0.11'
  s.add_development_dependency 'simplecov-json', '~> 0.2'
  s.add_development_dependency 'simplecov-rcov', '~> 0.2'
end
