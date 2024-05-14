{
  "2.0" = {
    sha256 = "0fed3e768dd1632b16a03e95226c7fb3d1e652ca75a0f895e045b45d8a3e0cc2";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-lakeformation-2.0-r0-22f9aa327934d75b32577f1b093b9c1d4a8958d32e05dbec5f04ca93db6f3403.nix;
        revNum = 0;
        sha256 = "22f9aa327934d75b32577f1b093b9c1d4a8958d32e05dbec5f04ca93db6f3403";
      };
      r1 = {
        nix = import ../hackage/amazonka-lakeformation-2.0-r1-08f12939717ba4bf69c88eb09b54dad1f2603886198e2788b38cc3b943b43618.nix;
        revNum = 1;
        sha256 = "08f12939717ba4bf69c88eb09b54dad1f2603886198e2788b38cc3b943b43618";
      };
      default = "r1";
    };
  };
}