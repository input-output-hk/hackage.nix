{
  "0.1" = {
    sha256 = "47fadd088d4eb2d2580491975a4d7a7d0574ddda8576192c1c4b8b369d353bfb";
    revisions = {
      r0 = {
        nix = import ../hackage/sscan-0.1-r0-a10f47c102bb2129b12297cf40575f783f200b20e293391c2e902300e588e200.nix;
        revNum = 0;
        sha256 = "a10f47c102bb2129b12297cf40575f783f200b20e293391c2e902300e588e200";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "e50d49d2f8f0104cafeb674ccfb24f8260721aac2b53164119e8a2aefb73c27f";
    revisions = {
      r0 = {
        nix = import ../hackage/sscan-0.2-r0-483692e3ab1eb40ae8f3747660375b5a9f591dc5bd0c45335e4101f33b661f84.nix;
        revNum = 0;
        sha256 = "483692e3ab1eb40ae8f3747660375b5a9f591dc5bd0c45335e4101f33b661f84";
      };
      default = "r0";
    };
  };
}