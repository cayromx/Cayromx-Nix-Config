{ config, pkgs, ... }:

{
  
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      line_break = {
        disabled = true;
       };
      time = { 
        disabled = false;
        time_format = "%R";
        style = "fg:#000000 italic bold bg:#DCD6F0";
        format = "[ 🕙$time ]($style)";
        use_12hr = false;
       };
      directory = {
        style = "fg:#000000 italic bold bg:#C9E4DE";
        truncation_length = 3;
        truncation_symbol = "";
        format = "[ $path ]($style)"; 
        disabled = false;
        
       };
      git_branch = {
        symbol = "";
        style = "fg:#000000 italic bold bg:#D1E8F0";
        format = "[ $symbol$branch(:$remote_branch) ]($style)";
      };
      username = {
        style_user = "fg:#000000 italic bold bg:#F0F4F7";
        disabled = false;
        show_always = true;
        format = "[ $user ]($style)";
      };
#      shell = {
#        bash_indicator = "$";
#        disabled = false;
#        style = "fg:#000000 italic bold bg:#F0DDE3";
#        format = "[ $indicator ]($style)";
#      };
      git_status = {
        disabled = true;
      };
      cmd_duration = {
        disabled = true; 
      };
      character = {
        format = " $symbol ";
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
        vimcmd_symbol = "[❮](bold green)";
        vimcmd_replace_one_symbol = "[❮](bold purple)";
        vimcmd_replace_symbol = "[❮](bold purple)";
        vimcmd_visual_symbol = "[❮](bold yellow)";
        disabled = false;
      };
    }; 
   };
}
