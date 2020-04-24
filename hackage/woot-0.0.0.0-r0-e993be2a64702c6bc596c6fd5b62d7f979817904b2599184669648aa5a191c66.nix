{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "woot"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tydotg@gmail.com";
      author = "Tyler Olson";
      homepage = "https://github.com/TGOlson/woot-haskell";
      url = "";
      synopsis = "Real time group editor without operational transform.";
      description = "Without operation transform - WOOT.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."woot" or ((hsPkgs.pkgs-errors).buildDepError "woot"))
            ];
          buildable = true;
          };
        };
      };
    }