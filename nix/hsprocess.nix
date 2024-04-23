{
  "0.2" = {
    sha256 = "e3cd0a9ffb57a37c7ad391823413c23e6b8d3682c7b705e376c0c6175221abd0";
    revisions = {
      r0 = {
        nix = import ../hackage/hsprocess-0.2-r0-60323094e99a452df3ea34f66c75db4180a9cf737a7ba5bfaa797cd73cbe3edb.nix;
        revNum = 0;
        sha256 = "60323094e99a452df3ea34f66c75db4180a9cf737a7ba5bfaa797cd73cbe3edb";
      };
      default = "r0";
    };
  };
  "0.3" = {
    sha256 = "bf28226f86505997b6908681fae2c9c7ba25660defdc7b9cff763e87e27887bc";
    revisions = {
      r0 = {
        nix = import ../hackage/hsprocess-0.3-r0-55bfec8cbcd5709c7caf9fab488c60b9906e66eb0fbd5a2072cfb28818dd2f7f.nix;
        revNum = 0;
        sha256 = "55bfec8cbcd5709c7caf9fab488c60b9906e66eb0fbd5a2072cfb28818dd2f7f";
      };
      default = "r0";
    };
  };
}