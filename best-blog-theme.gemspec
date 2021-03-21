# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "Best-Blogging-Theme"
  spec.version       = "0.1.0"
  spec.authors       = ["manpreet-choudhary"]
  spec.email         = ["rc4329915@gmail.com"]

  spec.summary       = "You can import and use  Blog theme in your projects."
  spec.homepage      = "https://github.com/ManpreetChoudhary/BEST_BLOGGING_THEME"
  spec.license       = "MIT"
  
  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(data|includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.9"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 12.0"
end