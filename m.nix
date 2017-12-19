{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    chromium
    pavucontrol
    git
    wine
    qbittorrent
    xorg.xkill
    xfce.thunar
    atom
    file
    unzip
    eclipses.eclipse-cpp
    libreoffice
    exfat
    exfat-utils
    fuse_exfat
  ];

  programs.chromium = {
    enable = true;
    extensions =
    [
      "iebboopaeangfpceklajfohhbpkkfiaa" # Deluminate
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # Ublock Origin
      "bfbameneiokkgbdmiekhjnmfkcnldhhm" # Web Developer
      "bkeidgmehkdjmpjodpjkepolokanalkm" # James White Theme
    ];
  };

  hardware.opengl.driSupport32Bit = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  nixpkgs.config.allowUnfree = true;
  services.compton.enable = true;


}
