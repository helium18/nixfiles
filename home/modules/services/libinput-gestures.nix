{ pkgs, config, ... }: 

let 
  scriptsDir = "/home/helium/.config/scripts";
in {
  xdg.configFile."libinput-gestures.conf".text = ''
    gesture swipe up 4 ${scriptsDir}/workspace next
    gesture swipe down 4 ${scriptsDir}/workspace prev 
    gesture swipe right 4 ${pkgs.playerctl}/bin/playerctl next
    gesture swipe left 4 ${pkgs.playerctl}/bin/playerctl previous
    gesture swipe right 3 ${pkgs.i3}/bin/i3-msg focus right
    gesture swipe left 3 ${pkgs.i3}/bin/i3-msg focus left
    gesture swipe up 3 ${pkgs.i3}/bin/i3-msg focus up
    gesture swipe down 3 ${pkgs.i3}/bin/i3-msg focus down
  '';
}
