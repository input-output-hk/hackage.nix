{
  "3.19" = {
    sha256 = "2746173b282aab4ff23422ff08457d4b2b9d1bf97dc38070ed4df8b5a38ab17d";
    revisions = {
      r0 = {
        nix = import ../hackage/copilot-bluespec-3.19-r0-e14ded7a05cd9d66b67365cc72c098afadc57c969bb3932427433d4d8e654230.nix;
        revNum = 0;
        sha256 = "e14ded7a05cd9d66b67365cc72c098afadc57c969bb3932427433d4d8e654230";
      };
      default = "r0";
    };
  };
  "3.20" = {
    sha256 = "e8b45ba4347b6578f38ed7516e9e2b8c9c15a3cf70bbf99c95bb210a2d4b5a5b";
    revisions = {
      r0 = {
        nix = import ../hackage/copilot-bluespec-3.20-r0-56a70954db4a8531b83ad3eda4b00a9340b85b32526fdc1b87c518ebb2145362.nix;
        revNum = 0;
        sha256 = "56a70954db4a8531b83ad3eda4b00a9340b85b32526fdc1b87c518ebb2145362";
      };
      default = "r0";
    };
  };
}