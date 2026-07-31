{
  "0.1.0.0" = {
    sha256 = "4cc8752b6bc55c4526a5a0d925c151edede9921fd27fda050720feeeaad537a5";
    revisions = {
      r0 = {
        nix = import ../hackage/kioku-migrate-0.1.0.0-r0-2fde66f959dabb60fcaae52c7120376e20d76e16654a02618d21a39e7a398490.nix;
        revNum = 0;
        sha256 = "2fde66f959dabb60fcaae52c7120376e20d76e16654a02618d21a39e7a398490";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "fdf48608b6f8c8fbb029b5539a03f9685edb6ec90ef072ec4c5c88c89c3d6024";
    revisions = {
      r0 = {
        nix = import ../hackage/kioku-migrate-0.2.0.0-r0-469e769528de348e3ab973b44d46ed933720ee75b1774ea34796ff9ea9ad9f7d.nix;
        revNum = 0;
        sha256 = "469e769528de348e3ab973b44d46ed933720ee75b1774ea34796ff9ea9ad9f7d";
      };
      default = "r0";
    };
  };
}