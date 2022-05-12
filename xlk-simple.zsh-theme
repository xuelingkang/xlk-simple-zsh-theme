function afmagic_dashes {
  # check either virtualenv or condaenv variables
  local python_env="${VIRTUAL_ENV:-$CONDA_DEFAULT_ENV}"

  # if there is a python virtual environment and it is displayed in
  # the prompt, account for it when returning the number of dashes
  if [[ -n "$python_env" && "$PS1" = \(* ]]; then
    echo $(( COLUMNS - ${#python_env} - 3 ))
  else
    echo $COLUMNS
  fi
}

# primary prompt: dashed separator, directory and vcs info
PROMPT='%{$fg_bold[black]%}${(l.$(afmagic_dashes)..-.)}%{$reset_color%}'

PROMPT+='
'

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
