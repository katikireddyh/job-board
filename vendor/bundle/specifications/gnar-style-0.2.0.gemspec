# -*- encoding: utf-8 -*-
# stub: gnar-style 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gnar-style".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["The Gnar Company".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-08-02"
  s.email = ["hi@thegnar.co".freeze]
  s.executables = ["gnar-style".freeze]
  s.files = ["exe/gnar-style".freeze]
  s.homepage = "https://github.com/TheGnarCo/gnar-style".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Style guide default configuration for The Gnar Company".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubocop>.freeze, ["~> 0.49"])
      s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.14"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.49"])
      s.add_dependency(%q<thor>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.49"])
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
