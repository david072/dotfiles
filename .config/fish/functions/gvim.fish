function gvim --wraps='nvim --listen /tmp/godot_nvim.pipe' --description 'alias gvim=nvim --listen /tmp/godot_nvim.pipe'
  nvim --listen /tmp/godot_nvim.pipe $argv
        
end
