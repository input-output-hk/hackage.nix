{
  "2.0" = {
    sha256 = "c6593069269ad3b07868fe4a61d00d6578536b5306c19131ec39c81226ad3b34";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-redshift-data-2.0-r0-82b7698531a2ef52d519e9dc47952dcbe838fb7b04623b529e9bfcbf8ad219d5.nix;
        revNum = 0;
        sha256 = "82b7698531a2ef52d519e9dc47952dcbe838fb7b04623b529e9bfcbf8ad219d5";
      };
      r1 = {
        nix = import ../hackage/amazonka-redshift-data-2.0-r1-f8974137c9551492be000ba68b0b3cc4405360d09c6ce10c614169b1b0f10d0e.nix;
        revNum = 1;
        sha256 = "f8974137c9551492be000ba68b0b3cc4405360d09c6ce10c614169b1b0f10d0e";
      };
      default = "r1";
    };
  };
}