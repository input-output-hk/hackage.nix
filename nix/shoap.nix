{
  "0.1" = {
    sha256 = "b94e4b2e033114ff62713982d0972d640c65e15daf26bbbc4fc744576a287be2";
    revisions = {
      r0 = {
        nix = import ../hackage/shoap-0.1-r0-72bf1f06c6e83928c1edb243019c298505c1640fe77ba81397d89cd98245da12.nix;
        revNum = 0;
        sha256 = "72bf1f06c6e83928c1edb243019c298505c1640fe77ba81397d89cd98245da12";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "3b153cd9b93959cb3f90bc98755898653bd27f4e52a475b5d818df36dd428b7b";
    revisions = {
      r0 = {
        nix = import ../hackage/shoap-0.2-r0-469e50301ade1664074ddfe6a7edb459ba0822db21a7379e63a42fcc1ac6fd91.nix;
        revNum = 0;
        sha256 = "469e50301ade1664074ddfe6a7edb459ba0822db21a7379e63a42fcc1ac6fd91";
      };
      default = "r0";
    };
  };
}