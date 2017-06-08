# Installation

Install [zsh](https://www.zsh.org) and [zplug](https://github.com/zplug/zplug)

Add to your ```.zshrc```

```shell
# ---------------- zplug ------------------ #

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
source ~/.zplug/init.zsh

# Make sure to use double quotes to prevent shell expansion
zplug "~/bin/zsh-config/shell", from:local

zplug "~/bin/zsh-config/atom", from:local
zplug "~/bin/zsh-config/git", from:local

zplug "~/bin/zsh-config/ruby", from:local
zplug "~/bin/zsh-config/js", from:local

zplug "~/bin/zsh-config/terraform", from:local
zplug "~/bin/zsh-config/aws", from:local

zplug "zsh-users/zsh-syntax-highlighting"

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi
```
