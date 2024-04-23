{
  "0.0.1" = {
    sha256 = "32dea19e341fba29601ade094ff2679d31af3155ae113aacc4af5927a06758d1";
    revisions = {
      r0 = {
        nix = import ../hackage/haskoin-protocol-0.0.1-r0-9f62cbb9ae800a2198061bd2d447d40eb6de6fd3783b57a64ed17b5ee40f03c8.nix;
        revNum = 0;
        sha256 = "9f62cbb9ae800a2198061bd2d447d40eb6de6fd3783b57a64ed17b5ee40f03c8";
      };
      r1 = {
        nix = import ../hackage/haskoin-protocol-0.0.1-r1-45f514c90d1e751d0977f4c3b9c4b1d7190364069d869cc63cc17727c8b65908.nix;
        revNum = 1;
        sha256 = "45f514c90d1e751d0977f4c3b9c4b1d7190364069d869cc63cc17727c8b65908";
      };
      default = "r1";
    };
  };
  "0.0.1.1" = {
    sha256 = "5bbc6c71231b4e4bb7a66aa0142f3d1c65b3272ff46af04b6abb3ceabd662564";
    revisions = {
      r0 = {
        nix = import ../hackage/haskoin-protocol-0.0.1.1-r0-4c264cb580d8d5ed84c4ea0c7fe343ca9e93cfbced75daf45f465c4c0ac5ace9.nix;
        revNum = 0;
        sha256 = "4c264cb580d8d5ed84c4ea0c7fe343ca9e93cfbced75daf45f465c4c0ac5ace9";
      };
      r1 = {
        nix = import ../hackage/haskoin-protocol-0.0.1.1-r1-3fb8a44a00dbcede47fa3653f8f2ab8efa0937e827179e14019637079ef1bcea.nix;
        revNum = 1;
        sha256 = "3fb8a44a00dbcede47fa3653f8f2ab8efa0937e827179e14019637079ef1bcea";
      };
      default = "r1";
    };
  };
}