{
  "2.0" = {
    sha256 = "e440b72b17b62fd20eaf3c4ab51ee1b65902891fa0ac2a24ae517404135bf53a";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-schemas-2.0-r0-cd327641f00f7e8b9996a4c17df699b467e6ec539c28266c39e50530c80d2f36.nix;
        revNum = 0;
        sha256 = "cd327641f00f7e8b9996a4c17df699b467e6ec539c28266c39e50530c80d2f36";
      };
      r1 = {
        nix = import ../hackage/amazonka-schemas-2.0-r1-867a57a666f03a724ee9e53b47f86eaca352e6023b565c81601f070d3c1947b9.nix;
        revNum = 1;
        sha256 = "867a57a666f03a724ee9e53b47f86eaca352e6023b565c81601f070d3c1947b9";
      };
      default = "r1";
    };
  };
}