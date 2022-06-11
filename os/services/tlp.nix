{ config, pkgs, ... }:

{
  services.tlp = {
    enable = true;
    settings = {
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      ENERGY_PERF_POLICY_ON_BAT = "powersave";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
      SOUND_POWER_SAVE_ON_AC = "1";
      SOUND_POWER_SAVE_ON_BAT = "1";
      CPU_SCALING_MIN_FREQ_ON_BAT = 1400000;
      CPU_SCALING_MAX_FREQ_ON_BAT = 2000000;
      CPU_BOOST_ON_BAT = 0;
    };
  };
}
