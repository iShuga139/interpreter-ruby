# interpreter-ruby
Gem that verify if an operation is valid for the language

## Gem objective
Verify the patterns of Ruby using a good gem structure, the way to use the dependencies and how to define tests for a gem.

### Table of Contents

- [Installation](#Installation)
- [Testing](#Testing)
- [Authors / Contributors](#authors-contributors)

<a name="Installation"></a>
## Installation

1. Clone the repository:

  ```bash
  $ git clone git@github.com:iShuga139/interpreter-ruby.git
  $ cd interpreter-ruby
  ```

2. Install dependencies:

  ```bash
  $ gem install bundler
  $ bundle install
  ```

3. Execute the application:

  ```bash
  $ ruby bin/start.rb
  ```

<a name="Testing"></a>
## Testing

This program uses RSpec as testing framework. Tests should be written on the tests directory.

To test the program run from the root project:

```bash
$ rspec
```
When done, you can get a coverage report using:

```bash
$ open coverage/index.html
```

<a name="authors-contributors"></a>
## Authors / Contributors

- **Maintainer:** iShuga
- **Author:** Jonathan Estrada - <jeaworks@hotmail.com>
- **Contributors:**