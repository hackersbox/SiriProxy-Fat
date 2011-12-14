# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "SiriProxy-Fat"
  s.version     = "0.0.1"
  s.authors     = ["TwelveK"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{Siri Question and Answer}
  s.description = %q{This is a very simple plugin for asking question with the respones you want from siri}

  s.rubyforge_project = "SiriProxy-Fat"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

#  s.add_runtime_dependency ""

#  s.add_development_dependency ""
#  s.add_development_dependency ""
#  s.add_development_dependency ""

end
