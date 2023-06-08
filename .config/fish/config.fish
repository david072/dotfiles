if status is-interactive 
  fish_add_path --path $HOME/Android/Sdk/cmdline-tools/latest/bin
  fish_add_path --path $HOME/Android/Sdk/emulator/
  fish_add_path --path /var/lib/flatpak/exports/bin 
  fish_add_path --path $HOME/.local/share/bob/nvim-bin

  ssh-add

  function fish_greeting
       echo '                 '(set_color F00)'___
         ___======____='(set_color FF7F00)'-'(set_color FF0)'-'(set_color FF7F00)'-='(set_color F00)')
       /T            \_'(set_color FF0)'--='(set_color FF7F00)'=='(set_color F00)')    '(set_color red)(whoami)'@'(hostname)'
       [ \ '(set_color FF7F00)'('(set_color FF0)'0'(set_color FF7F00)')   '(set_color F00)'\~    \_'(set_color FF0)'-='(set_color FF7F00)'='(set_color F00)')'(set_color yellow)'    Uptime: '(set_color white)(uptime | sed 's/.*up \([^,]*\), .*/\1/')(set_color red)'
       \      / )J'(set_color FF7F00)'~~    \\'(set_color FF0)'-='(set_color F00)')    IP Address: '(set_color white)(~/scripts/get_ipaddr.sh)(set_color red)'
         \\\\___/  )JJ'(set_color FF7F00)'~'(set_color FF0)'~~   '(set_color F00)'\)     '(set_color yellow)'Version: '(set_color white)(echo $FISH_VERSION)(set_color red)'
         \_____/JJJ'(set_color FF7F00)'~~'(set_color FF0)'~~    '(set_color F00)'\\
         '(set_color FF7F00)'/ '(set_color FF0)'\  '(set_color FF0)', \\'(set_color F00)'J'(set_color FF7F00)'~~~'(set_color FF0)'~~     '(set_color FF7F00)'\\
         (-'(set_color FF0)'\)'(set_color F00)'\='(set_color FF7F00)'|'(set_color FF0)'\\\\\\'(set_color FF7F00)'~~'(set_color FF0)'~~       '(set_color FF7F00)'L_'(set_color FF0)'_
         '(set_color FF7F00)'('(set_color F00)'\\'(set_color FF7F00)'\\)  ('(set_color FF0)'\\'(set_color FF7F00)'\\\)'(set_color F00)'_           '(set_color FF0)'\=='(set_color FF7F00)'__
         '(set_color F00)'\V    '(set_color FF7F00)'\\\\'(set_color F00)'\) =='(set_color FF7F00)'=_____   '(set_color FF0)'\\\\\\\\'(set_color FF7F00)'\\\\
                 '(set_color F00)'\V)     \_) '(set_color FF7F00)'\\\\'(set_color FF0)'\\\\JJ\\'(set_color FF7F00)'J\)
                             '(set_color F00)'/'(set_color FF7F00)'J'(set_color FF0)'\\'(set_color FF7F00)'J'(set_color F00)'T\\'(set_color FF7F00)'JJJ'(set_color F00)'J)
                             (J'(set_color FF7F00)'JJ'(set_color F00)'| \UUU)
                             (UU)'(set_color normal)
   end
end
