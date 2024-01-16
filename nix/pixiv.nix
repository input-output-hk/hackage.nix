{
  "0.1.0" = {
    sha256 = "e65e9690719f7eb352c723251e6dddba4fc0b74714f06aa3672b1e28e3773700";
    revisions = {
      r0 = {
        nix = import ../hackage/pixiv-0.1.0-r0-0b464d495b5e30f62c0f7f803bd78d2977c18c4cb6289d79631d206b4dd8dfe2.nix;
        revNum = 0;
        sha256 = "0b464d495b5e30f62c0f7f803bd78d2977c18c4cb6289d79631d206b4dd8dfe2";
        };
      r1 = {
        nix = import ../hackage/pixiv-0.1.0-r1-01280495b4129b87662b86c8581b1ea596e11db34f0075ab00961ca080948e0f.nix;
        revNum = 1;
        sha256 = "01280495b4129b87662b86c8581b1ea596e11db34f0075ab00961ca080948e0f";
        };
      default = "r1";
      };
    };
  "0.1.1" = {
    sha256 = "1e60e78a932057c5648a9813ac3fa064c3c45b4d442630a9315d3be043b5ecd7";
    revisions = {
      r0 = {
        nix = import ../hackage/pixiv-0.1.1-r0-391bb9a237830e18ff05e090f92d88fd1a652b1251736642cae291fc5a3bce05.nix;
        revNum = 0;
        sha256 = "391bb9a237830e18ff05e090f92d88fd1a652b1251736642cae291fc5a3bce05";
        };
      r1 = {
        nix = import ../hackage/pixiv-0.1.1-r1-5e11bb7085bf5cb05d1217837a1ff1d8e283a59f7c235633835f11b8b15fd27d.nix;
        revNum = 1;
        sha256 = "5e11bb7085bf5cb05d1217837a1ff1d8e283a59f7c235633835f11b8b15fd27d";
        };
      r2 = {
        nix = import ../hackage/pixiv-0.1.1-r2-e64a7772e5b8592224369adde6f4f7850dd25265e20487dd4ad2beb7d2abc2dd.nix;
        revNum = 2;
        sha256 = "e64a7772e5b8592224369adde6f4f7850dd25265e20487dd4ad2beb7d2abc2dd";
        };
      default = "r2";
      };
    };
  }