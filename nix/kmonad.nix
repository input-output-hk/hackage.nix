{
  "0.4.1" = {
    sha256 = "0c3108a3e68879c9adb0475cc584199b7bc3ac5e67c88e7eea286172304029d1";
    revisions = {
      r0 = {
        nix = import ../hackage/kmonad-0.4.1-r0-506f1cd0428f3b7ee92f4b75e138bda8fa8079dcce0667f7c448352f75e36cdf.nix;
        revNum = 0;
        sha256 = "506f1cd0428f3b7ee92f4b75e138bda8fa8079dcce0667f7c448352f75e36cdf";
      };
      default = "r0";
    };
  };
  "0.4.2" = {
    sha256 = "4245ae9bb47d2d01cf6eda90603d00c28fdf9f017fb960e49db3679d960934b5";
    revisions = {
      r0 = {
        nix = import ../hackage/kmonad-0.4.2-r0-62a6837f9fa624f67668d04750e76604a25c184dc08c711e686482d20b19948a.nix;
        revNum = 0;
        sha256 = "62a6837f9fa624f67668d04750e76604a25c184dc08c711e686482d20b19948a";
      };
      r1 = {
        nix = import ../hackage/kmonad-0.4.2-r1-7552db33bca05203393a4e6ea33985278764b05e5843fbd65591c3cd4ce17f58.nix;
        revNum = 1;
        sha256 = "7552db33bca05203393a4e6ea33985278764b05e5843fbd65591c3cd4ce17f58";
      };
      r2 = {
        nix = import ../hackage/kmonad-0.4.2-r2-7b6f1551f55bc2cac737ab0ee5e53dafa5c7d31f7d7ea88677e012c392844cb6.nix;
        revNum = 2;
        sha256 = "7b6f1551f55bc2cac737ab0ee5e53dafa5c7d31f7d7ea88677e012c392844cb6";
      };
      default = "r2";
    };
  };
  "0.4.3" = {
    sha256 = "9beed61d3cea100d09b147263dc64806b7a7827d7545450bf66f69223a2fa5f1";
    revisions = {
      r0 = {
        nix = import ../hackage/kmonad-0.4.3-r0-cceb600273fffd39f3d4f79af0382e747178e695824064cfb7ecf93a8f94f2a8.nix;
        revNum = 0;
        sha256 = "cceb600273fffd39f3d4f79af0382e747178e695824064cfb7ecf93a8f94f2a8";
      };
      default = "r0";
    };
  };
}