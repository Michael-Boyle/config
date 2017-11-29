{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    chromium
    pavucontrol
    git
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

}


