use_gem = false

if use_gem
  require "tty-prompt"
else
  require "./my_code/tty/prompt"
end

prompt = TTY::Prompt.new

name = prompt.ask("What is your name?")

puts "Hello, #{name}"
