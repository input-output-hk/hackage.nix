{
  "0.5.0.1" = {
    sha256 = "5a164a6d942f543c7a4569877ab2635998d9d888c0648af8eacc713f34e99f91";
    revisions = {
      r0 = {
        nix = import ../hackage/phatsort-0.5.0.1-r0-e4f4572be9c47bc028c2bbde255a849569f9fd802be88f36197d33ec833056ec.nix;
        revNum = 0;
        sha256 = "e4f4572be9c47bc028c2bbde255a849569f9fd802be88f36197d33ec833056ec";
        };
      r1 = {
        nix = import ../hackage/phatsort-0.5.0.1-r1-e86f1c9f40aea286b43a7a4ab057dd2266b6f63beba2a8f8102da87fc0eb481b.nix;
        revNum = 1;
        sha256 = "e86f1c9f40aea286b43a7a4ab057dd2266b6f63beba2a8f8102da87fc0eb481b";
        };
      default = "r1";
      };
    };
  }