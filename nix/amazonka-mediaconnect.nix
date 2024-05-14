{
  "2.0" = {
    sha256 = "ff31f0692395ed2d6cb91054dd0812bdb4f824ffe5c8cb1b9391d98cb477ac53";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mediaconnect-2.0-r0-30b1e7df2c22f4a7a8d379d09a28e541a2ba5b6650c44395d977107b2ec38ca6.nix;
        revNum = 0;
        sha256 = "30b1e7df2c22f4a7a8d379d09a28e541a2ba5b6650c44395d977107b2ec38ca6";
      };
      r1 = {
        nix = import ../hackage/amazonka-mediaconnect-2.0-r1-5e8cb3a199f105ff851e7e9ede698309b30e7df9492e005fc2fedc69a68fa0e8.nix;
        revNum = 1;
        sha256 = "5e8cb3a199f105ff851e7e9ede698309b30e7df9492e005fc2fedc69a68fa0e8";
      };
      default = "r1";
    };
  };
}