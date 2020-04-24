{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pedantic = false; test-hlint = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "freer-effects"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Allele Dev; 2017 Ixperta Solutions s.r.o.";
      maintainer = "ixcom-core@ixperta.com";
      author = "Allele Dev, Ixcom Core Team, and other contributors";
      homepage = "https://github.com/IxpertaSolutions/freer-effects";
      url = "";
      synopsis = "Implementation of effect system for Haskell.";
      description = "Implementation of effect system for Haskell, which is based on the work of\nOleg Kiselyov et al.:\n\n* <http://okmij.org/ftp/Haskell/extensible/more.pdf Freer Monads, More Extensible Effects>\n\n* <http://okmij.org/ftp/Haskell/zseq.pdf Reflection without Remorse>\n\n* <http://okmij.org/ftp/Haskell/extensible/exteff.pdf Extensible Effects>\n\nThe key features are:\n\n* An efficient effect system for Haskell - as a library!\n\n* Reimplementations of several common Haskell monad transformers as effects.\n\n* Core components for defining your own Effects.";
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
            (hsPkgs."freer-effects" or ((hsPkgs.pkgs-errors).buildDepError "freer-effects"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."freer-effects" or ((hsPkgs.pkgs-errors).buildDepError "freer-effects"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (flags.test-hlint) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
            ];
          buildable = if flags.test-hlint then true else false;
          };
        };
      benchmarks = {
        "core" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."freer-effects" or ((hsPkgs.pkgs-errors).buildDepError "freer-effects"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }