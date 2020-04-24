{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "freer-simple"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Allele Dev; 2017 Ixperta Solutions s.r.o.; 2017 Alexis King";
      maintainer = "Alexis King <lexi.lambda@gmail.com>";
      author = "Allele Dev, Ixcom Core Team, Alexis King, and other contributors";
      homepage = "https://github.com/lexi-lambda/freer-simple#readme";
      url = "";
      synopsis = "Implementation of a friendly effect system for Haskell.";
      description = "An implementation of an effect system for Haskell (a fork of\n<http://hackage.haskell.org/package/freer-effects freer-effects>), which is\nbased on the work of Oleg Kiselyov et al.:\n\n* <http://okmij.org/ftp/Haskell/extensible/more.pdf Freer Monads, More Extensible Effects>\n* <http://okmij.org/ftp/Haskell/zseq.pdf Reflection without Remorse>\n* <http://okmij.org/ftp/Haskell/extensible/exteff.pdf Extensible Effects>\n\nThe key features are:\n\n* An efficient effect system for Haskell - as a library!\n* Reimplementations of several common Haskell monad transformers as effects.\n* Core components for defining your own Effects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."natural-transformation" or ((hsPkgs.pkgs-errors).buildDepError "natural-transformation"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      exes = {
        "freer-examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."freer-simple" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."freer-simple" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "core" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."extensible-effects" or ((hsPkgs.pkgs-errors).buildDepError "extensible-effects"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."freer-simple" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }