require 'rubygems'
require 'curb'

gem_name = ENV['DEBUG']
raise ArgumentError.new("gem name missing") if gem_name.nil?
if Curl.get("https://rubygems.org/gems/#{gem_name}").status == '200'
  $stdout.puts 'Name available.'
else

  $stdout.puts 'Name NOT available.'
end
