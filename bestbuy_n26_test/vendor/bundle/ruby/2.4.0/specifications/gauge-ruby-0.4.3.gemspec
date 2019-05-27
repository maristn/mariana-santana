# -*- encoding: utf-8 -*-
# stub: gauge-ruby 0.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "gauge-ruby".freeze
  s.version = "0.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.9".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gauge Team".freeze]
  s.date = "2018-03-16"
  s.description = "Adds Ruby support into Gauge tests".freeze
  s.email = ["gauge@thoughtworks.com".freeze]
  s.homepage = "http://www.getgauge.io".freeze
  s.licenses = ["GPL-3.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Ruby support for Gauge".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ruby-protocol-buffers>.freeze, ["= 1.5.1"])
      s.add_runtime_dependency(%q<os>.freeze, ["= 0.9.6"])
      s.add_runtime_dependency(%q<parser>.freeze, ["~> 2.3"])
      s.add_runtime_dependency(%q<unparser>.freeze, ["~> 0.2.6"])
      s.add_runtime_dependency(%q<method_source>.freeze, ["~> 0.8.2"])
      s.add_runtime_dependency(%q<ruby-debug-ide>.freeze, ["~> 0.6.0"])
      s.add_runtime_dependency(%q<debase>.freeze, ["~> 0.2.2"])
    else
      s.add_dependency(%q<ruby-protocol-buffers>.freeze, ["= 1.5.1"])
      s.add_dependency(%q<os>.freeze, ["= 0.9.6"])
      s.add_dependency(%q<parser>.freeze, ["~> 2.3"])
      s.add_dependency(%q<unparser>.freeze, ["~> 0.2.6"])
      s.add_dependency(%q<method_source>.freeze, ["~> 0.8.2"])
      s.add_dependency(%q<ruby-debug-ide>.freeze, ["~> 0.6.0"])
      s.add_dependency(%q<debase>.freeze, ["~> 0.2.2"])
    end
  else
    s.add_dependency(%q<ruby-protocol-buffers>.freeze, ["= 1.5.1"])
    s.add_dependency(%q<os>.freeze, ["= 0.9.6"])
    s.add_dependency(%q<parser>.freeze, ["~> 2.3"])
    s.add_dependency(%q<unparser>.freeze, ["~> 0.2.6"])
    s.add_dependency(%q<method_source>.freeze, ["~> 0.8.2"])
    s.add_dependency(%q<ruby-debug-ide>.freeze, ["~> 0.6.0"])
    s.add_dependency(%q<debase>.freeze, ["~> 0.2.2"])
  end
end
