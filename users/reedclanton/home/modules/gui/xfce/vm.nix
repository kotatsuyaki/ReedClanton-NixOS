{ ... }: {
	imports = [
		../../applications/gui/firefox.nix
    ../../applications/gui/gedit.nix
		../../flatpak
		../../flatpak/applications/brave.nix
    ../../flatpak/applications/flatseal.nix
    ../../flatpak/applications/libre-office.nix
    ../../flatpak/applications/tor-browser-launcher.nix
	];
}