lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mirei/version"

Gem::Specification.new do |spec|
  spec.name          = "mirei"
  spec.version       = Mirei::VERSION
  spec.authors       = ["mizukmb"]
  spec.email         = ["mizukmb6@gmail.com"]

  spec.summary       = %q{provide the paprika private academy regulations of the animation "PriPara".}
  spec.homepage      = "http://pripara.jp"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
