function gvim --wraps='vim --listen ~/.cache/vim_godot.pipe' --description 'alias gvim=vim --listen ~/.cache/vim_godot.pipe'
  vim --listen ~/.cache/vim_godot.pipe $argv
        
end
