{
  "2.0" = {
    sha256 = "96558febf8ba4e65fed6708faeb868d94fc3eb50d88b319ae688d64e2498d99e";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-personalize-events-2.0-r0-080f47f3963e14c8104c6ba4473514e585f281ccbf28a83caa44133d128b7db4.nix;
        revNum = 0;
        sha256 = "080f47f3963e14c8104c6ba4473514e585f281ccbf28a83caa44133d128b7db4";
      };
      r1 = {
        nix = import ../hackage/amazonka-personalize-events-2.0-r1-908a9823c87eda0e8f5430610181918af75dc53f233ac7e9937c561cb336f660.nix;
        revNum = 1;
        sha256 = "908a9823c87eda0e8f5430610181918af75dc53f233ac7e9937c561cb336f660";
      };
      default = "r1";
    };
  };
}