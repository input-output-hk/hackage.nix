{
  "2.0" = {
    sha256 = "f42eb4601bccf180a04ef08ec9b283b2bc370aad608f6b12dc6d9b29d5fa2817";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-datasync-2.0-r0-f517353be802e11887b2f1f6e79aca0c515df20233232b24b687c8a2b4abb50b.nix;
        revNum = 0;
        sha256 = "f517353be802e11887b2f1f6e79aca0c515df20233232b24b687c8a2b4abb50b";
      };
      r1 = {
        nix = import ../hackage/amazonka-datasync-2.0-r1-2c017e1d5f8d97b1c30af80b1d2796a91311def1970164c6ed30c524529676c6.nix;
        revNum = 1;
        sha256 = "2c017e1d5f8d97b1c30af80b1d2796a91311def1970164c6ed30c524529676c6";
      };
      default = "r1";
    };
  };
}