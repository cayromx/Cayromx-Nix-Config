{ config, pkgs, ... }:

{
    programs.mangohud = {
    enable = true;
    settings = {
      cpu_text = "CPU";
      cpu_stats = true;
      cpu_mhz = true;
      cpu_temp = true; 
      cpu_power = true;
      cpu_color = "2E97CB";
      vram = true;
      vram_color = "AD64C1";
      ram = true;
      ram_color = "C26693";
      fps = true; 
      frametime = true;
      frametime_color = "00FF00";
      fps_limit_method = "late"; 
      fps_limit = "0";
      gpu_load = true;
      gpu_fan = true;
      gpu_junction_temp = true;
      gpu_temp = true;
      gpu_core_clock = true;
      gamemode = true;
     };
    };
}
