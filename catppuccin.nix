{ config, pkgs, ... }:

{
  catppuccin = {
    enable = true;
    flavor = "frappe";
    accent = "blue";
    vscode.enable = true;
    btop.enable = true;
    firefox.enable = true;
    kitty.enable = true;
    kvantum.enable = true; 
    kvantum.apply = true;
   };
  # To aktywuje motyw dla aplikacji GTK (np. Nautilus, Control Center, Thunar)
  gtk = {
    enable = true;
    theme = {
      name = "catppuccin-frappe-blue-standard";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "blue" ];
        size = "standard";
        variant = "frappe";
      };
    };
  };
  # To z kolei dba o ikony (żeby nie były standardowe/szare)
#  catppuccin.pointerCursor = {
#    enable = true;
#    flavor = "mocha";
#    accent = "sapphire";
#  };

}
