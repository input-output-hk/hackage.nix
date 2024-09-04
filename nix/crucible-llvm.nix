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
}