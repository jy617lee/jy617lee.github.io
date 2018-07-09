# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "tale"
  spec.version       = "0.1.3"
  spec.authors       = ["Jeeyun Lee"]
  spec.email         = ["jy617lee@gmail.com"]

  spec.summary       = %q{Jeeyun Lee's Small but Steady steps}
  spec.homepage      = "https://github.com/jy617lee"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.6"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
