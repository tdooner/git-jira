Gem::Specification.new do |s|
  s.name        = 'git-jira'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = 'Workflow tools for integrating git and jira'
  s.authors     = ['Tom Dooner']
  s.email       = 'tom.dooner@brigade.com'
  s.require_paths = ['lib/git-jira.rb']
  s.files       = Dir['bin/*']
  s.homepage    = 'https://github.com/tdooner/git-jira'
  s.executables = ['git-jira']
end
