{
  "0.1.0.1" = {
    sha256 = "8c4389f3f4bd92ca003761da2c476491cdf53b1923646cfc5de7029fb88c1341";
    revisions = {
      r0 = {
        nix = import ../hackage/Naperian-0.1.0.1-r0-bece27e2d7d57f25197d49bb197a6643004b3e2edcdd1733105d49e38ea72a72.nix;
        revNum = 0;
        sha256 = "bece27e2d7d57f25197d49bb197a6643004b3e2edcdd1733105d49e38ea72a72";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "470aa1f47cd97c89aa865d4c0f3de05dc2c50cd89993d6434fafa6db6e6030c5";
    revisions = {
      r0 = {
        nix = import ../hackage/Naperian-0.1.1.0-r0-9f5c5c38ab7fc76bba3acec6c337905c92b49f50dfc04fbcc16882b9cbc04cde.nix;
        revNum = 0;
        sha256 = "9f5c5c38ab7fc76bba3acec6c337905c92b49f50dfc04fbcc16882b9cbc04cde";
      };
      r1 = {
        nix = import ../hackage/Naperian-0.1.1.0-r1-381838765401aff4c574af318c5c693c97b72c4cbfc25eb3904135468af5525a.nix;
        revNum = 1;
        sha256 = "381838765401aff4c574af318c5c693c97b72c4cbfc25eb3904135468af5525a";
      };
      default = "r1";
    };
  };
}