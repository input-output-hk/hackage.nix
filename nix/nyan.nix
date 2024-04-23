{
  "0.1" = {
    sha256 = "34e4a7a39b511ad51ef7443005425ded1d01d001c769f9e2b2233f13f02b8f2b";
    revisions = {
      r0 = {
        nix = import ../hackage/nyan-0.1-r0-ecc12f06514b1f220b492d00c38cd02b429ebe6c5e751ae6eb399d495b6bdcdd.nix;
        revNum = 0;
        sha256 = "ecc12f06514b1f220b492d00c38cd02b429ebe6c5e751ae6eb399d495b6bdcdd";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "89184df9cb730b5b51b0655c1a76025ba6bd7601f79a2c1a41d5ac15cdf26c09";
    revisions = {
      r0 = {
        nix = import ../hackage/nyan-0.2-r0-695849e6bd7a41757452989b124b10f869bb2c2d7d88ec49002f31128f546625.nix;
        revNum = 0;
        sha256 = "695849e6bd7a41757452989b124b10f869bb2c2d7d88ec49002f31128f546625";
      };
      default = "r0";
    };
  };
}