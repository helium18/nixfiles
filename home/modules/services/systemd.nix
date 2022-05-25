{ pkgs, ... }:

{
  systemd.user.services = {
    safeeyes = {
      Unit = {
        Description = "Prevent eye strain";
      };

      Service = {
        ExecStart = "${pkgs.safeeyes}/bin/safeeyes";
        ExecStop = "pkill safeeyes";
        Restart = "on-failure";
      };

      Install = {
        WantedBy = [ "default.target" ];
      };
    };
  };
}
