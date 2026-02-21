  { config, ... }:
  #Limine Bootloader
  {
  boot = {
    loader.limine.enable = true;
    loader.limine.efiSupport = true;
    loader.efi.canTouchEfiVariables = true;
    extraModprobeConfig = ''
      options iwlwifi 11n_disable=1
      options iwlwifi power_save=0
    '';
  #sysctl parameters
  kernel.sysctl = {
    "vm.swappiness" = 10; 
    "vm.max_map_count" = 2147483642;  
    "kernel.sched_cfs_bandwith_slice_us" = 3000;  
    };
  #Kernel Parameters
  kernelParams = [ "nohibernate" "mitigations=off" "split_lock_detect=off" "amdgpu.ppfeaturemask=0xffffffff" ];
  }; 
 #ZRAM settings
  zramSwap = {
    enable = true;
    algorithm = "lz4";
    memoryPercent = 50;
    };



  }
