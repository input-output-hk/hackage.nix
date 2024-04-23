{
  "0.1.0.0" = {
    sha256 = "b44491ae737d74306ee8e329dbb2112543c462be4400696f0d918a0398d53339";
    revisions = {
      r0 = {
        nix = import ../hackage/clr-inline-0.1.0.0-r0-c267b886d0ccd23d0e29dd4398b5781e321bc0c450b24f57246684ab8daf0208.nix;
        revNum = 0;
        sha256 = "c267b886d0ccd23d0e29dd4398b5781e321bc0c450b24f57246684ab8daf0208";
      };
      r1 = {
        nix = import ../hackage/clr-inline-0.1.0.0-r1-d369e9e82fcd938fca0a0ef744b3fe6211d04a7916e594ffed95b558c30c8d80.nix;
        revNum = 1;
        sha256 = "d369e9e82fcd938fca0a0ef744b3fe6211d04a7916e594ffed95b558c30c8d80";
      };
      default = "r1";
    };
  };
  "0.2.0" = {
    sha256 = "9c17907a0733516c91aaf822b25f82ca900423dfb55751b81e58bbe98b172e69";
    revisions = {
      r0 = {
        nix = import ../hackage/clr-inline-0.2.0-r0-dceed083983e5003d8e14847fd7bc385a4f02e54818fb231c87f0b5716a50d1d.nix;
        revNum = 0;
        sha256 = "dceed083983e5003d8e14847fd7bc385a4f02e54818fb231c87f0b5716a50d1d";
      };
      default = "r0";
    };
  };
  "0.2.0.1" = {
    sha256 = "10def81e96417b4cb6f9e92fcbb3b70bafc9c8f64e59abf64453f9d62b72547d";
    revisions = {
      r0 = {
        nix = import ../hackage/clr-inline-0.2.0.1-r0-4f8e0e823f2fbc4ac9cb69aed19d1f1e285f392150085aeecfd2c79ab32baf58.nix;
        revNum = 0;
        sha256 = "4f8e0e823f2fbc4ac9cb69aed19d1f1e285f392150085aeecfd2c79ab32baf58";
      };
      default = "r0";
    };
  };
}