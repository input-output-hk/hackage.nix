{
  "2.0" = {
    sha256 = "d2668aaa0c2372ef607c0ad2898ea836a62d31e620a4869b0493bf3b8e08d0d0";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-personalize-2.0-r0-f7973bde1d4992a571cad04d1c5ade5de52f1b7e33d941d9207e8d33d9bab060.nix;
        revNum = 0;
        sha256 = "f7973bde1d4992a571cad04d1c5ade5de52f1b7e33d941d9207e8d33d9bab060";
      };
      r1 = {
        nix = import ../hackage/amazonka-personalize-2.0-r1-d4d16f4ba91d8606f769144835a3d006f5ac2ab5d6f3b17ec31abc62f54e4fb2.nix;
        revNum = 1;
        sha256 = "d4d16f4ba91d8606f769144835a3d006f5ac2ab5d6f3b17ec31abc62f54e4fb2";
      };
      default = "r1";
    };
  };
}