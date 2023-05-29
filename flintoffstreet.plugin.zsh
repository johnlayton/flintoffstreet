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

#function gradle-or-gradlew() {
#  # taken from https://github.com/gradle/gradle-completion
#  local dir="$PWD" project_root="$PWD"
#  while [[ "$dir" != / ]]; do
#    if [[ -f "$dir/settings.gradle" || -f "$dir/settings.gradle.kts" || -f "$dir/gradlew" ]]; then
#      project_root="$dir"
#      break
#    fi
#    dir="${dir:h}"
#  done
#
#  # if gradlew found, run it instead of gradle
#  if [[ -f "$project_root/gradlew" ]]; then
#    echo "executing gradlew instead of gradle"
#    "$project_root/gradlew" "$@"
#  else
#    command gradle "$@"
#  fi
#}
#
#alias gradle=gradle-or-gradlew
#compdef _gradle gradle-or-gradlew


