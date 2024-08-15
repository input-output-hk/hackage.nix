{
  "0.1.0" = {
    sha256 = "95123cdcd8477c4df18472cf5f8f0b4af83c949bcb05f0aa9df3d5a961885dc8";
    revisions = {
      r0 = {
        nix = import ../hackage/dupIO-0.1.0-r0-8779bf845990a9399ae08d90293e34d92a438e7fc49258ea15cddd48bf08d073.nix;
        revNum = 0;
        sha256 = "8779bf845990a9399ae08d90293e34d92a438e7fc49258ea15cddd48bf08d073";
      };
      r1 = {
        nix = import ../hackage/dupIO-0.1.0-r1-dffce961863724ac4efb6a3db9625543972a807c76f60d1790126023d480f742.nix;
        revNum = 1;
        sha256 = "dffce961863724ac4efb6a3db9625543972a807c76f60d1790126023d480f742";
      };
      default = "r1";
    };
  };
}