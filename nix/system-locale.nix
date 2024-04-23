{
  "0.1.0.0" = {
    sha256 = "0df7815525b55d875e8c0393f22c3595655a90a0701b5208799f97e653686fab";
    revisions = {
      r0 = {
        nix = import ../hackage/system-locale-0.1.0.0-r0-ef22b0c977e3fd978ad795eda8124279e4e5712d08815234b63cd3b3f97718e9.nix;
        revNum = 0;
        sha256 = "ef22b0c977e3fd978ad795eda8124279e4e5712d08815234b63cd3b3f97718e9";
      };
      r1 = {
        nix = import ../hackage/system-locale-0.1.0.0-r1-3681691c486cb637328329037f5ccb6bc266310cc4db7bb04072a7084328cfa4.nix;
        revNum = 1;
        sha256 = "3681691c486cb637328329037f5ccb6bc266310cc4db7bb04072a7084328cfa4";
      };
      r2 = {
        nix = import ../hackage/system-locale-0.1.0.0-r2-37d52efb61504e834be09941816be8d669d57e68c1f09c5e22ca30fc9178e8f9.nix;
        revNum = 2;
        sha256 = "37d52efb61504e834be09941816be8d669d57e68c1f09c5e22ca30fc9178e8f9";
      };
      default = "r2";
    };
  };
  "0.2.0.0" = {
    sha256 = "e597e6a130df26fa046df72d8d1f175a373683a1075d77730763b7e5b1657fd7";
    revisions = {
      r0 = {
        nix = import ../hackage/system-locale-0.2.0.0-r0-caed57982e985332dc5927ce67c2c957cb0e3bcb5751ea1727a773a9496d69db.nix;
        revNum = 0;
        sha256 = "caed57982e985332dc5927ce67c2c957cb0e3bcb5751ea1727a773a9496d69db";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "497e9638545fcbbb630ceb93bff93f469d1a6218ccf9065e719b9bdb2cf65b23";
    revisions = {
      r0 = {
        nix = import ../hackage/system-locale-0.3.0.0-r0-13b3982403d8ac8cc6138e68802be8d8e7cf7ebc4cbc7e47e99e3c0dd1be066a.nix;
        revNum = 0;
        sha256 = "13b3982403d8ac8cc6138e68802be8d8e7cf7ebc4cbc7e47e99e3c0dd1be066a";
      };
      default = "r0";
    };
  };
}