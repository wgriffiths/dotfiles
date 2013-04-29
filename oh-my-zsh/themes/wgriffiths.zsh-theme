PROMPT='%3~$(svn_prompt_info)%# '


ZSH_THEME_SVN_PROMPT_PREFIX=" [%{%f%k%b%K{${bkg}}%B%F{green}%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_SVN_PROMPT_DIRTY="%{%F{red}%}*%{%f%k%b%} "
ZSH_THEME_SVN_PROMPT_CLEAN=""
SVN_ROOT="svn+ssh://svn.etlsolutions.com/home/svn/projects"
SVN_SHOW_BRANCH="true"