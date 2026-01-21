{
  "0.1.0" = {
    sha256 = "872b8e184fdd4fd2de41f1dff32a25193d3c376e7cd9a706bb54c24bd3c0bead";
    revisions = {
      r0 = {
        nix = import ../hackage/dojang-0.1.0-r0-620eacbd4307673a3f40fe37b2d1283fde9c9a96ba78056cf962e3708d8a3951.nix;
        revNum = 0;
        sha256 = "620eacbd4307673a3f40fe37b2d1283fde9c9a96ba78056cf962e3708d8a3951";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "5e6c1255b546b9e10ff4fb1ed46a50d5b487162fcb9a0b81b524e95ae933a467";
    revisions = {
      r0 = {
        nix = import ../hackage/dojang-0.2.0-r0-99a4d9b7fc49ac9446b7906f23bd99220f3eb37eefa99abaff57c7e295facc31.nix;
        revNum = 0;
        sha256 = "99a4d9b7fc49ac9446b7906f23bd99220f3eb37eefa99abaff57c7e295facc31";
      };
      default = "r0";
    };
  };
}