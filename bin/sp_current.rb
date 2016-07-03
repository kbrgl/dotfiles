#!/usr/bin/env ruby
raw = `sp current | tail -n 2`
#raw = <<EOF
#Artist    Knife Party
#Title     Boss Mode
#EOF

split = raw.split(/\n/)
split.reverse!
processed = []
split.each do |line|
    processed << line.split(/ {2,}/)[1]
end

if processed[0].nil?
    puts "Paused."
else
    puts processed.join(' by ')
end
