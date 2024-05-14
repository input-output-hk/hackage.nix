{
  "2.0" = {
    sha256 = "fe6d116cd99be9a04f2c1fbc78fc96d7c7b75972243aad1c98dcf90df0fe5aa3";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-support-app-2.0-r0-41320991e44416282d0b9453ef11473513bebaf1fc805f67c5e09d3838b3e98f.nix;
        revNum = 0;
        sha256 = "41320991e44416282d0b9453ef11473513bebaf1fc805f67c5e09d3838b3e98f";
      };
      r1 = {
        nix = import ../hackage/amazonka-support-app-2.0-r1-825da6308fea4ec3399c32f73a9652f4deab86d5c413a0654f09b4b05b6f2d28.nix;
        revNum = 1;
        sha256 = "825da6308fea4ec3399c32f73a9652f4deab86d5c413a0654f09b4b05b6f2d28";
      };
      default = "r1";
    };
  };
}