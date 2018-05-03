# -*- encoding: utf-8 -*-
# stub: dumb_delegator 0.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "dumb_delegator".freeze
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andy Lindeman".freeze, "Steven Harman".freeze]
  s.date = "2014-11-25"
  s.description = "Delegator class that delegates ALL the things".freeze
  s.email = ["alindeman@gmail.com".freeze, "steveharman@gmail.com".freeze]
  s.homepage = "https://github.com/stevenharman/dumb_delegator".freeze
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Delegator and SimpleDelegator in Ruby's stdlib are somewhat useful, but they pull in most of Kernel. This is not appropriate for many uses; for instance, delegation to Rails models.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1"])
    else
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1"])
  end
end
