{ config, pkgs, ... }:

{ 
    programs.kitty = {
      enable = true;
      font = {
        name = "JetBrains Nerd Font";
        size = 12;
       };      
      settings = {
        background = "#0a0e1f";
        foreground = "#e8f0ff";
        cursor = "#00e0e0";
        selection_background = "#1e2a5a";
        selection_foreground = "#ffffff";
        url_color = "#6699ff";
        color0  = "#0a0e1f";
        color1  = "#ff4d4d";
        color2  = "#00c896";
        color3  = "#ffaa00";
        color4  = "#4d8cff";
        color5  = "#d14dff";
        color6  = "#00e0e0";
        color7  = "#f0f4ff";
        color8  = "#1c2338";
        color9  = "#ff6666";
        color10 = "#00e0a0";
        color11 = "#ffcc33"; 
        color12 = "#6699ff";
        color13 = "#e066ff";
        color14 = "#33ffff";
        color15 = "#ffffff";
       };
    };
}
