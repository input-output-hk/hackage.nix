{
  "0.1.0.0" = {
    sha256 = "ba5c196a72efba5b31c98ba16887e6e5d368cc1f68d3d83df42f94c96b1903ba";
    revisions = {
      r0 = {
        nix = import ../hackage/collate-0.1.0.0-r0-3708e09621488eebc22f6a4ef44784e4bc5c7823d46b7f1ac9bf184349c7f08b.nix;
        revNum = 0;
        sha256 = "3708e09621488eebc22f6a4ef44784e4bc5c7823d46b7f1ac9bf184349c7f08b";
        };
      r1 = {
        nix = import ../hackage/collate-0.1.0.0-r1-1b48135cbdd12315616a002711b4cde1e67f1c2840bda734709f56871bb9a690.nix;
        revNum = 1;
        sha256 = "1b48135cbdd12315616a002711b4cde1e67f1c2840bda734709f56871bb9a690";
        };
      default = "r1";
      };
    };
  }