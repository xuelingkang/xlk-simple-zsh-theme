PROMPT='
'

PROMPT+='%{$fg_bold[black]%}%D{%Y/%m/%d %H:%M:%S.%.}%{$reset_color%}'
PROMPT+=' '

PROMPT+='%{$fg[magenta]%}%n%{$reset_color%}'
PROMPT+='%{$fg[default]%}@%{$reset_color%}'
PROMPT+='%{$fg[blue]%}%m%{$reset_color%}'
PROMPT+=' '

PROMPT+='%{$fg[cyan]%}%/%{$reset_color%}'
PROMPT+=' '

PROMPT+='$(git_prompt_info)'

PROMPT+='
'

PROMPT+='%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
