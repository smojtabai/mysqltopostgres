#!/usr/bin/env ruby

limit = ARGV[0].to_i
puts "limit: " + limit.to_s
start_page = ARGV[1].to_i
puts "start_page: " + start_page.to_s
end_page = ARGV[2].to_i
puts "end_page: " + end_page.to_s

start_page.upto(end_page) do |i|
  system("ruby /mnt/data/mysqltopostgres/bin/mysqltopostgres #{limit} #{i} > output_#{i}.txt 2> error_#{i}.txt &")
end
