{
  "0.6.1" = {
    sha256 = "eb6205e40957b8f82562b02cdf33571b6a678bcec6ee78d0ef2879f27e04ebfe";
    revisions = {
      r0 = {
        nix = import ../hackage/liquid-ghc-prim-0.6.1-r0-83ef2d8fb705f31f269ce2b3e05af4333fb77c7083d3a56c25032dffd6dfd7b7.nix;
        revNum = 0;
        sha256 = "83ef2d8fb705f31f269ce2b3e05af4333fb77c7083d3a56c25032dffd6dfd7b7";
      };
      r1 = {
        nix = import ../hackage/liquid-ghc-prim-0.6.1-r1-40354092dc5b954e00aeaaf4163699480d8ad20f3dfe716694905d6d383ae77d.nix;
        revNum = 1;
        sha256 = "40354092dc5b954e00aeaaf4163699480d8ad20f3dfe716694905d6d383ae77d";
      };
      default = "r1";
    };
  };
  "0.7.0" = {
    sha256 = "6b95f6c2e50e82b885a1d3129d1c7c75d0ab539e3090524d85e06de6c06bd05f";
    revisions = {
      r0 = {
        nix = import ../hackage/liquid-ghc-prim-0.7.0-r0-8d99d771235d388ed54393faa2712c880e60b659fa574877fc5f383d4d49f4ed.nix;
        revNum = 0;
        sha256 = "8d99d771235d388ed54393faa2712c880e60b659fa574877fc5f383d4d49f4ed";
      };
      r1 = {
        nix = import ../hackage/liquid-ghc-prim-0.7.0-r1-dea0b194a374f57c4d4ae45f901a646a26fb514c2886a070eb9d9d33ef96cd90.nix;
        revNum = 1;
        sha256 = "dea0b194a374f57c4d4ae45f901a646a26fb514c2886a070eb9d9d33ef96cd90";
      };
      default = "r1";
    };
  };
  "0.7.0.1" = {
    sha256 = "e26559fe5e17503f73de0bb4b16e9d056a4ed219292cc32b13638999671033a9";
    revisions = {
      r0 = {
        nix = import ../hackage/liquid-ghc-prim-0.7.0.1-r0-ae880bce42ba80f322db21912f42fe55315409f055edbf18df3682826f664c80.nix;
        revNum = 0;
        sha256 = "ae880bce42ba80f322db21912f42fe55315409f055edbf18df3682826f664c80";
      };
      r1 = {
        nix = import ../hackage/liquid-ghc-prim-0.7.0.1-r1-9cc9118aacaff169947f6defec682680d2a6841a9c6cb92fa441336160cbb24e.nix;
        revNum = 1;
        sha256 = "9cc9118aacaff169947f6defec682680d2a6841a9c6cb92fa441336160cbb24e";
      };
      default = "r1";
    };
  };
}