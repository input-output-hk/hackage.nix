{
  "0.1.0.0" = {
    sha256 = "eda46bea45100cfb71fd9917c1fddd12d739352ed78ca970edd1a822d75d9753";
    revisions = {
      r0 = {
        nix = import ../hackage/rebound-0.1.0.0-r0-3cef48d3ec50bf4401a81241f412da11e969105d1769e847a6626c899f9cc4ab.nix;
        revNum = 0;
        sha256 = "3cef48d3ec50bf4401a81241f412da11e969105d1769e847a6626c899f9cc4ab";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "b6ff020797905308066eeeeaddbbddcecdb7d83abe81b8dbf33ea6231df8e261";
    revisions = {
      r0 = {
        nix = import ../hackage/rebound-0.1.1.0-r0-68f5e1187310d7e53b557590bb2b0602fd14be35633befc62f17edad1caf3f45.nix;
        revNum = 0;
        sha256 = "68f5e1187310d7e53b557590bb2b0602fd14be35633befc62f17edad1caf3f45";
      };
      default = "r0";
    };
  };
}