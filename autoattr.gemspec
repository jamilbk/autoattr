Gem::Specification.new do |s|
  s.name          = 'autoattr'
  s.version       = '0.0.1'
  s.date          = '2012-11-13'
  s.summary       = 'Automagic Attributes' 
  s.description   = "Override Ruby's method_missing? to dynamically add attr_accessible"
  s.authors       = ["Jamil Bou Kheir"]
  s.email         = 'j@kokohub.com'
  s.files         = ["lib/autoattr.rb", "test/autoattr_test.rb"]
  s.test_files    = ['test/autoattr_test.rb']
  s.homepage      = "https://github.com/jamillion/autoattr"
  s.add_development_dependency "test"
  s.required_ruby_version = '>= 1.8.7'
end
