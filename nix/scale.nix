{
  "1.0.0.0" = {
    sha256 = "6adcc3e5e28047c3e7c4f5974aaa51c5be9b5c5505ef861da6029081fc8333b0";
    revisions = {
      r0 = {
        nix = import ../hackage/scale-1.0.0.0-r0-7a2f1476772636dc85de4df613a6a5dd460e58a3772974d8a067fc509a5449fd.nix;
        revNum = 0;
        sha256 = "7a2f1476772636dc85de4df613a6a5dd460e58a3772974d8a067fc509a5449fd";
      };
      default = "r0";
    };
  };
  "1.0.1.0" = {
    sha256 = "3d07a08bf9247b54f672f76910ba611707af7ca065a8f864eb7f611346fb96a5";
    revisions = {
      r0 = {
        nix = import ../hackage/scale-1.0.1.0-r0-b72014be79e1dfd920f533bd454002cf87b4a6210186e58bb8eb2fcb87af13c2.nix;
        revNum = 0;
        sha256 = "b72014be79e1dfd920f533bd454002cf87b4a6210186e58bb8eb2fcb87af13c2";
      };
      default = "r0";
    };
  };
}