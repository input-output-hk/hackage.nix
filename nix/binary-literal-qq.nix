{
  "1.0" = {
    sha256 = "5506586d39e0d8b311516c05dc8eeaa8589782d0340cf45c853f68eab3687d4d";
    revisions = {
      r0 = {
        nix = import ../hackage/binary-literal-qq-1.0-r0-3c6dadba88a4b19c5f0d40c646bbf27fa190ae6fb88a3feb207e4030a2c19f30.nix;
        revNum = 0;
        sha256 = "3c6dadba88a4b19c5f0d40c646bbf27fa190ae6fb88a3feb207e4030a2c19f30";
      };
      r1 = {
        nix = import ../hackage/binary-literal-qq-1.0-r1-61a53a601a913dd5fe5d52bc552f965d62d448ecea220dc1acb4884b67f54667.nix;
        revNum = 1;
        sha256 = "61a53a601a913dd5fe5d52bc552f965d62d448ecea220dc1acb4884b67f54667";
      };
      default = "r1";
    };
  };
}