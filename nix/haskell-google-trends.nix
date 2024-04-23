{
  "0.0.1" = {
    sha256 = "11b0e8682e0198c6d5d7d2304cd5400d7d7674f48ceef2721d9ba1b7a006973c";
    revisions = {
      r0 = {
        nix = import ../hackage/haskell-google-trends-0.0.1-r0-58d438e587ef8e8fb9ee26ae4cf3863ed3df3a84fbc21ecf3a09d30fc9822dfb.nix;
        revNum = 0;
        sha256 = "58d438e587ef8e8fb9ee26ae4cf3863ed3df3a84fbc21ecf3a09d30fc9822dfb";
      };
      r1 = {
        nix = import ../hackage/haskell-google-trends-0.0.1-r1-cabd93ef57a336564ac2d4989063ce130f2d83f11346b3bfb350732f70c90ed3.nix;
        revNum = 1;
        sha256 = "cabd93ef57a336564ac2d4989063ce130f2d83f11346b3bfb350732f70c90ed3";
      };
      default = "r1";
    };
  };
  "0.0.2" = {
    sha256 = "e125197433c5eccbfe9b373f2f1a501d9fff56697524333d8d6a44f7f93b5f47";
    revisions = {
      r0 = {
        nix = import ../hackage/haskell-google-trends-0.0.2-r0-59ab0e479b7c9ccd6addf73c66f1e2758f27842e8d0e6b7ff7733f0d121a67ea.nix;
        revNum = 0;
        sha256 = "59ab0e479b7c9ccd6addf73c66f1e2758f27842e8d0e6b7ff7733f0d121a67ea";
      };
      r1 = {
        nix = import ../hackage/haskell-google-trends-0.0.2-r1-e667493c8945f7f8fcaa3f847c9ee8e0016079d237f75320182d12d9fa674f79.nix;
        revNum = 1;
        sha256 = "e667493c8945f7f8fcaa3f847c9ee8e0016079d237f75320182d12d9fa674f79";
      };
      default = "r1";
    };
  };
}