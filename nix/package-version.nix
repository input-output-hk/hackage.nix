{
  "0.1.0.0" = {
    sha256 = "04653aa44ccd212b524f27a14a17c65c14c8842360c90ebda51e102702e139e4";
    revisions = {
      r0 = {
        nix = import ../hackage/package-version-0.1.0.0-r0-c35fc72e6be25717f3262c41f04d5528b8f2671777d95e187a88aaa3a9cb7eba.nix;
        revNum = 0;
        sha256 = "c35fc72e6be25717f3262c41f04d5528b8f2671777d95e187a88aaa3a9cb7eba";
        };
      r1 = {
        nix = import ../hackage/package-version-0.1.0.0-r1-bb9fc93e905540aa8e1b32f80c2dc82756a4481c63779bd92e3796ed8085ab98.nix;
        revNum = 1;
        sha256 = "bb9fc93e905540aa8e1b32f80c2dc82756a4481c63779bd92e3796ed8085ab98";
        };
      r2 = {
        nix = import ../hackage/package-version-0.1.0.0-r2-b99fa905d6444aeb9a8830fcd2f2bcbd1b6f168463449b8e9da082834afa8623.nix;
        revNum = 2;
        sha256 = "b99fa905d6444aeb9a8830fcd2f2bcbd1b6f168463449b8e9da082834afa8623";
        };
      default = "r2";
      };
    };
  "0.2" = {
    sha256 = "844c85dd9a3ecb445fb8dcb6af290e02bdc7ceb4e3b9207ac7bcb0077498010d";
    revisions = {
      r0 = {
        nix = import ../hackage/package-version-0.2-r0-b326d1af39fb3960846fcb3e4dc73d8f51c3bedbf1c08ca97c086462de829519.nix;
        revNum = 0;
        sha256 = "b326d1af39fb3960846fcb3e4dc73d8f51c3bedbf1c08ca97c086462de829519";
        };
      r1 = {
        nix = import ../hackage/package-version-0.2-r1-b5787f06414bb41363c7e7cc3ac295db0c9bff5b40c1c9f1d034c0dc48991923.nix;
        revNum = 1;
        sha256 = "b5787f06414bb41363c7e7cc3ac295db0c9bff5b40c1c9f1d034c0dc48991923";
        };
      default = "r1";
      };
    };
  "0.3" = {
    sha256 = "b4b82cf74e3b1ac9afe80fd37fdb621cc7ba3aa09ab101eb1380158d0b19a005";
    revisions = {
      r0 = {
        nix = import ../hackage/package-version-0.3-r0-190490fde31f673054d317c7eb8c0638591c5b41b96860cb2ce232ea75665dcd.nix;
        revNum = 0;
        sha256 = "190490fde31f673054d317c7eb8c0638591c5b41b96860cb2ce232ea75665dcd";
        };
      default = "r0";
      };
    };
  }