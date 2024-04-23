{
  "0.1.0.0" = {
    sha256 = "0254ac82893b3f46fbf325cd47977230db73178286d731ac05c14ad8eb51910c";
    revisions = {
      r0 = {
        nix = import ../hackage/wryte-0.1.0.0-r0-f5fd1fa2512451edef49810876b9d6c253eb015dcc41198ec3f46272762bbcd5.nix;
        revNum = 0;
        sha256 = "f5fd1fa2512451edef49810876b9d6c253eb015dcc41198ec3f46272762bbcd5";
      };
      r1 = {
        nix = import ../hackage/wryte-0.1.0.0-r1-02fcf0fe6a14698be16253a0f3ae9ae12d2c4044c6bb21831ce27e86de9a1d9f.nix;
        revNum = 1;
        sha256 = "02fcf0fe6a14698be16253a0f3ae9ae12d2c4044c6bb21831ce27e86de9a1d9f";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "b2e1107bb0ed2b5448192c7c89b01a772bca22aaf596f9a69c8e98f85bf17a96";
    revisions = {
      r0 = {
        nix = import ../hackage/wryte-0.1.1.0-r0-39b425bcff2521dc1be8a62904c5169421c5b33ee626581959de110de044f574.nix;
        revNum = 0;
        sha256 = "39b425bcff2521dc1be8a62904c5169421c5b33ee626581959de110de044f574";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "50337fb951eacf1b056bf421dac4368f84c4f8150114d1210fc17ba5096c67c1";
    revisions = {
      r0 = {
        nix = import ../hackage/wryte-0.2.0.0-r0-d3cd65926a1db64429de74c7438e7aaa8a9784bbdbdb870361ddbf3cf9b059b4.nix;
        revNum = 0;
        sha256 = "d3cd65926a1db64429de74c7438e7aaa8a9784bbdbdb870361ddbf3cf9b059b4";
      };
      default = "r0";
    };
  };
}