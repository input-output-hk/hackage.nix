{
  "2.0" = {
    sha256 = "46fb085103e1fb70bdaccdf633831b582aea6df0eba3917cd5d34989f9f87231";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-location-2.0-r0-52feb22d8e7c7d47b5346a817ac3f030adc611786a2dd112c3dba671dd33d32a.nix;
        revNum = 0;
        sha256 = "52feb22d8e7c7d47b5346a817ac3f030adc611786a2dd112c3dba671dd33d32a";
      };
      r1 = {
        nix = import ../hackage/amazonka-location-2.0-r1-d2ae2e81ba2d6d7fb604e2d91793562dd6a36ab19bb92724449c52449f3ec15c.nix;
        revNum = 1;
        sha256 = "d2ae2e81ba2d6d7fb604e2d91793562dd6a36ab19bb92724449c52449f3ec15c";
      };
      default = "r1";
    };
  };
}