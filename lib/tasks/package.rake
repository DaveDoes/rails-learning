require 'rake/packagetask'
require 'rake/clean'  

CLEAN.include('pkg/Learning-0.1/')

Rake::PackageTask.new("Learning","0.1") do |z|
  z.need_zip= true
  z.package_files= FileList[`git ls-files`.split(/\n/)]
  z.package_files.exclude('.travis.yml', 'tmp/**/*')
end