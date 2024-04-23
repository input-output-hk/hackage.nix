{
  "0.1" = {
    sha256 = "c6c66c4a4530530e7a736e81d385bbda2631501a057ddffe045793d01d4b4d73";
    revisions = {
      r0 = {
        nix = import ../hackage/cryptsy-api-0.1-r0-64cb94e65bbb8a06d50d9fd28d44fbabf4b0e5f7f83ad11c6b4906f57aa2ea8c.nix;
        revNum = 0;
        sha256 = "64cb94e65bbb8a06d50d9fd28d44fbabf4b0e5f7f83ad11c6b4906f57aa2ea8c";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "7cde64faaa3abf9381893f58377e27d3a8801a544412c421b928c6a0cd4f5d27";
    revisions = {
      r0 = {
        nix = import ../hackage/cryptsy-api-0.2-r0-f1cc44cdc47ae2c7f9aef506a1d4dbe7ec394eab5459469aaa3cbcb014588825.nix;
        revNum = 0;
        sha256 = "f1cc44cdc47ae2c7f9aef506a1d4dbe7ec394eab5459469aaa3cbcb014588825";
      };
      default = "r0";
    };
  };
  "0.2.1" = {
    sha256 = "7a7980ac98b202a60c88f2d77045df57ec607e4a993b2bd43c39137f0efcd6ce";
    revisions = {
      r0 = {
        nix = import ../hackage/cryptsy-api-0.2.1-r0-4d6c3e24bece65fae01d27f8b7959c4a2ee84c502d52852040348681374d7253.nix;
        revNum = 0;
        sha256 = "4d6c3e24bece65fae01d27f8b7959c4a2ee84c502d52852040348681374d7253";
      };
      r1 = {
        nix = import ../hackage/cryptsy-api-0.2.1-r1-3fbad883e1f3f32764c8c25b2a2a90130a9bcbbe29cfdc7f7a28d7eb1b98ea48.nix;
        revNum = 1;
        sha256 = "3fbad883e1f3f32764c8c25b2a2a90130a9bcbbe29cfdc7f7a28d7eb1b98ea48";
      };
      default = "r1";
    };
  };
}