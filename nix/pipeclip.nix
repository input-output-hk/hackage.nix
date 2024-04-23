{
  "0.1.0.0" = {
    sha256 = "c5646765e432abcd1b8f2c33cebf40dfe1da96d43926313307912472e68a726d";
    revisions = {
      r0 = {
        nix = import ../hackage/pipeclip-0.1.0.0-r0-60a5ea0814d6603dd393c987ab20b01064f60df35db70fc97f88b72d7add84d3.nix;
        revNum = 0;
        sha256 = "60a5ea0814d6603dd393c987ab20b01064f60df35db70fc97f88b72d7add84d3";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "cfb5db0d91da9d776695189b29579e5b7b2b0262def877aa9524219ced83abc2";
    revisions = {
      r0 = {
        nix = import ../hackage/pipeclip-0.1.0.1-r0-db975f8622b599885874106c037419a55ef065c29cb6b7e7a15bd7127670fcf7.nix;
        revNum = 0;
        sha256 = "db975f8622b599885874106c037419a55ef065c29cb6b7e7a15bd7127670fcf7";
      };
      default = "r0";
    };
  };
}