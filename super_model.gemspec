# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "super_model"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Scott Lewis"]
  s.date = "2013-02-21"
  s.description = ""
  s.email = "ryan@rynet.us"
  s.files = [".gitignore", ".rspec", ".rvmrc", "Gemfile", "Gemfile.lock", "Guardfile", "LICENSE", "README.md", "Rakefile", "VERSION", "examples/associations_example.rb", "examples/validations_example.rb", "lib/super_model.rb", "lib/super_model/associations.rb", "lib/super_model/associations/belongs_to.rb", "lib/super_model/associations/has_many.rb", "lib/super_model/associations/has_one.rb", "lib/super_model/error.rb", "lib/super_model/error/hash_type.rb", "lib/super_model/error/integer_type.rb", "lib/super_model/error/invalid_plurality.rb", "lib/super_model/error/proc_type.rb", "lib/super_model/error/type.rb", "lib/super_model/validations.rb", "lib/super_model/validations/acceptance.rb", "lib/super_model/validations/confirmation.rb", "lib/super_model/validations/date.rb", "lib/super_model/validations/date_time.rb", "lib/super_model/validations/exclusion.rb", "lib/super_model/validations/format.rb", "lib/super_model/validations/inclusion.rb", "lib/super_model/validations/length.rb", "lib/super_model/validations/numericality.rb", "lib/super_model/validations/presence.rb", "lib/super_model/validations/time.rb", "lib/super_model/validations/uniqueness.rb", "lib/super_model/validator.rb", "spec/spec_helper.rb", "spec/super_model/associations/belongs_to_spec.rb", "super_model.gemspec", "tmp/rspec_guard_result"]
  s.homepage = "http://github.com/RyanScottLewis/super_model"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = ""

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<version>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<active_support>, ["~> 3.0.0"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 2.4.1"])
      s.add_development_dependency(%q<guard-yard>, ["~> 2.0.1"])
      s.add_development_dependency(%q<rb-fsevent>, ["~> 0.9.3"])
      s.add_development_dependency(%q<fuubar>, ["~> 1.1.0"])
      s.add_development_dependency(%q<redcarpet>, ["~> 2.2.2"])
      s.add_development_dependency(%q<github-markup>, ["~> 0.7.5"])
    else
      s.add_dependency(%q<version>, ["~> 1.0.0"])
      s.add_dependency(%q<active_support>, ["~> 3.0.0"])
      s.add_dependency(%q<guard-rspec>, ["~> 2.4.1"])
      s.add_dependency(%q<guard-yard>, ["~> 2.0.1"])
      s.add_dependency(%q<rb-fsevent>, ["~> 0.9.3"])
      s.add_dependency(%q<fuubar>, ["~> 1.1.0"])
      s.add_dependency(%q<redcarpet>, ["~> 2.2.2"])
      s.add_dependency(%q<github-markup>, ["~> 0.7.5"])
    end
  else
    s.add_dependency(%q<version>, ["~> 1.0.0"])
    s.add_dependency(%q<active_support>, ["~> 3.0.0"])
    s.add_dependency(%q<guard-rspec>, ["~> 2.4.1"])
    s.add_dependency(%q<guard-yard>, ["~> 2.0.1"])
    s.add_dependency(%q<rb-fsevent>, ["~> 0.9.3"])
    s.add_dependency(%q<fuubar>, ["~> 1.1.0"])
    s.add_dependency(%q<redcarpet>, ["~> 2.2.2"])
    s.add_dependency(%q<github-markup>, ["~> 0.7.5"])
  end
end
