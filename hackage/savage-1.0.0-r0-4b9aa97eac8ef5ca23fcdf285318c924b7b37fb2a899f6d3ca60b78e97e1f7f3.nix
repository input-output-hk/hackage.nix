{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "savage"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dcartwright@layer3com.com";
      author = "Daniel Cartwright";
      homepage = "https://github.com/chessai/savage";
      url = "";
      synopsis = "Re-exported random generators from QuickCheck.";
      description = "Re-exported random generators from QuickCheck.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))
          ];
        buildable = true;
        };
      };
    }