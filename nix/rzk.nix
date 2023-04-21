{
  "0.1.0" = {
    sha256 = "b34ad586cc5d8b2b09c0c7374511bce0b9e3a9ac8e3eb345aa11b4a61457fb73";
    revisions = {
      r0 = {
        nix = import ../hackage/rzk-0.1.0-r0-feb619799f038fb45ac9a128ea62aa589e7f2a2f436ffdf67e0dad49319f577d.nix;
        revNum = 0;
        sha256 = "feb619799f038fb45ac9a128ea62aa589e7f2a2f436ffdf67e0dad49319f577d";
        };
      default = "r0";
      };
    };
  "0.2.0" = {
    sha256 = "767a29df3359bf7ae74029bf5fc2c79a971059a0f174dfc40c2bf5aa1bbc122d";
    revisions = {
      r0 = {
        nix = import ../hackage/rzk-0.2.0-r0-a103eabedca9b3d4e395bb8ec72969c1dc9ae33967fb218125993e1ab2a619f2.nix;
        revNum = 0;
        sha256 = "a103eabedca9b3d4e395bb8ec72969c1dc9ae33967fb218125993e1ab2a619f2";
        };
      default = "r0";
      };
    };
  }