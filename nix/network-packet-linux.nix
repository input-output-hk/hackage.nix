{
  "0.1.0.0" = {
    sha256 = "1595c7270591cc2d185998b74bba2f90c66bd92276816ccfc0324a209436099c";
    revisions = {
      r0 = {
        nix = import ../hackage/network-packet-linux-0.1.0.0-r0-1172ac8b3cab0c22326400a8775a18b6c432dcf01aa32cff2d76ad4a8b79e81e.nix;
        revNum = 0;
        sha256 = "1172ac8b3cab0c22326400a8775a18b6c432dcf01aa32cff2d76ad4a8b79e81e";
      };
      r1 = {
        nix = import ../hackage/network-packet-linux-0.1.0.0-r1-409a497bbea990559150c08948ae4a106c7e7bba54bf5afea6c5f841d49eab2d.nix;
        revNum = 1;
        sha256 = "409a497bbea990559150c08948ae4a106c7e7bba54bf5afea6c5f841d49eab2d";
      };
      r2 = {
        nix = import ../hackage/network-packet-linux-0.1.0.0-r2-8b100135cdd7d5c676dddad50a5a9b979bfd05f1043ae5225a47de3bbe506c70.nix;
        revNum = 2;
        sha256 = "8b100135cdd7d5c676dddad50a5a9b979bfd05f1043ae5225a47de3bbe506c70";
      };
      default = "r2";
    };
  };
  "0.1.1.0" = {
    sha256 = "ab494ad95b8ad0bb9ae837c5196cedc2c483717ee356c6e9490eaf8b09780635";
    revisions = {
      r0 = {
        nix = import ../hackage/network-packet-linux-0.1.1.0-r0-16b109f7401a95a74cf8290e1da8d23e72cee1291db636ed89679f6c93843179.nix;
        revNum = 0;
        sha256 = "16b109f7401a95a74cf8290e1da8d23e72cee1291db636ed89679f6c93843179";
      };
      default = "r0";
    };
  };
}