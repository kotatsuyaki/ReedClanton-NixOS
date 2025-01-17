{
	description = "Reed Clanton";
	email = "clantonreed@gmail.com";
	extraGroups = [ "users" ];
	home = "/home/reedclanton";
	isNormalUser = true;
	name = "reedclanton";
	services.xserver = {
		layout = "us";
		xkbVariant = "";
	};
	timeZone = "America/Chicago";

	shell = {
		aliases = {
			c = "clear;pwd;ls -GAp";
      e = "eza";
			eixt = "exit";
      f = "fzf";
			g = "c;git branch -a;git status";
      gg = "c;git branch;git status";
      gA = "git add";
      "git addd" = "git add";
			gF = "git fetch --all -ftp";
			# TODO: Configure color in grep directly.
			grep = "grep --color=auto";
			h = "clear;neofetch;pwd;ls -GAp";
			history = "history --show-all --force-colorization|bat";
			# TODO: Configure color in ip directly.
			ip = "ip --color=auto";
			n = "nvim";
			ssh = "ssh -X";
      t = "tmuxp load -d $XDG_CONFIG_HOME/tmuxp/Default.yaml $XDG_CONFIG_HOME/tmuxp/NixOS.yaml $XDG_CONFIG_HOME/tmuxp/Web.yaml;tmux a -t Default";
			tD = "tmuxp load $XDG_CONFIG_HOME/tmuxp/Default.yaml";
			tN = "tmuxp load $XDG_CONFIG_HOME/tmuxp/NixOS.yaml";
			tW = "tmuxp load $XDG_CONFIG_HOME/tmuxp/Web.yaml";
		};
		completion = true;
		history = {
			ignore = [
        " *"
				"c"
				"clear;neofetch;pwd;ls -GAp"
				"eixt"
				"exec lynx"
				"exec lynx -accept_all_cookies"
				"exit"
				"g"
				"gF"
				"history"
				"poweroff"
				"sudo poweroff"
				"reboot"
				"sudo reboot"
			];
			inMemory = 1000;
			maxLineCount = 999999;
		};
		shellProfile = ''
			# Launch tmux when:
			#	it's installed,
			#	current session is tty,
			#	not already in a tmux session, and
			#	in an interactive shell.
			#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [ $(expr "$TERM" : ".*screen") ] && [ -z "$TMUX" ]; then
			#	if command -v tmuxp &> /dev/null; then
			#		exec tmuxp load ~/.config/tmuxp/Default.yaml
			#	fi
			#fi
			
			# Back up home directory each time any terminal is opened.
			#backUp >$HOME/shell/functions/backUp/backUp.log 2>&1 &
		'';
		shellRc = ''
			# Source Shell Function(s)
			if [ -f $HOME/Shell/shell_functions ]; then
				. $HOME/Shell/shell_functions
			fi
		'';
	};
}
