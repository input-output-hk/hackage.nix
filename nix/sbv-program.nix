{
  "1.0.0.0" = {
    sha256 = "845107c84b77a473f0c21ea05cdeb44a934b2c0f28000cbbd00ce83fc09f52f7";
    revisions = {
      r0 = {
        nix = import ../hackage/sbv-program-1.0.0.0-r0-e9b05ee9f25416f32a68ba302dea6a3a840c3a3295885be0bd13470d1da2f337.nix;
        revNum = 0;
        sha256 = "e9b05ee9f25416f32a68ba302dea6a3a840c3a3295885be0bd13470d1da2f337";
        };
      r1 = {
        nix = import ../hackage/sbv-program-1.0.0.0-r1-1de21d8088c1e2bc95949ca300ac7549029676e0539c683ac8912d0e25457f0f.nix;
        revNum = 1;
        sha256 = "1de21d8088c1e2bc95949ca300ac7549029676e0539c683ac8912d0e25457f0f";
        };
      default = "r1";
      };
    };
  }