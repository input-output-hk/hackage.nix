{
  "1.0.0" = {
    sha256 = "d46e0f66f200595d666d5b996cc1aa7999ce059668bc720d641e60c03f4b3bda";
    revisions = {
      r0 = {
        nix = import ../hackage/scotty-view-1.0.0-r0-c6e0037ed25576efab2a92611503965b82e30ce4c74b04ac6f9bf708c942cac6.nix;
        revNum = 0;
        sha256 = "c6e0037ed25576efab2a92611503965b82e30ce4c74b04ac6f9bf708c942cac6";
        };
      r1 = {
        nix = import ../hackage/scotty-view-1.0.0-r1-31edeca23c677eb1bfa7645456f0842272e959fe911072049ac2050feabca297.nix;
        revNum = 1;
        sha256 = "31edeca23c677eb1bfa7645456f0842272e959fe911072049ac2050feabca297";
        };
      r2 = {
        nix = import ../hackage/scotty-view-1.0.0-r2-d941c5b17efc35e5a244ee219198795d8b3df583685abe7b128731a417735a29.nix;
        revNum = 2;
        sha256 = "d941c5b17efc35e5a244ee219198795d8b3df583685abe7b128731a417735a29";
        };
      default = "r2";
      };
    };
  }