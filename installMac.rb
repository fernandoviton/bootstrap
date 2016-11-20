def run(command)
  puts "$ #{command}"
  system command
end

run "brew update"
run "brew install bash-completion hub git rbenv ruby-build"

# python stuff
run "brew install python pyenv"
run "pip install virtualenv"
# run "curl https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | python"
