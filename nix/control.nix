{
  "0.1.0.0" = {
    sha256 = "2e9c472e489869d5cf4a06c9476f8b7278db3cd4314892ad88aae46d3a8ad443";
    revisions = {
      r0 = {
        nix = import ../hackage/control-0.1.0.0-r0-769462cf54609563ca32d75fb8616f56142e8c688f714e0b211617117dda5292.nix;
        revNum = 0;
        sha256 = "769462cf54609563ca32d75fb8616f56142e8c688f714e0b211617117dda5292";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "ef77325cfbc02d25e1ed5025de9d5c4f25de9e3050cb9fddbd0ffe57c1e0238d";
    revisions = {
      r0 = {
        nix = import ../hackage/control-0.1.1.0-r0-f1109598851c73166824cc58b167481c523682d797184b574df162085d5b0065.nix;
        revNum = 0;
        sha256 = "f1109598851c73166824cc58b167481c523682d797184b574df162085d5b0065";
      };
      r1 = {
        nix = import ../hackage/control-0.1.1.0-r1-a27a2026e0761962e5f050c5cec2f3db1bc433cf9de174b0ec346cfe45c8cfda.nix;
        revNum = 1;
        sha256 = "a27a2026e0761962e5f050c5cec2f3db1bc433cf9de174b0ec346cfe45c8cfda";
      };
      default = "r1";
    };
  };
}