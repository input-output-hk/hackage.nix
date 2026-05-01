{
  "0.1.0.0" = {
    sha256 = "76a9e731cb3aef00ad116d5e044f351763c4ccc453cfb4d4167cc4f953c289ad";
    revisions = {
      r0 = {
        nix = import ../hackage/valiant-0.1.0.0-r0-358fbdf44f443204ad4f2741559ef7e067abfa9640f3b448d4f2d02c357cefff.nix;
        revNum = 0;
        sha256 = "358fbdf44f443204ad4f2741559ef7e067abfa9640f3b448d4f2d02c357cefff";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "0a084435e287c43960ccac846b71537893fd4710604b25f08dfc81af9ce99ac6";
    revisions = {
      r0 = {
        nix = import ../hackage/valiant-0.1.0.1-r0-169f6487c18f4fb9db42951b10de378081d79e10c86fc8e0ff471be586576dd4.nix;
        revNum = 0;
        sha256 = "169f6487c18f4fb9db42951b10de378081d79e10c86fc8e0ff471be586576dd4";
      };
      default = "r0";
    };
  };
}