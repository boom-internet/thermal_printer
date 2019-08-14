
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "thermal_printer/version"

Gem::Specification.new do |spec|
  spec.name          = "thermal_printer"
  spec.version       = ThermalPrinter::VERSION
  spec.authors       = ["Faizal Zakaria"]
  spec.email         = ["fai@code3.io"]

  spec.summary       = %q{Thermal Printer App response generator.}
  spec.description   = %q{Thermal Printer App in Android has a web integration. This is a parser to generate the response understand by the App.}
  spec.homepage      = "https://github.com/faizalzakaria"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry", "~> 0.12.2"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
