{
  "0.0.0.0" = {
    sha256 = "7a06b65d9d4ddb38f54e865e38742d7b600e0f646f0e07ce9015659ff7563bf6";
    revisions = {
      r0 = {
        nix = import ../hackage/cabal-0.0.0.0-r0-4883ab76d5f537fc0dc3f50ffb074cfe3fb5eee4f4cc2c1617ffeef901dff0a2.nix;
        revNum = 0;
        sha256 = "4883ab76d5f537fc0dc3f50ffb074cfe3fb5eee4f4cc2c1617ffeef901dff0a2";
      };
      r1 = {
        nix = import ../hackage/cabal-0.0.0.0-r1-8ac020507eb47179c13a13973903401678e5b72e4ab8383083f3402c9a284817.nix;
        revNum = 1;
        sha256 = "8ac020507eb47179c13a13973903401678e5b72e4ab8383083f3402c9a284817";
      };
      r2 = {
        nix = import ../hackage/cabal-0.0.0.0-r2-3aaac7f6716c93dec3f62f807a2ab25217f419fa30f566a3d9c4ad939e075bb6.nix;
        revNum = 2;
        sha256 = "3aaac7f6716c93dec3f62f807a2ab25217f419fa30f566a3d9c4ad939e075bb6";
      };
      default = "r2";
    };
  };
}