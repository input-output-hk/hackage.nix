{
  "4.0.0" = {
    sha256 = "72406e4a269ef43227ed05ea58b2aca48b09e2ef3b5c182d3adb350c277ce545";
    revisions = {
      r0 = {
        nix = import ../hackage/openapi-hs-4.0.0-r0-865b38d7d896d29ef09b3cbab6ccf163d3d180bb5fc3547a2904350369fe6d69.nix;
        revNum = 0;
        sha256 = "865b38d7d896d29ef09b3cbab6ccf163d3d180bb5fc3547a2904350369fe6d69";
      };
      default = "r0";
    };
  };
  "4.1.0" = {
    sha256 = "797e8d473941f0ea9ecf8aab67ff0673e79c455f50043104dbaee0efd33c447a";
    revisions = {
      r0 = {
        nix = import ../hackage/openapi-hs-4.1.0-r0-ea2bd0078b43ca4902bcce57c949e925057cd3d6e83ed18fa847f741c407ad6c.nix;
        revNum = 0;
        sha256 = "ea2bd0078b43ca4902bcce57c949e925057cd3d6e83ed18fa847f741c407ad6c";
      };
      default = "r0";
    };
  };
}