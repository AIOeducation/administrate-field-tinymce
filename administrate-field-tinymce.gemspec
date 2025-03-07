Gem::Specification.new do |spec|
  spec.name          = 'administrate-field-tinymce'
  spec.version       = '1.1.0'
  spec.authors       = ['Keshav Biswa']
  spec.email         = ['keshavbiswa21@gmail.com']

  spec.summary       = 'Administrate Plugin to add tinymce editor to administrate field.'
  spec.homepage      = 'https://github.com/keshavbiswa/administrate-field-tinymce'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/keshavbiswa/administrate-field-tinymce'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'administrate', '< 2.0'
  spec.add_runtime_dependency 'rails', '>= 6.1'
  spec.add_runtime_dependency 'tinymce-rails', '~> 7.0'
end
