{ pkgs, config, ... }: 

{
  xdg.configFile."libinput-gestures.conf".text = ''
    gesture swipe up 4 /home/helium/.config/scripts/workspace next
    gesture swipe down 4 /home/helium/.config/scripts/workspace prev 
    gesture swipe right 4 ${pkgs.playerctl}/bin/playerctl next
    gesture swipe left 4 ${pkgs.playerctl}/bin/playerctl previous
    gesture swipe right 3 i3-msg focus right
    gesture swipe left 3 i3-msg focus left
    gesture swipe up 3 i3-msg focus up
    gesture swipe down 3 i3-msg focus down
  '';
}
