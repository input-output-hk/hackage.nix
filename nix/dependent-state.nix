{
  "1.0.0" = {
    sha256 = "455e5d415cf26d9b910f9619fd879b66f2976573b546c4a0931875ae34462f2a";
    revisions = {
      r0 = {
        nix = import ../hackage/dependent-state-1.0.0-r0-8f70249ea0e4bbcfe3c068ecd23dc20bb8d271fd176564da4055fbd0e995f516.nix;
        revNum = 0;
        sha256 = "8f70249ea0e4bbcfe3c068ecd23dc20bb8d271fd176564da4055fbd0e995f516";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "093aa20845a345c1d44e3d0258eadd6f8c38e3596cd6486be64879d0b60e7467";
    revisions = {
      r0 = {
        nix = import ../hackage/dependent-state-1.0.1-r0-e0ad95c9c31b73fe764b2c266c0d99675d2b3593c770e991d323458ba5d8d57d.nix;
        revNum = 0;
        sha256 = "e0ad95c9c31b73fe764b2c266c0d99675d2b3593c770e991d323458ba5d8d57d";
      };
      default = "r0";
    };
  };
}