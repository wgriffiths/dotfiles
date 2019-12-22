PROMPT='%3~$(git_prompt_info)%# '

ZSH_THEME_GIT_PROMPT_PREFIX=" [%{%f%k%b%K{${bkg}}%B%F{green}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""