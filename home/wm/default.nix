{ pkgs, ... }:

let
  super = "Mod4";
  alt = "Mod1";
  scriptsDir = "/home/helium/.config/scripts";

  left = "h";
  down = "j";
  up = "k";
  right = "l";
in
{
  imports = [
    ./theme.nix
  ];

  # wm config
  xsession = {
    enable = true;

    windowManager = {
      i3 = {
        enable = true;

        package = pkgs.i3-gaps;

        config = rec {
          bars = [ ];

          window.border = 0;

          gaps = {
            inner = 15;
          };

          floating.modifier = "${super}";

          keybindings = {
            "${super}+t" = "exec ${pkgs.kitty}/bin/kitty"; # terminal
            "${alt}+space" = "exec \"${pkgs.rofi}/bin/rofi -modi drun,window -show drun -show-icons\""; # launcher
            "Print" = "exec ${pkgs.maim}/bin/maim -s | xclip -selection clipboard -t image/png"; # ss
            "Ctrl+Print" = "exec ${pkgs.maim}/bin/maim | xclip -selection clipboard -t image/png"; # ss
            "Ctrl+Shift+Print" = "exec ${pkgs.flameshot}/bin/flameshot gui"; # ss
            "XF86Calculator" = "exec ${pkgs.qalculate-gtk}/bin/qalculate-gtk"; # calculator

            # function keys
            "XF86AudioMute" = "exec ${scriptsDir}/volume mute";
            "XF86AudioLowerVolume" = "exec ${scriptsDir}/volume down";
            "XF86AudioRaiseVolume" = "exec ${scriptsDir}/volume up";
            "XF86MonBrightnessDown" = "exec ${scriptsDir}/brightness down";
            "XF86MonBrightnessUp" = "exec ${scriptsDir}/brightness up";
            "XF86AudioPlay" = "exec ${pkgs.playerctl}/bin/playerctl play-pause";
            "XF86AudioNext" = "exec ${pkgs.playerctl}/bin/playerctl next";
            "XF86AudioPrev" = "exec ${pkgs.playerctl}/bin/playerctl previous";

            # change focus 
            "${super}+${left}" = "focus left";
            "${super}+${down}" = "focus down";
            "${super}+${up}" = "focus up";
            "${super}+${right}" = "focus right";

            # move focused window
            "${super}+Shift+${left}" = "move left";
            "${super}+Shift+${down}" = "move down";
            "${super}+Shift+${up}" = "move up";
            "${super}+Shift+${right}" = "move right";

            # split in horizontal orientation
            "Ctrl+${super}+h" = "split h";

            # split in vertical orientation
            "Ctrl+${super}+v" = "split v";

            # enter fullscreen mode for the focused container
            "${super}+f" = "fullscreen toggle";

            # change container layout (stacked, tabbed, toggle split)
            "${super}+w" = "layout stacking";
            "${super}+s" = "layout tabbed";
            "${super}+e" = "layout toggle split";

            # focus the parent container
            "${super}+a" = "focus parent";

            # move the currently focused window to the scratchpad
            "${super}+Shift+minus" = "move scratchpad";

            # Show the next scratchpad window or hide the focused scratchpad window.
            # If there are multiple scratchpad windows, this command cycles through them.
            "${super}+minus" = "scratchpad Show";

            # switch to workspace
            "${super}+1" = "exec ${scriptsDir}/workspace 1";
            "${super}+2" = "exec ${scriptsDir}/workspace 2";
            "${super}+3" = "exec ${scriptsDir}/workspace 3";
            "${super}+4" = "exec ${scriptsDir}/workspace 4";
            "${super}+5" = "exec ${scriptsDir}/workspace 5";
            "${super}+6" = "exec ${scriptsDir}/workspace 6";

            "Ctrl+${super}+k" = "exec ${scriptsDir}/workspace prev";
            "Ctrl+${super}+j" = "exec ${scriptsDir}/workspace next";

            # move focused container to workspace
            "${super}+Shift+1" = "move container to workspace number 1";
            "${super}+Shift+2" = "move container to workspace number 2";
            "${super}+Shift+3" = "move container to workspace number 3";
            "${super}+Shift+4" = "move container to workspace number 4";
            "${super}+Shift+5" = "move container to workspace number 5";
            "${super}+Shift+6" = "move container to workspace number 6";

            # reload configuration file
            "${super}+Shift+c" = "reload";

            # restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
            "${super}+Shift+r" = "restart";

            # exit i3 (logs you out of your X session)
            "${super}+Shift+e" = "exec \"i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'\"";

            # close window
            "${super}+q" = "kill";

            # resize
            "${super}+r" = "mode resize";

            # floating
            "${super}+Shift+space" = "floating toggle";
            "${super}+space" = "focus mode_toggle";
          };

          startup = [
            {
              command = "${pkgs.feh}/bin/feh --bg-scale ~/Downloads/mount.jpg"; # fix me (cloudy.png -> bg.png)
              always = true;
              notification = false;
            }
            {
              command = "eww open panel";
              always = false;
              notification = false;
            }
            {
              command = "${pkgs.autotiling}/bin/autotiling";
              always = false;
              notification = false;
            }
            {
              command = "${scriptsDir}/battery-notify 36 80";
              always = false;
              notification = false;
            }
            {
              command = "${pkgs.libinput-gestures}/bin/libinput-gestures";
              always = false;
              notification = false;
            }
            {
              command = "${scriptsDir}/refresh > /dev/null"; # updates the volume btn (eww bar) when a new device is plugged in 
              always = false;
              notification = false;
            }
          ];
        };

        extraConfig = ''
          assign [class="Spotify"] 1
          assign [class="Chromium-browser"] 2
          assign [class="kitty"] 3
          assign [class="Qalculate-gtk"] 3
          assign [class="TelegramDesktop"] 4
          assign [class="obsidian"] 4
        '';
      };
    };
  };
}
