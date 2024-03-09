D = Steep::Diagnostic
#
target :lib do
  signature 'sig'

  check  'lib'                       # Directory name
  check  'Gemfile'                   # File name
  check  'ruble.gemspec'             # File name
  ignore 'lib/tasks/**/*'
  ignore 'lib/ruble/build.rb'
  ignore 'lib/ruble/build/**/*'

  library 'zeitwerk'
  library 'open3'
  # library 'pathname'              # Standard libraries
  # library 'strong_json'           # Gems

  # configure_code_diagnostics(D::Ruby.default)      # `default` diagnostics setting (applies by default)
  configure_code_diagnostics(D::Ruby.strict)       # `strict` diagnostics setting
  # configure_code_diagnostics(D::Ruby.lenient)      # `lenient` diagnostics setting
  # configure_code_diagnostics(D::Ruby.silent)       # `silent` diagnostics setting
  # configure_code_diagnostics do |hash|             # You can setup everything yourself
  #   hash[D::Ruby::NoMethod] = :information
  # end
end