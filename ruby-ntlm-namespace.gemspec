# Compiling the Gem
# gem build ruby-ntlm-namespace.gemspec
# gem install ./ruby-ntlm-namespace-x.x.x.gem --no-ri --no-rdoc --local
#
# gem push ruby-ntlm-namespace-x.x.x.gem
# gem list -r ruby-ntlm-namespace
# gem install ruby-ntlm-namespace

$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name = 'ruby-ntlm-namespace'
  s.version     = '0.0.1'
  s.authors     = ['Remo Mueller']
  s.email       = 'remosm@gmail.com'
  s.homepage    = 'https://github.com/remomueller'
  s.summary     = "Gem release for mademaxus' fork of macks ruby-ntlm with namespacing fixed"
  s.description = "Gem release for mademaxus' fork of macks ruby-ntlm with namespacing fixed"

  s.platform = Gem::Platform::RUBY

  s.files = Dir["{app,config,db,lib}/**/*"] + ["ruby-ntlm-namespace.gemspec", "Rakefile", "VERSION", "README.markdown"]
  s.test_files = Dir["test/**/*"]
end
