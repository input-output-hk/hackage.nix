{
  "0.6" = {
    sha256 = "27b6b5dc3857802f1a36976d56c691c87c372b2767fbecc2e85ae3627ea35e56";
    revisions = {
      r0 = {
        nix = import ../hackage/crucible-llvm-0.6-r0-95e4f64f1e096f0d6d54c7111ef00fd361ae5a5cef005b48a2c536bbf5d0793c.nix;
        revNum = 0;
        sha256 = "95e4f64f1e096f0d6d54c7111ef00fd361ae5a5cef005b48a2c536bbf5d0793c";
      };
      default = "r0";
    };
  };
  "0.7" = {
    sha256 = "133855ab87d0dbb86451734e480a98f09512554c8f064dd464caf070121b8d6c";
    revisions = {
      r0 = {
        nix = import ../hackage/crucible-llvm-0.7-r0-5b3e70d800f4e0f86cafbf3a04c12e13b29150d78e6c931ccd29f80a5196c08f.nix;
        revNum = 0;
        sha256 = "5b3e70d800f4e0f86cafbf3a04c12e13b29150d78e6c931ccd29f80a5196c08f";
      };
      r1 = {
        nix = import ../hackage/crucible-llvm-0.7-r1-b3d79072df7066bd0d3a855f6fbf538a9239de95b1ef6772ccb46aa48f4f0686.nix;
        revNum = 1;
        sha256 = "b3d79072df7066bd0d3a855f6fbf538a9239de95b1ef6772ccb46aa48f4f0686";
      };
      default = "r1";
    };
  };
  "0.7.1" = {
    sha256 = "7af55f37aa8e67494b67545bf820e295cf052dd1698b048abcbbadd7b6745160";
    revisions = {
      r0 = {
        nix = import ../hackage/crucible-llvm-0.7.1-r0-baa71f41e374744c121b9c9e6a63e45b6feec6d584822ecfefbf02998bf10f62.nix;
        revNum = 0;
        sha256 = "baa71f41e374744c121b9c9e6a63e45b6feec6d584822ecfefbf02998bf10f62";
      };
      r1 = {
        nix = import ../hackage/crucible-llvm-0.7.1-r1-ef89580d16fe62b9d21c9acc9f8634e6775d8c6b2819f49fc7c62d2cc5ec8bdf.nix;
        revNum = 1;
        sha256 = "ef89580d16fe62b9d21c9acc9f8634e6775d8c6b2819f49fc7c62d2cc5ec8bdf";
      };
      r2 = {
        nix = import ../hackage/crucible-llvm-0.7.1-r2-7d7e6a303aed7c5cd86418ab521a7d1a4db801177b80b72c59c4a0c30bca648a.nix;
        revNum = 2;
        sha256 = "7d7e6a303aed7c5cd86418ab521a7d1a4db801177b80b72c59c4a0c30bca648a";
      };
      default = "r2";
    };
  };
}