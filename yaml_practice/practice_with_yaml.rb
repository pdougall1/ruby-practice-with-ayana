require 'yaml'
# @data = {something: "something else"}
# File.open("#{__dir__}/storage.yaml", "a") { |f| f << (@data.to_yaml) }

# open('myfile.out', 'a') do |f|
#   f << "and again ...\n"
# end

@data = YAML.load_file("#{__dir__}/storage.yaml")

puts(@data)