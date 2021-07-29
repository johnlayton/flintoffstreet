autoload -U add-zsh-hook

function flintoffstreet-add-auto-to-path() {
  if [[ -d bin ]]; then
    export PATH="./bin:$PATH"
  fi
  if [[ -d script ]]; then
    export PATH="./script:$PATH"
  fi
}

add-zsh-hook chpwd flintoffstreet-add-auto-to-path
