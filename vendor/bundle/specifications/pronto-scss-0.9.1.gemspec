# -*- encoding: utf-8 -*-
# stub: pronto-scss 0.9.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pronto-scss".freeze
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mindaugas Moz\u016Bras".freeze]
  s.date = "2017-04-23"
  s.email = "mindaugas.mozuras@gmail.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/mmozuras/pronto-scss".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Pronto runner for SCSS-Lint, tool to help keep your SCSS clean and readable".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<scss_lint>.freeze, [">= 0.43.0", "~> 0.43"])
      s.add_runtime_dependency(%q<pronto>.freeze, ["~> 0.9.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
    else
      s.add_dependency(%q<scss_lint>.freeze, [">= 0.43.0", "~> 0.43"])
      s.add_dependency(%q<pronto>.freeze, ["~> 0.9.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<scss_lint>.freeze, [">= 0.43.0", "~> 0.43"])
    s.add_dependency(%q<pronto>.freeze, ["~> 0.9.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
  end
end
