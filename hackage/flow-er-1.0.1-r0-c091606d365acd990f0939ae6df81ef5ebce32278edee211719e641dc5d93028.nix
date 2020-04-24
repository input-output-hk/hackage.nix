{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "flow-er"; version = "1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "bez@brooklynzelenka.com";
      author = "Brooklyn Zelenka";
      homepage = "https://github.com/expede/flower#README";
      url = "";
      synopsis = "Directional operators to for common combinators";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."flow" or ((hsPkgs.pkgs-errors).buildDepError "flow"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."flow" or ((hsPkgs.pkgs-errors).buildDepError "flow"))
            (hsPkgs."flow-er" or ((hsPkgs.pkgs-errors).buildDepError "flow-er"))
            ];
          buildable = true;
          };
        };
      };
    }