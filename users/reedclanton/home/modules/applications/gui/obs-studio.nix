{ config, user, ... }: {
	home.file = {
		"${config.xdg.userDirs.videos}/OBS/.keep".text = "Home Manager can only create directories that contain something. Thus in order for Home Manager to creation the directory this file is in, a file must be created in it. Hense the existice of this file.";
		"${config.xdg.configHome}/obs-studio/basic/profiles/${user.name}/basic.ini".source = ../../../config/obs-studio/basic.ini;
	};
	programs.obs-studio = {
		enable = true;
#		plugins = [
#		];
	};
}

