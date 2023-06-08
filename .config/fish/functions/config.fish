function config --wraps='git --git-dir=/home/david/.cfg/ --work-tree=/home/david' --description 'alias config=git --git-dir=/home/david/.cfg/ --work-tree=/home/david'
  git --git-dir=/home/david/.cfg/ --work-tree=/home/david $argv
        
end
