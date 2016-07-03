#!/usr/bin/env ruby

Signal.trap('PIPE', 'EXIT')

interval = ARGV[0].to_i

program = ARGV[1..-1].join(' ')

previous = ''

begin
    loop do
        current = `#{program}`
        if current != previous
            puts current
            previous = current
        end
        sleep interval
    end
rescue Interrupt
    puts
end
