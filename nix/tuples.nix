{
  "0.1.0.0" = {
    sha256 = "2590bb956598066fb5182d820827de0040f7e43d558bcbea6c35b5830115014f";
    revisions = {
      r0 = {
        nix = import ../hackage/tuples-0.1.0.0-r0-7006c1cab721ad3e39cdbf1ccb07ec050b94d654cc6e39277d46241eee6ac7c9.nix;
        revNum = 0;
        sha256 = "7006c1cab721ad3e39cdbf1ccb07ec050b94d654cc6e39277d46241eee6ac7c9";
        };
      r1 = {
        nix = import ../hackage/tuples-0.1.0.0-r1-5248eb556dbd0e69c5009572ef4a332a594037e6b13883ffba071128af15da1a.nix;
        revNum = 1;
        sha256 = "5248eb556dbd0e69c5009572ef4a332a594037e6b13883ffba071128af15da1a";
        };
      default = "r1";
      };
    };
  }