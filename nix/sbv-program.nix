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
  "1.1.0.0" = {
    sha256 = "4fac591b48491facdd1e3beeff54fc9a5dcc05b2a148a488ff47b8712c6dad2d";
    revisions = {
      r0 = {
        nix = import ../hackage/sbv-program-1.1.0.0-r0-dc7f1c6c27a27e2e52bd2829c1020016859e17675b8def3bc8b4caff2a803af9.nix;
        revNum = 0;
        sha256 = "dc7f1c6c27a27e2e52bd2829c1020016859e17675b8def3bc8b4caff2a803af9";
        };
      default = "r0";
      };
    };
  }