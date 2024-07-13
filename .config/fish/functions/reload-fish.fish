function reload-fish --wraps='source ~/.config/fish/config.fish' --description 'alias reload-fish=source ~/.config/fish/config.fish'
  source ~/.config/fish/config.fish $argv
        
end
