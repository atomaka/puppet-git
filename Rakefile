namespace :validate do
  def validate(files)
    sh("puppet parser validate #{files.join(' ')}")
  end

  def lint(files)
    files.each do |f|
      sh("puppet-lint #{f}")
    end
  end

  def erb(files)
    files.each do |f|
      sh("erb -x -T '-' #{f} | ruby -c")
    end
  end

  def manifests
    Dir.glob('manifests/**/*').select { |f| !File.directory? f }
  end

  def templates
    Dir.glob('templates/**/*').select { |f| !File.directory? f }
  end

  desc 'Validate all puppet manifests'
  task :pp do
    validate manifests
  end

  desc 'Puppet Lint on all manifests'
  task :lint do
    lint manifests
  end

  desc 'Validate all puppet templates'
  task :erb do
    erb templates
  end
end
