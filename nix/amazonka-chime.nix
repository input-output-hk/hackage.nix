{
  "2.0" = {
    sha256 = "81262e5af496c646b7e3908531c9bbd8592ed9feb04152d02926618d576fda2f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-chime-2.0-r0-9db0a5fb35ca85b9e9d49f3c82604f57e4f8eedb428c5f2e5c12b7f31f798cec.nix;
        revNum = 0;
        sha256 = "9db0a5fb35ca85b9e9d49f3c82604f57e4f8eedb428c5f2e5c12b7f31f798cec";
      };
      r1 = {
        nix = import ../hackage/amazonka-chime-2.0-r1-e6956a5b35e7e5d85681aa8c94eb4a1854f926f4a9f2fe28614cdb9ead162d79.nix;
        revNum = 1;
        sha256 = "e6956a5b35e7e5d85681aa8c94eb4a1854f926f4a9f2fe28614cdb9ead162d79";
      };
      default = "r1";
    };
  };
}