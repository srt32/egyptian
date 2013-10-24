#!/usr/bin/env ruby

# go get the project root folder
project_root = File.expand_path('../../IdeaBoxxxxx',__FILE__)
puts "project_root is #{project_root}"

# go find the test / spec folder
test_dir = Dir.glob("#{project_root}/test")
puts "test_dir is #{test_dir}"

# get all the sub folders by name
all_test_dirs = Dir.glob("#{test_dir.first}/**")
puts "all_test_dirs is #{all_test_dirs}"

# get the files for underneath each folder name
test_files_by_type = all_test_dirs.each_with_object(Hash.new) do |dir,test_files|
  test_files[dir] = Dir.glob("#{dir}/*")
end

puts "test_files_by_type is #{test_files_by_type}"

# count the number of methods within each file

# output the results
