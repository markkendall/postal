# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{postal}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rob Cameron"]
  s.date = %q{2009-08-28}
  s.description = %q{Lyris is an enterprise email service. Postal makes it easy for Ruby to talk to Lyris's API.}
  s.email = %q{cannikinn@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/postal.rb",
     "lib/postal/base.rb",
     "lib/postal/list.rb",
     "lib/postal/lmapi/lmapi.rb",
     "lib/postal/lmapi/lmapi_driver.rb",
     "lib/postal/lmapi/lmapi_mapping_registry.rb",
     "lib/postal/mailing.rb",
     "lib/postal/member.rb",
     "postal.gemspec",
     "test/list_test.rb",
     "test/lmapiClient.rb",
     "test/lyris_sample.yml",
     "test/mailing_test.rb",
     "test/member_test.rb",
     "test/postal_suite.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/cannikin/postal}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Gem for talking to the Lyris API}
  s.test_files = [
    "test/list_test.rb",
     "test/lmapiClient.rb",
     "test/mailing_test.rb",
     "test/member_test.rb",
     "test/postal_suite.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
