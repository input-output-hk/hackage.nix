{
  "1.0.0" = {
    sha256 = "cedb06bd032177ae38ed6942fd84109568ee4698abe34e68b9f8b224847e3968";
    revisions = {
      r0 = {
        nix = import ../hackage/hunit-effectful-1.0.0-r0-862ad07e2bfd363efd01563dd76926cf3791ee2af76f7d80558a52193d712014.nix;
        revNum = 0;
        sha256 = "862ad07e2bfd363efd01563dd76926cf3791ee2af76f7d80558a52193d712014";
      };
      r1 = {
        nix = import ../hackage/hunit-effectful-1.0.0-r1-8cba23509faf8356f0dfffdae69a62203567ceb9909528e8b1d85671deba46f1.nix;
        revNum = 1;
        sha256 = "8cba23509faf8356f0dfffdae69a62203567ceb9909528e8b1d85671deba46f1";
      };
      default = "r1";
    };
  };
  "1.0.1" = {
    sha256 = "8eb79decdbe11d92dbd61c0ee06a9b57dbfa7847f54bc60bd1431cedc99a8690";
    revisions = {
      r0 = {
        nix = import ../hackage/hunit-effectful-1.0.1-r0-1a165bc616b576880844628ae698d4df9791ebf2e0a4f7a8b177e714099c4fdb.nix;
        revNum = 0;
        sha256 = "1a165bc616b576880844628ae698d4df9791ebf2e0a4f7a8b177e714099c4fdb";
      };
      default = "r0";
    };
  };
}