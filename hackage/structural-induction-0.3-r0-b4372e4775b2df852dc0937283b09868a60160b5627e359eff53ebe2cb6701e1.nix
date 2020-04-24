{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "structural-induction"; version = "0.3"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Dan Rosén <danr@chalmers.se>";
      author = "Dan Rosén";
      homepage = "http://www.github.com/danr/structural-induction";
      url = "";
      synopsis = "Instantiate structural induction schemas for algebraic data types";
      description = "See documentation for Induction.Structural";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."genifunctors" or ((hsPkgs.pkgs-errors).buildDepError "genifunctors"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          ];
        buildable = true;
        };
      tests = {
        "walk" = {
          depends = [
            (hsPkgs."structural-induction" or ((hsPkgs.pkgs-errors).buildDepError "structural-induction"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."language-haskell-extract" or ((hsPkgs.pkgs-errors).buildDepError "language-haskell-extract"))
            (hsPkgs."testing-feat" or ((hsPkgs.pkgs-errors).buildDepError "testing-feat"))
            (hsPkgs."geniplate" or ((hsPkgs.pkgs-errors).buildDepError "geniplate"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            ];
          buildable = true;
          };
        };
      };
    }