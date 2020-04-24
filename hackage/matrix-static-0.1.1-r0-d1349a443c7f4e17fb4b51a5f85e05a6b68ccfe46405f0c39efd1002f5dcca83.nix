{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "matrix-static"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2018, Wanja Chresta";
      maintainer = "wanja.hs@chrummibei.ch";
      author = "Wanja Chresta";
      homepage = "https://github.com/wchresta/matrix-static#readme";
      url = "";
      synopsis = "Type-safe matrix operations";
      description = "Please see the README on GitHub at <https://github.com/wchresta/matrix-static#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."ghc-typelits-knownnat" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "matrix-static-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-typelits-knownnat" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
            (hsPkgs."matrix-static" or ((hsPkgs.pkgs-errors).buildDepError "matrix-static"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }