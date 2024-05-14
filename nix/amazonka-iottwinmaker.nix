{
  "2.0" = {
    sha256 = "fcdafce5da3db0cbc2e9cb198ab1ffa8858083a15b5a6583283ffde473af1422";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-iottwinmaker-2.0-r0-9543c9e8709ac50a157024cf6b07b8df3bce999cb234be14e6dd25045f0bb914.nix;
        revNum = 0;
        sha256 = "9543c9e8709ac50a157024cf6b07b8df3bce999cb234be14e6dd25045f0bb914";
      };
      r1 = {
        nix = import ../hackage/amazonka-iottwinmaker-2.0-r1-4f6a4d6a5c351f808a13210dffdd9464e342a92ded2f97896d5fc482516ac353.nix;
        revNum = 1;
        sha256 = "4f6a4d6a5c351f808a13210dffdd9464e342a92ded2f97896d5fc482516ac353";
      };
      default = "r1";
    };
  };
}