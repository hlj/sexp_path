# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sexp_path}
  s.version = "0.4.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Sanderson","Huang lijun"]
  s.date = %q{2012-06-20}
  s.description = %q{      Allows you to do example based pattern matching and queries against S Expressions (sexp).
}
  s.email = %q{hlj8080@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "README.rdoc",
     "Rakefile",
     "TODO",
     "VERSION.yml",
     "examples/print_methods.rb",
     "examples/sexp_grep.rb",
     "lib/sexp_path.rb",
     "lib/sexp_path/matcher/all.rb",
     "lib/sexp_path/matcher/any.rb",
     "lib/sexp_path/matcher/atom.rb",
     "lib/sexp_path/matcher/base.rb",
     "lib/sexp_path/matcher/block.rb",
     "lib/sexp_path/matcher/child.rb",
     "lib/sexp_path/matcher/include.rb",
     "lib/sexp_path/matcher/not.rb",
     "lib/sexp_path/matcher/pattern.rb",
     "lib/sexp_path/matcher/sibling.rb",
     "lib/sexp_path/matcher/type.rb",
     "lib/sexp_path/matcher/wild.rb",
     "lib/sexp_path/sexp_collection.rb",
     "lib/sexp_path/sexp_query_builder.rb",
     "lib/sexp_path/sexp_result.rb",
     "lib/sexp_path/traverse.rb",
     "test/sample.rb",
     "test/sexp_path_capture_test.rb",
     "test/sexp_path_matching_test.rb",
     "test/sexp_replacement_test.rb",
     "test/use_case_test.rb"
  ]
  s.homepage = %q{http://github.com/adamsanderson/sexp_path}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Pattern matching for S-Expressions (sexp).}
  s.test_files = [
    "test/sexp_path_capture_test.rb",
     "test/sexp_path_matching_test.rb",
     "test/sexp_replacement_test.rb",
     "test/use_case_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sexp_processor>, ["> 3.0"])
      s.add_development_dependency(%q<ruby_parser>, ["~> 3.0"])
    else
      s.add_dependency(%q<sexp_processor>, ["> 3.0"])
      s.add_dependency(%q<ruby_parser>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<sexp_processor>, ["> 3.0"])
    s.add_dependency(%q<ruby_parser>, ["~> 3.0"])
  end
end
