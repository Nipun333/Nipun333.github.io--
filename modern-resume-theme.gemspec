lib = File.expand_path("../Lib", __FILE__)
$LOAD_PATH.unshift(Lib) unless $LOAD_PATH.include?(Lib)
require "modern-resume-theme/version"

Gem::Specification.new do |spec|
  spec.name          = "modern-resume-theme"
  spec.version       = ModernResumeTheme::VERSION
  spec.authors       = ["Sadman Salim Nipun"]
  spec.email         = ["sadmannipun@gmail.com"]

  spec.summary       = "A modern simple static resume template and theme."
  spec.homepage      = "https://github.com/nipun333/nipun333.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(Assets|_Layouts|_Includes|_Sass|LICENSE|README)!i) }

  spec.required_ruby_version = '~> 2.0'

  spec.add_runtime_dependency 'github-pages', '~> 198'
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "html-proofer", "~> 3.9"
  spec.add_development_dependency "wdm", "~> 0.1.0"
end
