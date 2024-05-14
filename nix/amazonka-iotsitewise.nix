{
  "2.0" = {
    sha256 = "2d54704e0bb599470804ff0412771861965931b715bc12410dcf18e855f9f2c7";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-iotsitewise-2.0-r0-fa9444bd1d63fb9fed139e10221ccca098d7cc6cfe55f8b521049793837b8a04.nix;
        revNum = 0;
        sha256 = "fa9444bd1d63fb9fed139e10221ccca098d7cc6cfe55f8b521049793837b8a04";
      };
      r1 = {
        nix = import ../hackage/amazonka-iotsitewise-2.0-r1-348136cbb339af4e6d1221bc41b3c1cd32a5e4d1388ae9d1aad0f1c3c7509c35.nix;
        revNum = 1;
        sha256 = "348136cbb339af4e6d1221bc41b3c1cd32a5e4d1388ae9d1aad0f1c3c7509c35";
      };
      default = "r1";
    };
  };
}