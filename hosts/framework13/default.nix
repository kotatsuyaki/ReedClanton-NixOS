{ ... }: {
	imports = [
		# Include the results of the hardware scan.
		./hardware-configuration.nix
    # Commented out because installing newer firemware prevents shutdown and boot.
#    ../../modules/hardware/wifi/mt7961
		# Setup this host.
		../../modules/boot/efi-systemd.nix
		../../modules/documentation
		../../modules/getty
		../../modules/language
		./modules/networking
		../../modules/nix
		./modules/packages
		../../modules/printing
		../../modules/programs
		../../modules/sound
		../../modules/ssh
		./modules/sudo
		../../modules/time
		../../modules/tty
		../../modules/v4l2loopback
		../../modules/virtualisation
		../../modules/xdg
	];

	# Enable firmware updating (run `fwupdmgr update` in terminal to update).
	services.fwupd.enable = true;
}
