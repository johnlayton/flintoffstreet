## Home

### Setup oh-my-zsh

#### Install confluence plugin
```zsh
pushd $ZSH/custom/plugins && \
  git clone git@github.com:johnlayton/flintoffstreet.git flintoffstreet && \
  popd || echo "I'm broken"
```
```zsh
plugins=(... flintoffstreet)
```

### Setup other

```zsh
pushd $HOME && \
  git clone git@github.com:johnlayton/flintoffstreet.git .flintoffstreet && \
  popd || echo "I'm broken"
```

```zsh
source ~/.flintoffstreet/flintoffstreet.plugin.zsh
```
