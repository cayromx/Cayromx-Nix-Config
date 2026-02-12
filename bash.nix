{ config, pkgs, ... }:

let 
  blesh = pkgs.blesh;
in 

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
