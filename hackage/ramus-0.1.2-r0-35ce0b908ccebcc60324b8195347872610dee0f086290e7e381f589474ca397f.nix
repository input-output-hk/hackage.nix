{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ramus"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Nikita Tchayka";
      author = "";
      homepage = "https://github.com/NickSeagull/ramus#readme";
      url = "";
      synopsis = "Elm signal system for Haskell";
      description = "Ramus is a direct port of purescript-signal into Haskell, offering the Elm signal system for Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "ramus-test-suite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ramus" or ((hsPkgs.pkgs-errors).buildDepError "ramus"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-io" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-io"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "ramus-benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ramus" or ((hsPkgs.pkgs-errors).buildDepError "ramus"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }