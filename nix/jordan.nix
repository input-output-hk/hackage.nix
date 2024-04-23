{
  "0.1.0.0" = {
    sha256 = "118ef9b1262a6d7ea22385fab45c12cbb54e1872fdd0b3819beabd02981c28e2";
    revisions = {
      r0 = {
        nix = import ../hackage/jordan-0.1.0.0-r0-ad1846003e22080287cd533af9df6c20b2ea71045449bc5e3e992142bffa46b7.nix;
        revNum = 0;
        sha256 = "ad1846003e22080287cd533af9df6c20b2ea71045449bc5e3e992142bffa46b7";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "7de19f1222cbd787365b958ebe9f791ea6c4e4ded9feb8df53a72b534ca398f0";
    revisions = {
      r0 = {
        nix = import ../hackage/jordan-0.2.0.0-r0-56bfb23b4f0e45a6b1f8c5d62bb628236b9db29629215550c3616344f00795aa.nix;
        revNum = 0;
        sha256 = "56bfb23b4f0e45a6b1f8c5d62bb628236b9db29629215550c3616344f00795aa";
      };
      default = "r0";
    };
  };
}