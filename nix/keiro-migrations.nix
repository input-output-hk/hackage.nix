{
  "0.2.0.0" = {
    sha256 = "808bcd4d8916178951732e5e83f7349b643a1c3ccb4bd6f1926cbe43b1dbbffa";
    revisions = {
      r0 = {
        nix = import ../hackage/keiro-migrations-0.2.0.0-r0-16c685ce66cf8f78502fbe3b3e0a312cbae498e1d6ccff25a5331758f82c5782.nix;
        revNum = 0;
        sha256 = "16c685ce66cf8f78502fbe3b3e0a312cbae498e1d6ccff25a5331758f82c5782";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "89a1d3d3660e49c7c54bfabb761621bb025b40f37e3546b628d7a2266df16335";
    revisions = {
      r0 = {
        nix = import ../hackage/keiro-migrations-0.3.0.0-r0-877016394ff58de6290dd5917ea61085d4cbc476b86673a66014f45bceb65f21.nix;
        revNum = 0;
        sha256 = "877016394ff58de6290dd5917ea61085d4cbc476b86673a66014f45bceb65f21";
      };
      default = "r0";
    };
  };
}