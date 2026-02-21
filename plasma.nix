{ config, pkgs, ... }: 

{
  programs.plasma = { 
    enable = true; 
    workspace = {
      cursor.theme = "Catppuccin Frappe Blue";
      iconTheme = "Papirus-Dark";
      lookAndFeel = "Catppuccin-Frappe-Blue";
      splashScreen.theme = "Catppuccin Frappe Blue";
      theme = "Catppuccin-Frappe-Blue";
     };
 };
}
