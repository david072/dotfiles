# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
PATH="/var/lib/flatpak/exports/bin:$PATH"
PATH="$HOME/Android/Sdk/cmdline-tools/latest/bin:$PATH"
PATH="$HOME/Android/Sdk/emulator:$PATH"
PATH="$HOME/.local/share/bob/nvim-bin:$PATH"
PATH="$HOME/.dotnet/tools:$PATH"
PATH="/opt/homebrew/bin:$PATH"
PATH="$HOME/.opam/default/bin:$PATH"
PATH="$HOME/.pub-cache/bin:$PATH"

CPATH="$(clang -v 2>&1 | grep "Selected GCC installation" | rev | cut -d' ' -f1 | rev)/include"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
