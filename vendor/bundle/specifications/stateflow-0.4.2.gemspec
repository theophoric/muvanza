# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "stateflow"
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Oberholzer"]
  s.date = "2011-04-06"
  s.description = "State machine that allows dynamic transitions for business workflows"
  s.email = "ryan@platform45.com"
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "README.rdoc", "lib/stateflow.rb", "lib/stateflow/event.rb", "lib/stateflow/exception.rb", "lib/stateflow/machine.rb", "lib/stateflow/persistence.rb", "lib/stateflow/persistence/active_record.rb", "lib/stateflow/persistence/mongo_mapper.rb", "lib/stateflow/persistence/mongoid.rb", "lib/stateflow/persistence/none.rb", "lib/stateflow/state.rb", "lib/stateflow/transition.rb"]
  s.files = ["CHANGELOG.rdoc", "README.rdoc", "lib/stateflow.rb", "lib/stateflow/event.rb", "lib/stateflow/exception.rb", "lib/stateflow/machine.rb", "lib/stateflow/persistence.rb", "lib/stateflow/persistence/active_record.rb", "lib/stateflow/persistence/mongo_mapper.rb", "lib/stateflow/persistence/mongoid.rb", "lib/stateflow/persistence/none.rb", "lib/stateflow/state.rb", "lib/stateflow/transition.rb"]
  s.homepage = "http://github.com/ryanza/stateflow"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Stateflow", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "stateflow"
  s.rubygems_version = "1.8.23"
  s.summary = "State machine that allows dynamic transitions for business workflows"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_development_dependency(%q<activerecord>, [">= 0"])
      s.add_development_dependency(%q<mongoid>, [">= 2.0.0.beta.20"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<mongoid>, [">= 2.0.0.beta.20"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.0.0"])
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<mongoid>, [">= 2.0.0.beta.20"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
  end
end
