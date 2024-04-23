{
  "2.0" = {
    sha256 = "69c941e1646fdc23db55c09248b8b700b6032b762bb9846a03e36235ad19bbb3";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-s3-encryption-2.0-r0-122db2c743853c5a12782afcdd9579ad81fe5f096230188c4504bff8f92aaa1b.nix;
        revNum = 0;
        sha256 = "122db2c743853c5a12782afcdd9579ad81fe5f096230188c4504bff8f92aaa1b";
      };
      r1 = {
        nix = import ../hackage/amazonka-s3-encryption-2.0-r1-1d60f106a35b2d3911c2d238487dfdc13c48379cad921409183bc196255b1d2d.nix;
        revNum = 1;
        sha256 = "1d60f106a35b2d3911c2d238487dfdc13c48379cad921409183bc196255b1d2d";
      };
      default = "r1";
    };
  };
}