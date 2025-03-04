# blerc

# Enable vim mode
set -o vi

function my/complete-load-hook {
	ble-bind -m 'auto_complete' -f 'C-f' 'auto_complete/insert-fword'
	ble-bind -m 'auto_complete' -f 'C-h' 'auto_complete/insert-cword'
	ble-bind -m 'auto_complete' -f 'M-o c' 'auto_complete/insert-cword'
	ble-bind -m 'auto_complete' -f 'M-o e' 'auto_complete/insert-eword'
	ble-bind -m 'auto_complete' -f 'M-o s' 'auto_complete/insert-sword'
	ble-bind -m 'auto_complete' -f 'M-o u' 'auto_complete/insert-uword'

	# sabbrev
	ble-sabbrev -w cm=chezmoi
	ble-sabbrev -w cma="chezmoi add"
	ble-sabbrev -w cmra="chezmoi re-add"
	ble-sabbrev -w cms="chezmoi status"
	ble-sabbrev "~local=$HOME/.local"
}

function my/vim-load-hook {
	# Show normal mode
	#bleopt keymap_vi_mode_string_nmap=$'\e[1m-- NORMAL --\e[m'
	# Enable vim-surround
	ble-import lib/vim-surround
	# Enable vim-airline
	ble-import lib/vim-airline
	# Set airline theme
	bleopt vim_airline_theme=angr
	# Disable ble show exit code
	bleopt exec_errexit_mark=
	# Use same colors as LS_COLORS
	bleopt filename_ls_colors="$LS_COLORS"

	# Bind "C-x C-v" for 
	VISUAL='vim -X'
	ble-bind -m vi_imap -f 'C-x C-v' 'edit-and-execute-command'
	ble-bind -m vi_nmap -f 'C-x C-v' 'vi-command/edit-and-execute-command'

	# Unbind TAB
	ble-bind -m 'vi_imap' -f 'TAB' ''

	# Disable history auto_complete
	bleopt complete_auto_history=
}

# Enable the hooks
blehook/eval-after-load complete my/complete-load-hook
blehook/eval-after-load keymap_vi my/vim-load-hook

