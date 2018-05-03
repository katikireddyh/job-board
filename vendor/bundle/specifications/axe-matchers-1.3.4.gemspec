# -*- encoding: utf-8 -*-
# stub: axe-matchers 1.3.4 ruby lib

Gem::Specification.new do |s|
  s.name = "axe-matchers".freeze
  s.version = "1.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/dequelabs/axe-matchers/issues", "documentation_uri" => "https://github.com/dequelabs/axe-matchers/blob/master/README.md", "mailing_list_uri" => "", "source_code_uri" => "https://github.com/dequelabs/axe-matchers", "wiki_uri" => "https://github.com/dequelabs/axe-matchers/wiki" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Deque Systems".freeze, "Test Double".freeze]
  s.date = "2017-08-07"
  s.description = "  axe-matchers provides matchers that wrap the axe-core accessibility library.\n  The matchers can be used with RSpec, Cucumber and other test tools.\n  Cucumber step definitions are also provided.\n".freeze
  s.email = ["helpdesk@deque.com".freeze, "hello@testdouble.com".freeze]
  s.homepage = "https://www.deque.com".freeze
  s.licenses = ["MPL-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.requirements = ["A WebDriver of some sort. e.g Capybara, Selenium or Watir".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Automated accessibility testing powered by aXe".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dumb_delegator>.freeze, ["~> 0.8"])
      s.add_runtime_dependency(%q<virtus>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.14"])
      s.add_development_dependency(%q<cucumber>.freeze, ["~> 2.4"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2"])
      s.add_development_dependency(%q<sinatra>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<capybara>.freeze, ["~> 2.13"])
      s.add_development_dependency(%q<capybara-webkit>.freeze, ["~> 1.14"])
      s.add_development_dependency(%q<poltergeist>.freeze, ["~> 1.15"])
      s.add_development_dependency(%q<selenium-webdriver>.freeze, ["~> 3.4"])
      s.add_development_dependency(%q<watir>.freeze, ["~> 6.2"])
    else
      s.add_dependency(%q<dumb_delegator>.freeze, ["~> 0.8"])
      s.add_dependency(%q<virtus>.freeze, ["~> 1.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
      s.add_dependency(%q<cucumber>.freeze, ["~> 2.4"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2"])
      s.add_dependency(%q<sinatra>.freeze, ["~> 2.0"])
      s.add_dependency(%q<capybara>.freeze, ["~> 2.13"])
      s.add_dependency(%q<capybara-webkit>.freeze, ["~> 1.14"])
      s.add_dependency(%q<poltergeist>.freeze, ["~> 1.15"])
      s.add_dependency(%q<selenium-webdriver>.freeze, ["~> 3.4"])
      s.add_dependency(%q<watir>.freeze, ["~> 6.2"])
    end
  else
    s.add_dependency(%q<dumb_delegator>.freeze, ["~> 0.8"])
    s.add_dependency(%q<virtus>.freeze, ["~> 1.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
    s.add_dependency(%q<cucumber>.freeze, ["~> 2.4"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.2"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 2.0"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.13"])
    s.add_dependency(%q<capybara-webkit>.freeze, ["~> 1.14"])
    s.add_dependency(%q<poltergeist>.freeze, ["~> 1.15"])
    s.add_dependency(%q<selenium-webdriver>.freeze, ["~> 3.4"])
    s.add_dependency(%q<watir>.freeze, ["~> 6.2"])
  end
end
