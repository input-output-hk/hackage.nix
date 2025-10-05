{
  "0.1.0.0" = {
    sha256 = "30337a3bd9741786058aafc5d15f14d64edc63c30a8f432e3d785a07cecfa12f";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-compat-0.1.0.0-r0-a095593f0e17c1ceaeb83a7c30c97487ebf67a6b8a1e773796c87f1b52a0b810.nix;
        revNum = 0;
        sha256 = "a095593f0e17c1ceaeb83a7c30c97487ebf67a6b8a1e773796c87f1b52a0b810";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "8d8ebcc02d19d7668dd1e442f6978127be8f3a276cdeed3471acb142fa2a656d";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-compat-0.1.0.1-r0-b0308b660ad73dd076f666541ff273872eae7daaf4be701ebde72edcc638c02a.nix;
        revNum = 0;
        sha256 = "b0308b660ad73dd076f666541ff273872eae7daaf4be701ebde72edcc638c02a";
      };
      default = "r0";
    };
  };
}