{
  "0.1.0.0" = {
    sha256 = "44ffad5cdb693969b0b6df3af8a6f7dda3312ef794f2840c6de2061d39371540";
    revisions = {
      r0 = {
        nix = import ../hackage/md5-0.1.0.0-r0-5fe96a35af4acc430f39aeb6255681dc5d837800b99501ad2939329aa407f439.nix;
        revNum = 0;
        sha256 = "5fe96a35af4acc430f39aeb6255681dc5d837800b99501ad2939329aa407f439";
        };
      r1 = {
        nix = import ../hackage/md5-0.1.0.0-r1-f063856886525e28ff255999ddf0b97f8301e7b58677a1ad62d22702ac7ce2e7.nix;
        revNum = 1;
        sha256 = "f063856886525e28ff255999ddf0b97f8301e7b58677a1ad62d22702ac7ce2e7";
        };
      default = "r1";
      };
    };
  }