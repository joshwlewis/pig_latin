desc "drop all the stuff"
task :reset_project do
  ['lib/*.rb', 'app/*/*.rb', 'test/**/*_test.rb'].each do |pattern|
    FileUtils.rm_rf Dir.glob(pattern)
  end
end
