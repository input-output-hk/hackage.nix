{
  "0.1.0.0" = {
    sha256 = "1f7cb16fc3ea547e3320fecb35900804de032cce6f7d8c94ad26c6d0a33f0837";
    revisions = {
      r0 = {
        nix = import ../hackage/sitemap-gen-0.1.0.0-r0-cc8ba0fb0a4387d1b0973cd95f1017b810c813913bc1d4066b92f1b1452d8574.nix;
        revNum = 0;
        sha256 = "cc8ba0fb0a4387d1b0973cd95f1017b810c813913bc1d4066b92f1b1452d8574";
      };
      r1 = {
        nix = import ../hackage/sitemap-gen-0.1.0.0-r1-0ad7deb58fb3a04950c1363e417c4cfb0c1af79d719165ff7359f28d20b03f72.nix;
        revNum = 1;
        sha256 = "0ad7deb58fb3a04950c1363e417c4cfb0c1af79d719165ff7359f28d20b03f72";
      };
      default = "r1";
    };
  };
}