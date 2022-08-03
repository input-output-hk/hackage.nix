{
  "0" = {
    sha256 = "6a1a6c0f3b7d8c20ffd0c9bdc8bfe9bd51a8823995209c8d98344732ebeaa917";
    revisions = {
      r0 = {
        nix = import ../hackage/linden-0-r0-b5d937cd764b97ae484929f75004987df8f25fb7568c1e61b2256199d4c70e07.nix;
        revNum = 0;
        sha256 = "b5d937cd764b97ae484929f75004987df8f25fb7568c1e61b2256199d4c70e07";
        };
      r1 = {
        nix = import ../hackage/linden-0-r1-4e5ef43e4f445109a8bde7e5dd87588bf87ccc03bf672fda44e7f95c05f46c2f.nix;
        revNum = 1;
        sha256 = "4e5ef43e4f445109a8bde7e5dd87588bf87ccc03bf672fda44e7f95c05f46c2f";
        };
      default = "r1";
      };
    };
  }