{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "freer"; version = "0.2.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Allele Dev 2016";
      maintainer = "allele.dev@gmail.com";
      author = "Allele Dev";
      homepage = "https://gitlab.com/queertypes/freer";
      url = "";
      synopsis = "Implementation of the Freer Monad";
      description = "Freer is an implementation of \"Freer Monads, More Extensible\nEffects\"\n\nThe key features of Freer are:\n\n* An efficient effect system for Haskell - as a library!\n\n* Implementations for several common Haskell monad instances:\n\n* Core components for defining your own Effects";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "freer-examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."freer" or ((hsPkgs.pkgs-errors).buildDepError "freer"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."freer" or ((hsPkgs.pkgs-errors).buildDepError "freer"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "core" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."freer" or ((hsPkgs.pkgs-errors).buildDepError "freer"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            ];
          buildable = true;
          };
        };
      };
    }