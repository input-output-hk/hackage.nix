{
  "0.1.0.0" = {
    sha256 = "08924127b921071dbf952171a30cc0d12654a71d28f0c18af5df2c410ee329e3";
    revisions = {
      r0 = {
        nix = import ../hackage/portage-hs-0.1.0.0-r0-06cf01493896852cc3096db07a95eece127121eb6e5a4b31de3f642b9f1903e8.nix;
        revNum = 0;
        sha256 = "06cf01493896852cc3096db07a95eece127121eb6e5a4b31de3f642b9f1903e8";
      };
      r1 = {
        nix = import ../hackage/portage-hs-0.1.0.0-r1-ac1a36fb217f3c6ed3ea9cd75f001f0ae799d587b7dcf047ed243724c6b7e759.nix;
        revNum = 1;
        sha256 = "ac1a36fb217f3c6ed3ea9cd75f001f0ae799d587b7dcf047ed243724c6b7e759";
      };
      default = "r1";
    };
  };
}