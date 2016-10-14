def run(command)
  puts "$ #{command}"
  system command
end

run "brew update"
run "brew install bash-completion hub git rbenv ruby-build"
