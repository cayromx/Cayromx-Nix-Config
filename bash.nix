{ config, pkgs, ... }:

{
    programs.bash = {
    enable = true;
    shellAliases = {
       ".." = "cd ..";
       rebuild = "sudo nixos-rebuild switch --flake .#przemyslaw";
      };
    initExtra = ''
      source ${blesh}/share/blesh/ble.sh
      fastfetch
   '';
   };
}
