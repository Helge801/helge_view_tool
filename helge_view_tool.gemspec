
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "helge_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "helge_view_tool"
  spec.version       = HelgeViewTool::VERSION
  spec.authors       = ["Bryan Lund"]
  spec.email         = ["bryan.helge@gmail.com"]

  spec.summary       = %q{Various veiw specific methods for applications use.}
  spec.description   = %q{A very simple gem made for class for demontration}
  spec.homepage      = "https://github.com/Helge801/helge_view_tool"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
