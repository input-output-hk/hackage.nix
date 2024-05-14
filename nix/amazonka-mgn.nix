{
  "2.0" = {
    sha256 = "21b10188e9d424c9cd38a538a7105d0820becf1d21bebb6e9d3ba1b2a0dbd2a2";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mgn-2.0-r0-1a58d25cfa43366941b8edcc452d328b8247f7537c11dd245099cd6e1a78be07.nix;
        revNum = 0;
        sha256 = "1a58d25cfa43366941b8edcc452d328b8247f7537c11dd245099cd6e1a78be07";
      };
      r1 = {
        nix = import ../hackage/amazonka-mgn-2.0-r1-c54a21163d24ef044af59c93ca58b6680462b71023939969c4b27aefd9054482.nix;
        revNum = 1;
        sha256 = "c54a21163d24ef044af59c93ca58b6680462b71023939969c4b27aefd9054482";
      };
      default = "r1";
    };
  };
}