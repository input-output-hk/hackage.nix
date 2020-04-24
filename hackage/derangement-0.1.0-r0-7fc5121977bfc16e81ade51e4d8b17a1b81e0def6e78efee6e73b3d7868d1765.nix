{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "derangement"; version = "0.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Dennis Griffith <dgriffi3@uiuc.edu>";
      author = "Dennis Griffith";
      homepage = "";
      url = "";
      synopsis = "Find derangements of lists";
      description = "Find a derangement, a permutation with no fixed points, on a list";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          ];
        buildable = true;
        };
      };
    }