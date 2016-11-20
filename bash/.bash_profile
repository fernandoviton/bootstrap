. ~/.fancy_directory.bash
. ~/.ps1.bash

# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# pipsi (though maybe useful by others)
export PATH=$PATH:/Users/fer/.local/bin
