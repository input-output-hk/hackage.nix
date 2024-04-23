{
  "0.1" = {
    sha256 = "97ece4b669de88d3941a814eb2f3766623abe2fdc108850f7d8c3258183f0131";
    revisions = {
      r0 = {
        nix = import ../hackage/hellnet-0.1-r0-adbfaacd161b5502a70a6ef41593445795d64d714c43b1e204b38b59a58465e4.nix;
        revNum = 0;
        sha256 = "adbfaacd161b5502a70a6ef41593445795d64d714c43b1e204b38b59a58465e4";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "a69a9bb754224082b110d4011b33ce64b39162e9f37dd64fc681a6b16cca6439";
    revisions = {
      r0 = {
        nix = import ../hackage/hellnet-0.1.1-r0-64760e9368cfbf089ba70117e7d853108242179aeb6132dc8327b3b36341c178.nix;
        revNum = 0;
        sha256 = "64760e9368cfbf089ba70117e7d853108242179aeb6132dc8327b3b36341c178";
      };
      default = "r0";
    };
  };
}