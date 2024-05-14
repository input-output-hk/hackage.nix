{
  "2.0" = {
    sha256 = "6b0c9624b7625dad4436c6dd7eb87bfca7df7fc723efe0eda80087ef2aee11fa";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-healthlake-2.0-r0-1af9972bf2b0c260ba7dcb4d35038bcb1da2ec3518a2e2011720ad73f4cb308a.nix;
        revNum = 0;
        sha256 = "1af9972bf2b0c260ba7dcb4d35038bcb1da2ec3518a2e2011720ad73f4cb308a";
      };
      r1 = {
        nix = import ../hackage/amazonka-healthlake-2.0-r1-cc4b9b55d2b64373dffeba0f84dfadba2ebb4085046406ac365e7398f5bfdd5f.nix;
        revNum = 1;
        sha256 = "cc4b9b55d2b64373dffeba0f84dfadba2ebb4085046406ac365e7398f5bfdd5f";
      };
      default = "r1";
    };
  };
}