{
  "1.0.0" = {
    sha256 = "660938afbe9ef44134a72e89b5018249a31ec20aae4288fb1f538e2d96f0f011";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-transfer-1.0.0-r0-b94699815ad6cb59541d2c96c2855b22256a136e2586ecfeaee478d8963dec92.nix;
        revNum = 0;
        sha256 = "b94699815ad6cb59541d2c96c2855b22256a136e2586ecfeaee478d8963dec92";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "b77c1b75129b5887efeb12ae38803303e96e060430f210c53d1cc281afb024ac";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-transfer-1.0.1-r0-ef1a0f13ac77cdee6e5bedfab979745687befc6b1005d6afc89e0aaf8a901677.nix;
        revNum = 0;
        sha256 = "ef1a0f13ac77cdee6e5bedfab979745687befc6b1005d6afc89e0aaf8a901677";
      };
      default = "r0";
    };
  };
}