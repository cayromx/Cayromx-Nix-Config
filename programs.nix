  { config, pkgs, unstable, ... }: 

       {
         environment.systemPackages = with pkgs; [
         vim 
         wget
         btop
         discord
         easyeffects
         fastfetch
         lact
         goverlay
         tree 
         unzip
         qemu
         virt-manager
         libvirt
         nerd-fonts.jetbrains-mono
         heroic
         lutris
         catppuccin-kde
         protonup-qt
         openssh
         qt6Packages.qtstyleplugin-kvantum
         catppuccin-kvantum
         gcc
         #cisco override
        ( ciscoPacketTracer8.override { 
           packetTracerSource = fetchurl { 
             url = "https://archive.org/download/cisco-packet-tracer-822-amd-64-signed_202405/CiscoPacketTracer822_amd64_signed.deb";
             sha256 = "0bgplyi50m0dp1gfjgsgbh4dx2f01x44gp3gifnjqbgr3n4vilkc";
            };
           })
         ]; 
         
         
         nixpkgs.config.permittedInsecurePackages = [ 
           "ciscoPacketTracer8-8.2.2"
         ];

           
         programs = {
         steam = {
           enable = true;
           protontricks.enable = true;  
          };
         gamemode = {
           enable = true; 
           settings = {
             general = {
               renice = 10;
               softrealtime = "on";
              };
             };
            };
         };
          
	}
